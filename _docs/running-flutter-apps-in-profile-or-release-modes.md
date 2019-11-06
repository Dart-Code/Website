---
title: Running Flutter Apps in Profile or Release Modes
---

From [Dart Code v2.12](/releases/v2-12/) you can run Flutter apps in Profile and Release modes. To do this you need to create a `launch.json` if you don't already have one (by clicking `Add Configuration` in the dropdown on the Debug Side Bar). In the launch config for your flutter app set the `flutterMode` property to one of `debug`, `profile` or `release`:

```js
"configurations": [
	{
		"name": "Flutter",
		"request": "launch",
		"type": "dart",
		"flutterMode": "profile"
	}
]
```

Now when you press `F5` to launch the application, the corresponding launch mode will be used.

By default, when running in `profile` mode memory usage will automatically be shown on the status bar. You can control this by setting the `showMemoryUsage` option in the launch config. You can also enable this for debug builds but be aware that the values reported will not be indicative of the final release build of your application.

## Related Links

- [Flutter Performance Profiling](https://flutter.io/ui-performance/)
- [Flutter's Modes](https://github.com/flutter/flutter/wiki/Flutter%27s-modes)

