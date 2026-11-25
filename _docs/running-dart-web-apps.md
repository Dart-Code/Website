---
title: Running Dart (non-Flutter) Web Apps and Tests
---

This page covers running Dart web apps and tests that do not use Flutter. For Flutter apps, this configuration is not necessary — Flutter web apps will run automatically in the browser when you [select a web device](/docs/quickly-switching-between-flutter-devices/).

## Running Web Apps

To run Dart web apps that do not use Flutter, create a launch configuration in `.vscode/launch.json` that sets the `"program"` field to `"web"` so that the debugger knows to run using `webdev`:

```js
"configurations": [
	{
		"name": "Dart Web",
		"request": "launch",
		"type": "dart",
		// Run the web app in the "web" folder via "webdev"
		"program": "web"
	}
]
```

You can also launch a Dart web app using the **Run** / **Debug** CodeLens links above `main()` in `web/main.dart`, or by selecting the automatically generated `(Dart Web)` configuration in the **Run and Debug** picker.

Running Dart web apps via `webdev` requires `build_runner` and `build_web_compilers` in `dev_dependencies`. If `webdev` is not already activated globally, Dart-Code will prompt to activate it.

## Running Web Tests

Dart web tests should be placed in the `test/` folder (ending in `_test.dart`), not inside `web/`.

### Using `dart_test.yaml` (Recommended)

The simplest way to run Dart web tests is to configure the target platform in a `dart_test.yaml` file at the root of your project:

```yaml
platforms:
  - chrome
```

With `platforms` configured in `dart_test.yaml`, running tests from VS Code (the Test Explorer, CodeLens links, or `launch.json`), the `dart test` CLI, and CI will all run in Chrome without needing any VS Code-specific launch configuration.

### Using `launch.json`

If your project runs tests on both the Dart VM and Chrome (or you do not want to set `platforms` in `dart_test.yaml`), you can add a template launch configuration in `.vscode/launch.json` with `"templateFor"` and `"toolArgs": ["-p", "chrome"]`:

```js
"configurations": [
	{
		"name": "Dart Web Tests",
		"request": "launch",
		"type": "dart",
		// Apply this config to default Run/Debug CodeLens links and the Test Explorer
		// for files inside the "test" folder (or narrow to e.g. "test/web").
		"templateFor": "test",
		"toolArgs": [
			"-p",
			"chrome"
		]
	}
]
```

Alternatively:

- Use a [custom CodeLens](/docs/custom-codelens/) configuration if you want separate Chrome Run links alongside the default VM **Run** / **Debug** links.
- Set `"dart.testAdditionalArgs": ["-p", "chrome"]` in workspace settings (`.vscode/settings.json`), though note that settings apply to all Dart projects in the workspace.

If your tests rely on `build_runner` code generation, `dart test` does not run `build_runner` automatically — you can use the built-in `build_runner` [tasks](/docs/tasks/#build_runner) (`watch`, `build`, or `test`), or configure `preLaunchTask` / `customTool` in your [launch configuration](/docs/launch-configuration/).

## Debugging Web Tests

Debugging `package:test` browser tests directly in VS Code (for example, hitting VS Code breakpoints) is not currently supported — see [Dart-Code/Dart-Code#3659](https://github.com/Dart-Code/Dart-Code/issues/3659).

As a workaround, you can add `"--pause-after-load"` to `"toolArgs"` (for example, `["-p", "chrome", "--pause-after-load"]`). This opens a visible Chrome window and pauses before executing the tests so you can set breakpoints and debug using Chrome DevTools.
