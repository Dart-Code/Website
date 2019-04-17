import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart';

main() {
  Directory.current = dirname(Platform.script.toFilePath());

  final packageFile = File('../../Dart-Code/package.json');
  final packageManifest = jsonDecode(packageFile.readAsStringSync());
  final Map<String, dynamic> config =
      packageManifest['contributes']['configuration']['properties'];

  print('/// WINDOW SCOPED');
  printGetters(config, (key) => config[key]['scope'] != 'resource');
  print('/// RESOURCE SCOPED');
  printGetters(config, (key) => config[key]['scope'] == 'resource');
}

void printGetters(
  Map<String, dynamic> configOptions,
  bool Function(String key) filter,
) {
  final settingNames = configOptions.keys.where(filter).toList()..sort();

  for (var name in settingNames) {
    final options = configOptions[name];

    final getterName = name.replaceFirst('dart.', '');
    final typeString = _getTypeString(options);
    final defaultValue = options['default'] is List
        ? '[${options['default'].map(_formatValue).join(', ')}]'
        : _formatValue(options['default']);

    print(
        'get $getterName(): ${typeString.replaceFirst("null", "undefined")} { return this.getConfig<$typeString>("$getterName", $defaultValue); }');
  }
}

String _getTypeString(options) {
  List<String> rawTypes;
  if (options['type'] is List) {
    rawTypes = options['type'].cast<String>();
  } else if (options['type'] != null) {
    rawTypes = [options['type']];
  } else if (options['enum'] != null) {
    rawTypes = options['enum'].map(_formatValue).cast<String>().toList();
  } else {
    throw 'Unable to handle type!';
  }
  final validTypes = rawTypes.map((t) => _improveType(t, options)).toList();
  return validTypes.join(' | ');
}

const _typeMappings = {
  "integer": "number",
};
String _improveType(dynamic type, options) {
  if (type == "array") {
    final itemTypes = _getTypeString(options['items']);
    return itemTypes.contains(' | ') ? 'Array<$itemTypes>' : '$itemTypes[]';
  }
  return _typeMappings[type as String] ?? type as String;
}

String _formatValue(dynamic val) => val is String ? '"$val"' : val.toString();
