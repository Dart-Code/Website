import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path/path.dart';

main() async {
  Directory.current = dirname(Platform.script.toFilePath());

  final List<dynamic> milestones = (await fetchJson(
      'milestones?state=open&sort=completeness&direction=desc'));

  final milestone =
      milestones.firstWhere((m) => (m['title'] as String).startsWith('v'));
  final name = milestone['title'];
  final int key = milestone['number'];

  print('# $name');
  print('');

  final Map<String, Map<int, dynamic>> issuesByLabel = {};
  final List<dynamic> issues =
      await fetchJson('issues?milestone=$key&state=closed&per_page=100');
  if (issues.length >= 100) {
    print('100 ITEMS RETURNED, THERE MAY BE MORE!');
  }
  for (final issue in issues) {
    final labels = issue['labels'] as List<dynamic>;
    final primaryLabel = labels
        .map((l) => l['name'] as String)
        .firstWhere((l) => l.startsWith('in '), orElse: () => 'in other');

    // Non-functional changes don't go in release notes.
    if (labels.any((l) => l['name'] == 'is non-functional')) {
      continue;
    }

    issuesByLabel.putIfAbsent(primaryLabel, () => {});
    issuesByLabel[primaryLabel][issue['number'] as int] = issue;
  }

  issuesByLabel.forEach((label, issues) {
    final category = label.substring(3, 4).toUpperCase() + label.substring(4);
    print('## $category Changes');
    print('');
    issues.forEach((issueNumber, issue) {
      final title = issue['title'] as String;
      final isPr = issue['pull_request'] != null;
      print(
          '- ${isPr ? 'PR ' : ''}[#$issueNumber](https://github.com/Dart-Code/Dart-Code/issues/$issueNumber): $title');
    });
    print('');
  });
}

Future<dynamic> fetchJson(String uri) async {
  final client = http.Client();
  try {
    final resp = await client
        .get('https://api.github.com/repos/Dart-Code/Dart-Code/$uri');
    return jsonDecode(resp.body);
  } finally {
    client.close();
  }
}
