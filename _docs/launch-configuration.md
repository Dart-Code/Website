---
title: Launch Configuration
---

A launch configuration (`.vscode/launch.json`) file is not required for the most common use cases for Dart/Flutter as long as you stick to some common conventions:

- Dart CLI scripts should be in the `bin` or `tool` folder, with main entry points being `bin/main.dart`
- Flutter entry points should be at `lib/main.dart`
- Tests should be in a folder named `test` and end with `_test.dart`
- Flutter integration tests should be in a `test_driver` folder ending `_test.dart`

However there are some things you can't do without a launch configuration, such as:

- Run scripts in locations that don't conform to the conventions above
- Run Dart CLI scripts via the terminal to allow reading from `stdin`
- Pass arguments to your Dart CLI scripts
- Pass additional arguments to `flutter run` ([such as `--dart-define`](/docs/using-dart-define-in-flutter/))
- Run Dart (non-Flutter) web apps
- Create [custom CodeLens](/docs/custom-codelens/) actions for running apps

You can open your launch configuration file by clicking on the **Debug** side bar and then either the cog icon at the top, or the **create a launch.json file** link below the big blue button, depending on whether you already have one or not.

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

		// The directory to start running the app from.
		"cwd": "/foo/bar",

		// The entry script to execute when running the app.
		// Set to a "web" in a Dart web app to run in web move.
		// Set to "test" in an app with tests to run all tests.
		"program": "bin/main.dart",

		// Any custom environment variables to set when running the app with this
		// launch config.
		"env": {
			"RELEASE_MODE": true
		}

		// Arguments to be passed to the Dart or Flutter app.
		"args": [
			"--dart-define", "MY_VAR=foo"
		],

		// "debugConsole" or "terminal". If set to "terminal", will run in the built-in
		// terminal and will support reading from `stdin`. However some other debug
		// features may be limited.
		"console": "debugConsole",

		// Set to run a Flutter app on a specific device, ignoring the device selected
		// in the status bar.
		"deviceId": "iphone",

		// "debug", "profile" or "release".
		"flutterMode": "debug",

		// Allows running Flutter tests on a real device instead of the default headless
		// flutter-tester device.
		"runTestsOnDevice": false,

		// If codeLens is defined, this launch configuration can be launched from custom
		// CodeLens links in the editor (see the page linked above for more info).
		"codeLens": {

			// This array sets where custom CodeLens links will be rendered:
			// - run-test: Above test functions as a Run link
			// - debug-test: Above test functions as a Debug link
			// - run-test-file: Above main functions in test files as a Run link
			// - debug-test-file: Above main functions in test files as a Debug link
			// - run-file: Above main functions in bin/tool/lib files as a Run link
			// - debug-file: Above main functions in bin/tool/lib files as a Debug link
			"for": [ "run-test", "run-test-file", "debug-test", "debug-test-file" ],

			// If specificed, the custom CodeLens will only appear for files that begin
			// with this path.
			"path": "test/integration_tests",

			// Text for the custom CodeLens. If not specified, will use the name field
			// from the parent launch configuration. The string "${debugType}" here will
			// be replaced with "run" or "debug" depending on the rendered position
			// (see the for field above).
			"title": "${debugType} (release)"
		},
	}
]
```
