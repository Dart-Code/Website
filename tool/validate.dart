import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart';

main() {
  Directory.current = dirname(Platform.script.toFilePath());

  final packageFile = File('../../Dart-Code/package.json');
  final packageManifest = jsonDecode(packageFile.readAsStringSync());
  final Map<String, dynamic> configOptions =
      packageManifest['contributes']['configuration']['properties'];

  validateSettingsDoc(configOptions);
}

void validateSettingsDoc(Map<String, dynamic> configOptions) {
  final settingsFile = File('../_docs/settings.md');
  final settingsContent = settingsFile.readAsStringSync();

  configOptions.forEach((name, options) {
    if (!settingsContent.contains('## $name')) {
      print('Setting $name does not appear in docs!');
    }
  });
}
