import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path/path.dart';

Future<void> main() async {
  Directory.current = dirname(Platform.script.toFilePath());

  final upstreamIssuesFile = File('../upstream-issues.md');
  final linkRegex = RegExp(r'\((https://github\.com/.*/issues/\d+)\)');
  final links = linkRegex.allMatches(upstreamIssuesFile.readAsStringSync());

  final issuesByState = <String, List<String>>{};
  for (final link in links) {
    final uri = Uri.parse(link.group(1)!);
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
