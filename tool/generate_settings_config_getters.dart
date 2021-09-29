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
  printGetters(
      config,
      (key) =>
          config[key]['scope'] == 'resource' ||
          config[key]['scope'] == 'machine-overridable');
}

void printGetters(
  Map<String, dynamic> configOptions,
  bool Function(String key) filter,
) {
  final settingNames = configOptions.keys.where(filter).toList()..sort();

  for (var name in settingNames) {
    final options = configOptions[name];

    final getterName = name.replaceFirst('dart.', '');
    final types = _getTypes(options);
    final defaultValue = options['default'] is List
        ? '[${options['default'].map(_formatValue).join(', ')}]'
        : _formatValue(options['default']);

    final getCall = getConfigCall(types, getterName, defaultValue);

    print(
        'get $getterName(): ${_asTypeString(types).replaceFirst("null", "undefined")} { return ${getCall}; }');
  }
}

String getConfigCall(
  List<String> types,
  String name,
  String defaultValue,
) {
  final lname = name.toLowerCase();
  final isString = types.contains("string");
  final isStringArray = types.contains("string[]");

  var call = 'this.getConfig<${_asTypeString(types)}>("$name", $defaultValue)';

  // For files and paths, resolve ~ to homedir.
  if (isString && (lname.endsWith("path") || lname.endsWith("file"))) {
    call = 'resolvePaths($call)';
  }

  // For arrays of paths, we need to map through resolvePaths.
  if (isStringArray && lname.endsWith("paths")) {
    call = '$call.map(resolvePaths)';
  }

  // For log files, we can create the folders.
  if (isString && lname.endsWith("logfile")) {
    call = 'createFolderForFile($call)';
  }
  return call;
}

List<String> _getTypes(options) {
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
  return validTypes;
}

const _typeMappings = {
  "integer": "number",
};
String _improveType(dynamic type, options) {
  if (type == "array") {
    final itemTypes = _getTypes(options['items']);
    final itemTypesString = _asTypeString(itemTypes);
    return itemTypes.length > 1
        ? 'Array<$itemTypesString>'
        : '$itemTypesString[]';
  }
  return _typeMappings[type as String] ?? type;
}

String _formatValue(dynamic val) => val is String ? '"$val"' : val.toString();

String _asTypeString(List<String> types) => types.join(' | ');
