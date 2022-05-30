import 'dart:io';
import 'package:path/path.dart';

const fixFilePath =
    '../../Google/dart-sdk/sdk/pkg/analysis_server/lib/src/services/correction/fix.dart';
const assistFilePath =
    '../../Google/dart-sdk/sdk/pkg/analysis_server/lib/src/services/correction/assist.dart';

main() {
  Directory.current = dirname(Platform.script.toFilePath());

  final ids = [
    ...extractIDs(File(fixFilePath), 'FixKind'),
    ...extractIDs(File(assistFilePath), 'AssistKind'),
  ];

  ids.sort((c1, c2) => c1.id.compareTo(c2.id));

  printCodeActionsList(ids);
  print('');
  printCodeActionsMetadata(ids);
}

List<CodeAction> extractIDs(File file, String type) {
  final fileContents = file.readAsStringSync();
  final matches = RegExp(
          '${RegExp.escape(type)}[\\s\\n]*\\([\\s\\n]*\'([\\w.]+)\',[\\s\\n]*[\\d\\w\\.]+,[\\s\\n]*["\']([\\w. \\{\\}\'"&]+)["\']')
      .allMatches(fileContents);
  return matches.map((match) {
    final id = match
        .group(1)!
        .replaceAll('dart.assist.', 'refactor.')
        .replaceAll('dart.fix.', 'quickfix.')
        .replaceAll('analysisOptions.assist.', 'refactor.')
        .replaceAll('analysisOptions.fix.', 'quickfix.');
    final name = match.group(2)!.replaceAll('{0}', '...');
    return CodeAction(id, name);
  }).toList();
}

printCodeActionsList(List<CodeAction> actions) {
  for (final action in actions) {
    print('- `${action.id}` - ${action.name}');
  }
}

printCodeActionsMetadata(List<CodeAction> actions) {
  for (final action in actions) {
    print(
        '{ "kind": "${action.id}", "title": "${action.name.replaceAll('"', r'\"')}" },');
  }
}

class CodeAction {
  final String id;
  final String name;

  CodeAction(this.id, this.name);
}
