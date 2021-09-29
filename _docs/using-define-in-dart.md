---
title: Using --define in Dart
---

You can pass additional `--define` values to Dart by specifying them in the `toolArgs` field of your launch configuration (`launch.json`):


```js
"configurations": [
	{
		"name": "Dart",
		"request": "launch",
		"type": "dart",
		"toolArgs": [
			"--define=MY_VAR=MY_VALUE",
			"--define=MY_OTHER_VAR=MY_OTHER_VALUE"
		]
	}
]
```

Using the example above, you can print `MY_VALUE` and `MY_OTHER_VALUE` by using the `String.fromEnvironment` constructor:

```dart
print(const String.fromEnvironment('MY_VAR'));
print(const String.fromEnvironment('MY_OTHER_VAR'));
```

For Flutter apps, you should [use `--dart-define`](/docs/using-dart-define-in-flutter/).
