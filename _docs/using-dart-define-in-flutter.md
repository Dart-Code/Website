---
title: Using --dart-define in Flutter
---

You can pass additional `--dart-define` values to Flutter by specifying them in the `args` field of your launch configuration (`launch.json`):


```js
"configurations": [
	{
		"name": "Flutter",
		"request": "launch",
		"type": "dart",
		"args": [
			"--dart-define",
			"MY_VAR=MY_VALUE",
			"--dart-define",
			"MY_OTHER_VAR=MY_OTHER_VALUE"
		]
	}
]
```

Using the example above, you can print `MY_VALUE` and `MY_OTHER_VALUE` by using the `String.fromEnvironment` constructor:

```dart
print(const String.fromEnvironment('MY_VAR'));
print(const String.fromEnvironment('MY_OTHER_VAR'));
```
