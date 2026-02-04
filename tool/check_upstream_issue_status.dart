import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path/path.dart';

Future<void> main() async {
  Directory.current = dirname(Platform.script.toFilePath());

  final upstreamIssuesFile = File('../upstream-issues.md');
  var content = upstreamIssuesFile.readAsStringSync();
  final linkRegex = RegExp(
      r'\((https://github\.com/([^/]+)/([^/]+)/issues/(\d+))\)([ \t]*!\[GitHub issue status\]\([^)]+\))?');
  final matches = linkRegex.allMatches(content);

  final updates = <(int, String)>[];
  final issuesToCheck = <String>[];

  for (final match in matches) {
    final url = match.group(1)!;
    final owner = match.group(2)!;
    final repo = match.group(3)!;
    final number = match.group(4)!;
    final existingBadge = match.group(5);

    if (existingBadge == null) {
      final badgeUrl =
          'https://img.shields.io/github/issues/detail/state/$owner/$repo/$number?label=%20';
      final badgeMarkdown = ' ![GitHub issue status]($badgeUrl)';
      updates.add((match.end, badgeMarkdown));
    }

    issuesToCheck.add(url);
  }

  if (updates.isNotEmpty) {
    updates.sort((a, b) => b.$1.compareTo(a.$1));
    for (final update in updates) {
      final index = update.$1;
      final text = update.$2;
      content = content.substring(0, index) + text + content.substring(index);
    }
    upstreamIssuesFile.writeAsStringSync(content);
    print('Added ${updates.length} missing status badges.');
  }

  final issuesByState = <String, List<String>>{};
  for (final link in issuesToCheck) {
    final uri = Uri.parse(link);
    final apiUri =
        uri.replace(host: 'api.github.com', path: '/repos${uri.path}');
    final json = await fetchJson(apiUri.toString());
    final state = json['state'] as String;
    issuesByState.putIfAbsent(state, () => []).add(uri.toString());
  }

  for (final MapEntry(key: state, value: issues) in issuesByState.entries) {
    print(state.toUpperCase());
    for (final issue in issues) {
      print('    $issue');
    }
    print('');
  }
}

Future<dynamic> fetchJson(String uri) async {
  // Add a small delay to be less likely to hit limits.
  await Future.delayed(const Duration(milliseconds: 100));

  final client = http.Client();
  try {
    final resp = await client.get(Uri.parse(uri));
    if (resp.statusCode >= 400 && resp.statusCode < 500) {
      print('Rate limit exeeded? ${resp.statusCode} ${resp.reasonPhrase}');
    }
    return jsonDecode(resp.body);
  } finally {
    client.close();
  }
}
