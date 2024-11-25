import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:path/path.dart' as path;

const windowScopedDescription =
    'Window scoped settings must be applied in your User Settings or at the workspace level and will apply for all projects open in a window (for example, `dart.sdkPath` is used to launch an analyzer that is used for the whole window).';
const resourceScopedDescription =
    'Resource scoped settings can be set in individual workspace folder settings and apply to resources within that workspace folder (for example each workspace folder could have its own `dart.lineLength`).';
const diagnosticsDescription =
    'There are several settings for enabling logging of various services used by Dart Code. For more information about setting these up and troubleshooting please see [Enabling Logging](/docs/logging/).';
const colorsDescription =
    'Some colors in Dart Code can be customized using the `workbench.colorCustomizations` section in settings. Supported colors are:';

main() {
  Directory.current = path.dirname(Platform.script.toFilePath());

  final packageFile = File('../../Dart-Code/package.json');

  final settingsDocFilePath =
      path.normalize(path.absolute('../_docs/settings.md'));
  final settingsDocFile = File(settingsDocFilePath);
  print('Writing docs to ${settingsDocFile}');

  final packageManifest = jsonDecode(packageFile.readAsStringSync());
  final configs = (packageManifest['contributes']['configuration'] as List)
      .cast<Map<String, dynamic>>();
  final configOptions = <String, dynamic>{};
  configs.forEach((c) => configOptions.addAll(c['properties']));
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

  final output = StringBuffer();
  appendHeader(output);
  appendSettings(output, configs, 'Window Scoped Settings',
      windowScopedDescription, isWindowScoped);
  appendSettings(output, configs, 'Resource Scoped Settings',
      resourceScopedDescription, isResourceScoped);
  appendColorSettings(
      output, colorOptions, 'Custom Color Settings', colorsDescription);
  appendSettings(output, configs, 'Diagnostic Settings', diagnosticsDescription,
      isDiagnostics);

  settingsDocFile.writeAsStringSync(output.toString().trimRight() + '\n');
}

void appendHeader(StringBuffer output) {
  output.writeln('''
---
title: Settings
---

There are a number of settings for the Dart and Flutter extensions that can be modified in VS Code's [User Settings or Workspace Settings](https://code.visualstudio.com/docs/getstarted/settings).

The settings described here are documented by their JSON keys, though most of them can also be edited in the settings UI in VS Code by clicking the **Dart & Flutter** section under **Extensions**.

* TOC
{:toc}
''');
}

void appendSettings(
  StringBuffer output,
  List<Map<String, dynamic>> configs,
  String title,
  String description,
  bool Function(String key) filter,
) {
  output.writeln('# $title');
  output.writeln('');
  output.writeln(description);
  output.writeln('');

  for (var config in configs
      .sortedBy((c) => c['title'] as String)
      .sortedBy<num>((c) => c['order'] as int)) {
    final sectionName = config['title'] as String;
    final configOptions = config['properties'] as Map<String, dynamic>;
    final settingNames = configOptions.keys.where(filter).toList()..sort();

    if (settingNames.isEmpty) {
      continue;
    }
    output.writeln('## $sectionName');
    output.writeln('');

    for (final name in settingNames) {
      final options = configOptions[name];
      // Check whether we'll need to note a default value.
      final defaultValue = options['default'];
      final hasDefault = defaultValue != null &&
          (defaultValue is! List || defaultValue.length != 0);

      final enumValues = options['enum'];
      final enumDescriptions = options['enumDescriptions'];

      output.writeln('### $name');
      if (enumValues != null && enumValues is List) {
        output.writeln('**Options:** '
            '`${enumValues.sublist(0, enumValues.length - 1).map(formatValue).join('`, `')}` '
            'or `${formatValue(enumValues.last)}`.');
        output.writeln('<br />');
      }
      if (hasDefault) {
        output.writeln('**Default:** `${formatValue(options['default'])}`.');
        output.writeln('<br />');
      }
      output.writeln(improveDocs(
          name, options['markdownDescription'] ?? options['description']));
      if (enumDescriptions != null && enumDescriptions is List) {
        output.writeln('');
        for (var i = 0; i < enumValues.length; i++) {
          output.writeln('- `${enumValues[i]}` - ${enumDescriptions[i]}.');
        }
      }
      output.writeln('');
    }
  }
}

void appendColorSettings(
  StringBuffer output,
  List<dynamic> colorOptions,
  String title,
  String description,
) {
  if (colorOptions.isEmpty) {
    return;
  }
  output.writeln('# $title');
  output.writeln('');
  output.writeln(description);
  output.writeln('');

  for (var color in colorOptions) {
    // Check whether we'll need to note a default value.
    output.writeln('## ${color['id']}');
    output.writeln(improveDocs(
        color['id'], color['markdownDescription'] ?? color['description']));
    output.writeln('');
  }
}

String formatValue(Object? val) {
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
    'dart.enableCompletionCommitCharacters',
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
      .replaceAll('**/test/**', '[ "**/test/**" ]')
      .replaceAll('`#', '`')
      .replaceAll('#`', '`');

  for (var s in code) {
    description = description.replaceAll(
        new RegExp('(\\b(?!\')|\')${RegExp.escape(s)}(\\b(?!\')|\')'), '`$s`');
  }
  for (var s in bold) {
    description = description.replaceAll(
        new RegExp('(\\b(?!\')|\')${RegExp.escape(s)}(\\b(?!\')|\')'),
        '**$s**');
  }
  description = description.replaceAll('``', '`');
  if (logLinks.containsKey(key)) {
    description =
        '$description For more information on capturing these logs, see ${logLinks[key]}.';
  }

  return description;
}
