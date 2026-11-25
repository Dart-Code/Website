---
title: Running Dart (non-Flutter) Web Apps and Tests
---

This page covers running Dart web apps and tests that do not use Flutter. For Flutter apps, this configuration is not necessary — Flutter web apps will run automatically in the browser when you [select a web device](/docs/quickly-switching-between-flutter-devices/).

## Running Web Apps

To launch a Dart (non-Flutter) web app with `F5`, create a launch configuration in `.vscode/launch.json` that sets the `"program"` field to `"web"` so that the debugger knows to run using `webdev`:

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

You can also launch a Dart web app without a `launch.json` file using the **Run** / **Debug** CodeLens links above `main()` in `web/main.dart`, or via the automatically generated `<project> (Dart Web)` configuration — available through the **Debug: Select and Start Debugging** command (under **Dart & Flutter...**) or via **Show all automatic debug configurations** in the **Run and Debug** side bar when there is no `launch.json`.

Running Dart web apps via `webdev` requires `build_runner` and `build_web_compilers` in `dev_dependencies`. If `webdev` is not already activated globally, Dart-Code will prompt to activate it.

## Running Web Tests

Dart web tests should be placed in the `test/` folder (ending in `_test.dart`), not inside `web/`.

### Using `dart_test.yaml` (Recommended)

The simplest way to run Dart web tests is to configure the target platform in a `dart_test.yaml` file at the root of your project:

```yaml
platforms:
  - chrome
```

If your project contains both VM and browser tests, you can configure `platforms: [vm, chrome]` in `dart_test.yaml` and use `@TestOn` annotations on platform-specific test files.

With `platforms` configured in `dart_test.yaml`, running tests from VS Code (the Test Explorer, CodeLens links, or `launch.json`), the `dart test` CLI, and CI will all use the configured platforms without needing any VS Code-specific launch configuration.

### Using `launch.json`

If you do not want to set `platforms` in `dart_test.yaml`, you can add a template launch configuration in `.vscode/launch.json` with `"templateFor"` and `"toolArgs"`:

```js
"configurations": [
	{
		"name": "Dart Web Tests",
		"request": "launch",
		"type": "dart",
		// Apply this config to default Run/Debug CodeLens links and the Test Explorer
		// for files inside the "test" folder.
		"templateFor": "test",
		"toolArgs": [
			"-p",
			"chrome"
		]
	}
]
```

Note a few details when using `"templateFor"`:

- Setting `"templateFor": "test"` with `["-p", "chrome"]` forces **all** tests in `test/` to run on Chrome only, which will fail for VM-only tests in the same folder. For projects with both VM and browser tests in `test/`, pass `["-p", "vm,chrome"]` (with `@TestOn` annotations) or use a [custom CodeLens](/docs/custom-codelens/) configuration to add separate Chrome Run links alongside the default VM **Run** / **Debug** links.
- `"templateFor"` is resolved relative to the workspace folder root (not a nested package root).
- Narrowing `"templateFor"` to a subfolder (such as `"test/web"`) works for CodeLens links and running individual files or tests inside that folder, but does not apply when running all tests or multiple suites together from the Test Explorer (which resolves `templateFor` against the top-level `test` folder or the first suite's path).

Alternatively, you can set `"dart.testAdditionalArgs": ["-p", "chrome"]` in workspace settings (`.vscode/settings.json`), though note that settings apply to all Dart projects in the workspace.

If your tests rely on `build_runner` code generation, `dart test` does not run `build_runner` automatically. You can run the built-in `build_runner` [tasks](/docs/tasks/#build_runner) (`watch` or `build` before running tests, or the `test` task — which requires `build_test` in `dev_dependencies` and targets Chrome via `dart_test.yaml` or flags after `--` in a customized `tasks.json` task). You can also run a task before launching via [`preLaunchTask`](/docs/tasks/), or use [`customTool`](/docs/launch-configuration/) for advanced wrapper setups.

## Debugging Web Tests

Debugging `package:test` browser tests directly in VS Code (for example, hitting VS Code breakpoints) is not currently supported — see [Dart-Code/Dart-Code#3659](https://github.com/Dart-Code/Dart-Code/issues/3659).

As a workaround, you can add `"--pause-after-load"` to `"toolArgs"` (for example, `["-p", "chrome", "--pause-after-load"]`) on a dedicated launch configuration or [custom CodeLens](/docs/custom-codelens/) — avoid leaving `--pause-after-load` permanently on a `"templateFor": "test"` configuration, or every Test Explorer run will pause waiting for Chrome.

This opens a visible Chrome window and pauses before executing the tests so you can set breakpoints in Chrome DevTools. Because Dart-Code runs `package:test` with `-r json` (and without interactive stdin), pressing Enter in VS Code will not resume execution — to start the tests after setting breakpoints, **click the play button in the Chrome window** (or call `dartTest.resume()` in the Chrome DevTools console).
