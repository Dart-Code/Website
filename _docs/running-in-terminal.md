---
title: Running Dart CLI Scripts in the Terminal
---

You can run Dart CLI scripts in the built-in terminal with `F5` by creating a launch configuration (using the **Debug: Open launch.json** command) and setting the `"console"` option to `"terminal"`:

```js
"configurations": [
	{
		// A name for the launch config. This will show in the dropdown on the Run side bar.
		"name": "Current File (release mode)",

		// This should always be "dart" for Dart/Flutter apps.
		// This selects the Dart debugger.
		"type": "dart",

		// This can be "launch" to start an app, or "attach" to attach to an existing app.
		"request": "launch",

		// "debugConsole" or "terminal". If set to "terminal", will run in the built-in
		// terminal and will support reading from `stdin`. However some other debug
		// features may be limited.
		"console": "terminal",
	}
]
```

This will cause the application to run in the built-in terminal allowing it to read `stdin` and handle keyboard input. This comes with a trade-off, as the debug adapter is no longer able to influence the output (for example to link stack traces to source locations).
