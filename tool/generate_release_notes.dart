import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

main() async {
  Directory.current = path.dirname(Platform.script.toFilePath());

  final List<dynamic> milestones = (await fetchJson(
      'milestones?state=open&sort=completeness&direction=desc'));

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
  final month = now.month;
  output.writeln('# $name _$year-$month-??_');
  output.writeln('');

  final Map<String, Map<int, dynamic>> issuesByLabel = {};
  final List<dynamic> issues =
      await fetchJson('issues?milestone=$key&state=closed&per_page=100');
  if (issues.length >= 100) {
    print('100 ITEMS RETURNED, THERE MAY BE MORE!');
  }
  for (final issue in issues) {
    final labels = issue['labels'] as List<dynamic>;
    final primaryLabel = _getPrimaryLabel(labels);

    // Non-functional changes don't go in release notes.
    if (labels.any((l) => l['name'] == 'is non-functional')) {
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
  if (label == 'in devtools sidebar') {
    return 'Flutter Sidebar';
  } else if (label == 'in devtools') {
    return 'DevTools';
  } else if (label == 'in other') {
    return 'Misc';
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
  final reliesOnSdkRank = forPrimarySelection ? -1000 : 10;
  const priorities = {
    'in flutter': -10,
    'in editor': -9,
    'in testing': -8,
    'in debugger': -7,
    'in commands': -6,
    'in views': -5,
    'in cli': 1,
  };
  final labelRanks = {
    for (final label in labels)
      label: priorities[label] ??
          (label.startsWith('relies on sdk') ? reliesOnSdkRank : 0),
  };

  return labels.sortedBy<num>((label) => labelRanks[label] ?? 0);
}

Future<dynamic> fetchJson(String uri) async {
  final client = http.Client();
  try {
    final resp = await client.get(
        Uri.parse('https://api.github.com/repos/Dart-Code/Dart-Code/$uri'));
    return jsonDecode(resp.body);
  } finally {
    client.close();
  }
}
