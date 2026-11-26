import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

main() async {
  Directory.current = path.dirname(Platform.script.toFilePath());

  final List<dynamic> milestones = await fetchAllPages(
      'milestones?state=open&sort=completeness&direction=desc');

  final milestone =
      milestones.firstWhere((m) => (m['title'] as String).startsWith('v'));
  final name = milestone['title'] as String;
  final int key = milestone['number'];

  final versionSegments = name.replaceAll('v', '').split('.');
  final majorMinorVersion = versionSegments.take(2).join('.');
  final outputRelativeFilePath =
      path.join('..', '_releases', 'v$majorMinorVersion.md');
  final outputFilePath = path.normalize(path.absolute(outputRelativeFilePath));
  final outputFile = File(outputFilePath);
  print('Writing release notes to ${outputFile}');

  final output = StringBuffer();

  output.writeln('---');
  output.writeln('title: v$majorMinorVersion');
  output.writeln('sort_order: '
      'v${versionSegments[0].padLeft(4, '0')}'
      '_${versionSegments[1].padLeft(4, '0')}');
  output.writeln('excerpt: "..."');
  output.writeln('---');
  output.writeln('');

  final now = DateTime.now();
  final year = now.year;
  final month = now.month.toString().padLeft(2, '0');
  output.writeln('# $name _$year-$month-??_');
  output.writeln('');

  final Map<String, Map<int, dynamic>> issuesByLabel = {};
  final List<dynamic> issues =
      await fetchAllPages('issues?milestone=$key&state=closed&per_page=100');
  for (final issue in issues) {
    final labels = issue['labels'] as List<dynamic>;
    final primaryLabel = _getPrimaryLabel(labels);

    // Non-functional changes don't go in release notes.
    if (labels.any((l) => l['name'] == 'non-functional')) {
      continue;
    }

    // Unmerged closed PRs don't go in release notes.
    final pullRequest = issue['pull_request'] as Map<String, dynamic>?;
    if (pullRequest != null && pullRequest['merged_at'] == null) {
      continue;
    }

    issuesByLabel.putIfAbsent(primaryLabel, () => {});
    issuesByLabel[primaryLabel]![issue['number'] as int] = issue;
  }

  final labels =
      _sortLabels(issuesByLabel.keys.toList(), forPrimarySelection: false);
  for (final label in labels) {
    final issues = issuesByLabel[label]!;
    String category;
    String? text;
    if (label.startsWith('relies on sdk')) {
      category = 'Features/Fixes Enabled with Future SDKs';
      text =
          'The following items depend on changes to the Dart/Flutter SDKs that have not yet been released to stable channels. '
          'They may be available to test in the current beta/master channels and will show up in future SDK releases.';
    } else {
      category = _getLabelTitle(label);
    }
    output.writeln('## $category');
    output.writeln('');
    if (text != null) {
      output.writeln(text);
      output.writeln('');
    }
    issues.forEach((issueNumber, issue) {
      final title = issue['title'] as String;
      final isPr = issue['pull_request'] != null;
      output.writeln(
          '- ${isPr ? 'PR ' : ''}[#$issueNumber](https://github.com/Dart-Code/Dart-Code/issues/$issueNumber): ${title.endsWith(".") ? title : '$title.'}');
    });
    output.writeln('');
  }

  outputFile.writeAsStringSync(output.toString());
  print('Done!');
  print('');
  stderr.writeln(
      "Don't forget to review the relies-on-sdk-changes issues for items shipped in a recent stable release!");
}

String _getPrimaryLabel(List<Object?> labels) {
  final labelNames = labels
      .cast<Map<String, Object?>>()
      .map((l) => l['name'] as String)
      .where((l) => l.startsWith('in ') || l.startsWith('relies on sdk'))
      .toList();

  return _sortLabels(labelNames, forPrimarySelection: true).firstOrNull ??
      'in other';
}

String _getLabelTitle(String label) {
  const titles = {
    'in ai': 'AI',
    'in api': 'API',
    'in ci': 'CI',
    'in cli': 'CLI',
    'in devtools': 'DevTools',
    'in docs / website': 'Docs / Website',
    'in dtd': 'Dart Tooling Daemon',
    'in flutter sidebar': 'Flutter Sidebar',
    'in flutter widget preview': 'Flutter Widget Preview',
    'in lsp/analysis server': 'LSP / Analysis Server',
    'in other': 'Misc',
  };
  if (titles.containsKey(label)) {
    return titles[label]!;
  } else if (label.startsWith('in ')) {
    return label.substring(3, 4).toUpperCase() + label.substring(4);
  } else {
    throw 'Unhandled label: "$label"';
  }
}

List<String> _sortLabels(List<String> labels,
    {required bool forPrimarySelection}) {
  // Use this label first for primary selection, but sort it at the end for
  // display.
  final reliesOnSdkRank = forPrimarySelection ? 0 : 10000;
  const priorities = <String, int?>{
    'in flutter': 1,
    'in flutter widget preview': 2,
    'in editor': 3,
    'in lsp/analysis server': 4,
    'in ai': 5,
    'in devtools': 6,
    'in flutter sidebar': 7,
    'in testing': 8,
    'in coverage': 9,
    'in debugging': 10,
    'in commands': 11,
    'in cli': 12,
    'in views': 13,
    'in remote': 14,
    'in tasks': 15,
    'in dtd': 16,
    'in api': 17,
    'in dart': 18,
    'in desktop': 19,
    'in web': 20,
    'in docs / website': 21,
    'in ci': 22,
    'in other': 5000,
  };
  final labelRanks = {
    for (final label in labels)
      label: priorities[label] ??
          (label.startsWith('relies on sdk') ? reliesOnSdkRank : null),
  };

  return labels.sortedBy<num>((label) => labelRanks[label] ?? 1000);
}

Future<List<dynamic>> fetchAllPages(String uri) async {
  final client = http.Client();
  try {
    final results = <dynamic>[];
    Uri? nextUri =
        Uri.parse('https://api.github.com/repos/Dart-Code/Dart-Code/$uri');
    while (nextUri != null) {
      final resp = await client.get(nextUri);
      if (resp.statusCode != 200) {
        throw 'Failed to fetch $nextUri: ${resp.statusCode} ${resp.reasonPhrase}\n${resp.body}';
      }
      results.addAll(jsonDecode(resp.body) as List<dynamic>);
      nextUri = _getNextPageUri(resp.headers['link']);
    }
    return results;
  } finally {
    client.close();
  }
}

Uri? _getNextPageUri(String? linkHeader) {
  if (linkHeader == null) return null;
  final match = RegExp(r'<([^>]+)>;\s*rel="next"').firstMatch(linkHeader);
  return match != null ? Uri.parse(match.group(1)!) : null;
}
