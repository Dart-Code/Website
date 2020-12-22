import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart';

const windowScopedDescription =
    'Window scoped settings must be applied in your User Settings or at the workspace level and will apply for all projects open in a window (for example, `dart.sdkPath` is used to launch an analyzer that is used for the whole window).';
const resourceScopedDescription =
    'Resource scoped settings can be set in individual workspace folder settings and apply to resources within that workspace folder (for example each workspace folder could have its own `dart.lineLength`).';
const diagnosticsDescription =
    'There are several settings for enabling logging of various services used by Dart Code. For more information about setting these up and troubleshooting please see [Enabling Logging](/docs/logging/).';
const colorsDescription =
    'Some colors in Dart Code can be customized using the `workbench.colorCustomizations` section in settings. Supported colors are:';

main() {
  Directory.current = dirname(Platform.script.toFilePath());

  final packageFile = File('../../Dart-Code/package.json');
  final packageManifest = jsonDecode(packageFile.readAsStringSync());
  final Map<String, dynamic> configOptions =
      packageManifest['contributes']['configuration']['properties'];
  final List<dynamic> colorOptions = packageManifest['contributes']['colors'];

  final isDiagnostics = (String key) =>
      key.endsWith('LogFile') ||
      key.endsWith('DiagnosticsPort') ||
      key.endsWith('analyzerObservatoryPort');
  final isWindowScoped = (String key) =>
      configOptions[key]['scope'] != 'resource' &&
      configOptions[key]['scope'] != 'machine-overridable' &&
      !(isDiagnostics(key));
  final isResourceScoped = (String key) =>
      (configOptions[key]['scope'] == 'resource' ||
          configOptions[key]['scope'] == 'machine-overridable') &&
      !(isDiagnostics(key));

  printSettings(configOptions, 'Window Scoped Settings',
      windowScopedDescription, isWindowScoped);
  printSettings(configOptions, 'Resource Scoped Settings',
      resourceScopedDescription, isResourceScoped);
  printColorSettings(colorOptions, 'Custom Color Settings', colorsDescription);
  printSettings(configOptions, 'Diagnostic Settings', diagnosticsDescription,
      isDiagnostics);
}

void printSettings(
  Map<String, dynamic> configOptions,
  String title,
  String description,
  bool Function(String key) filter,
) {
  final settingNames = configOptions.keys.where(filter).toList()..sort();

  if (settingNames.isEmpty) {
    return;
  }
  print('# $title');
  print('');
  print(description);
  print('');

  for (var name in settingNames) {
    final options = configOptions[name];
    // Check whether we'll need to note a default value.
    final defaultValue = options['default'];
    final hasDefault = defaultValue != null &&
        (defaultValue is! List || defaultValue.length != 0);

    final enumValues = options['enum'];

    print('## $name');
    if (enumValues != null && enumValues is List) {
      print('**Options:** '
          '`${enumValues.sublist(0, enumValues.length - 1).map(formatValue).join('`, `')}` '
          'or `${formatValue(enumValues.last)}`.');
      print('<br />');
    }
    if (hasDefault) {
      print('**Default:** `${formatValue(options['default'])}`.');
      print('<br />');
    }
    print(improveDocs(
        name, options['markdownDescription'] ?? options['description']));
    print('');
  }
}

void printColorSettings(
  List<dynamic> colorOptions,
  String title,
  String description,
) {
  if (colorOptions.isEmpty) {
    return;
  }
  print('# $title');
  print('');
  print(description);
  print('');

  for (var color in colorOptions) {
    // Check whether we'll need to note a default value.
    print('## ${color['id']}');
    print('');
    print(improveDocs(
        color['id'], color['markdownDescription'] ?? color['description']));
    print('');
  }
}

String formatValue(Object val) {
  if (val is String) {
    return '"$val"';
  } else {
    return '$val';
  }
}

/// Improve docs by adding things that aren't valid in the package.json manifest.
String improveDocs(String key, String description) {
  // TODO: packagesdir is gone?
  const code = [
    'enableCompletionCommitCharacters',
    '--packages-dir',
    'flutter daemon',
    'flutter run',
    'flutter test',
    'pub get',
    'pub run test',
    'pub upgrade',
    'tab.inactiveForeground'
  ];
  const bold = [
    'Flutter: New Project',
  ];
  const logLinks = {
    "dart.analyzerInstrumentationLogFile":
        "[Analyzer Instrumentation Logging](/docs/logging/#analyzer-instrumentation)",
    "dart.analyzerLogFile": "[Analyzer Logging](/docs/logging/#analyzer)",
    "dart.extensionLogFile": "[Extension Logging](/docs/logging/#extension)",
    "dart.flutterDaemonLogFile":
        "[Flutter Daemon Logging](/docs/logging/#flutter-daemon)",
    "dart.flutterRunLogFile":
        "[Flutter Run Logging](/docs/logging/#flutter-run)",
    "dart.flutterTestLogFile":
        "[Flutter Test Logging](/docs/logging/#flutter-test)",
    "dart.observatoryLogFile":
        "[Observatory Logging](/docs/logging/#observatory)",
    "dart.pubTestLogFile": "[Pub Test Logging](/docs/logging/#pub-test)",
  };
  description = description
      .replaceAll('(requires the angular_analyzer_plugin)',
          '(requires the [Angular analyzer plugin enabled](https://github.com/dart-lang/angular/tree/master/angular_analyzer_plugin#installing-by-angular-version----for-angular-developers-recommended)')
      .replaceAll('**/test/**', '[ "**/test/**" ]');

  for (var s in code) {
    description = description.replaceAll(
        new RegExp('(\\b(?!\')|\')${RegExp.escape(s)}(\\b(?!\')|\')'), '`$s`');
  }
  for (var s in bold) {
    description = description.replaceAll(
        new RegExp('(\\b(?!\')|\')${RegExp.escape(s)}(\\b(?!\')|\')'),
        '**$s**');
  }
  if (logLinks.containsKey(key)) {
    description =
        '$description For more information on capturing these logs, see ${logLinks[key]}.';
  }

  return description;
}
