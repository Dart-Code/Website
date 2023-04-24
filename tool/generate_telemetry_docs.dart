import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart';

main() {
  Directory.current = dirname(Platform.script.toFilePath());

  final telemetryFile = File('../../Dart-Code/telemetry.json');
  final telemetryData = jsonDecode(telemetryFile.readAsStringSync());
  final events = telemetryData['events'] as Map<String, Object?>;
  final commonProperties =
      telemetryData['commonProperties'] as Map<String, Object?>;

  print('# Events');
  print('');
  print('The following events are recorded by the Dart-Code extension:');
  print('');
  for (final entry in events.entries) {
    final eventName = entry.key;
    final properties = entry.value as Map<String, Object?>;
    print('- `$eventName`');
    if (properties.isNotEmpty) {
      print(
          '  In addition to the common properties below, this event includes the following properties:');
      for (final propertyEntry in properties.entries) {
        printProperty(propertyEntry.key,
            propertyEntry.value as Map<String, Object?>, '  ');
      }
    }
  }

  print('');
  print('# Common Properties');
  print('');
  print('The following properties are included in all events:');
  print('');
  for (final propertyEntry in commonProperties.entries) {
    printProperty(
        propertyEntry.key, propertyEntry.value as Map<String, Object?>);
  }
}

void printProperty(String name, Map<String, Object?> values,
    [String indent = '']) {
  print('$indent - `$name`: ${values['comment'] as String}');
}
