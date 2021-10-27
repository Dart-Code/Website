---
title: Settings
---

There are a number of settings for the Dart and Flutter extensions that can be modified in VS Code's [User Settings or Workspace Settings](https://code.visualstudio.com/docs/getstarted/settings).

The settings described here are documented by their JSON keys, though most of them can also be edited in the settings UI in VS Code by clicking the **Dart & Flutter** section under **Extensions**.

* TOC
{:toc}

# Window Scoped Settings

Window scoped settings must be applied in your User Settings or at the workspace level and will apply for all projects open in a window (for example, `dart.sdkPath` is used to launch an analyzer that is used for the whole window).

## dart.additionalAnalyzerFileExtensions
Additional file extensions that should be analyzed (usually used in combination with analyzer plugins).

## dart.allowAnalytics
**Default:** `true`.
<br />
Whether to send analytics such as startup timings, frequency of use of features and analysis server crashes.

## dart.allowTestsOutsideTestFolder
**Default:** `false`.
<br />
Whether to consider files ending `_test.dart` that are outside of the test directory as tests. This should be enabled if you put tests inside the `lib` directory of your Flutter app so they will be run with `flutter test` and not `flutter run`.

## dart.analysisServerFolding
**Default:** `true`.
<br />
Whether to use folding data from the Dart analysis server instead of the built-in VS Code indent-based folding.

## dart.analyzeAngularTemplates
**Default:** `true`.
<br />
Whether to enable analysis for AngularDart templates (requires the Angular analyzer plugin to be enabled in `analysis_options.yaml`).

## dart.analyzerAdditionalArgs
Additional arguments to pass to the Dart analysis server.

## dart.analyzerSshHost
An SSH host to run the analysis server.
This can be useful when modifying code on a remote machine using SSHFS.

## dart.analyzerVmServicePort
The port number to be used for the Dart analysis server VM service.

## dart.autoImportCompletions
**Default:** `true`.
<br />
Whether to include symbols that have not been imported in the code completion list and automatically insert the required import when selecting them (requires restart).

## dart.automaticCommentSlashes
**Options:** `"none"`, `"tripleSlash"` or `"all"`.
<br />
**Default:** `"tripleSlash"`.
<br />
Determines when to insert comment slashes when pressing `<enter>` in the editor (requires restart).

When using `tripleSlash`, double-slashes will still be included when breaking existing double-slash comments across additional lines.

- `none` - Never insert slashes automatically.
- `tripleSlash` - Insert `///` when pressing `<enter>` at the end of a triple-slash comment.
- `all` - Insert `///` when pressing `<enter>` at the end of a triple-slash comment and also `//` when pressing `<enter>` at the end of a double-slash comment.

## dart.buildRunnerAdditionalArgs
Additional args to pass to the `build_runner` when building/watching/serving.

## dart.checkForSdkUpdates
**Default:** `true`.
<br />
Whether to check you are using the latest version of the Dart SDK at startup.

## dart.cliConsole
**Options:** `"debugConsole"`, `"terminal"` or `"externalTerminal"`.
<br />
**Default:** `"debugConsole"`.
<br />
Whether to run Dart CLI apps in the Debug Console or a terminal. The Debug Console has more functionality because the process is controlled by the debug adapter, but is unable to accept input from the user via stdin.

- `debugConsole` - Run in the Debug Console pane, using the input as a REPL to evaluate expressions.
- `terminal` - Run in the VS Code integrated terminal where input will be sent to stdin.
- `externalTerminal` - Run in an external terminal where input will be sent to stdin.

## dart.closingLabels
**Default:** `true`.
<br />
Whether to show annotations against constructor, method invocations and lists that span multiple lines.

## dart.debugExtensionBackendProtocol
**Options:** `"sse"` or `"ws"`.
<br />
**Default:** `"ws"`.
<br />
The protocol to use for the Dart Debug Extension backend service and injected client. Using WebSockets can improve performance but may fail when connecting through some proxy servers.

- `sse` - Server-Sent Events.
- `ws` - WebSockets.

## dart.debugExternalPackageLibraries
**Default:** `false`.
<br />
Whether to mark external pub package libraries (including `package:flutter`) as debuggable, enabling stepping into them while debugging.

## dart.debugSdkLibraries
**Default:** `false`.
<br />
Whether to mark Dart SDK libraries (`dart:*`) as debuggable, enabling stepping into them while debugging.

## dart.devToolsBrowser
**Options:** `"chrome"` or `"default"`.
<br />
**Default:** `"chrome"`.
<br />
Whether to launch external DevTools windows using Chrome or the system default browser.

- `chrome` - Locate and launch Google Chrome from your system.
- `default` - Use your systems default web browser.

## dart.devToolsPort
The port number to be used for the Dart DevTools.

## dart.devToolsReuseWindows
**Default:** `true`.
<br />
Whether to try to reuse existing DevTools windows instead of launching new ones. Only works for instances of DevTools launched by the DevTools server on the local machine.

## dart.devToolsTheme
**Options:** `"dark"` or `"light"`.
<br />
**Default:** `"dark"`.
<br />
The theme to use for Dart DevTools.

## dart.embedDevTools
**Default:** `true`.
<br />
Whether to load [Dart DevTools](https://dart.dev/tools/dart-devtools) embedded inside VS Code.

## dart.enableSdkFormatter
**Default:** `true`.
<br />
Whether to enable the [dart_style](https://pub.dev/packages/dart_style) formatter for Dart code.

## dart.enableServerSnippets
**Default:** `false`.
<br />
This setting is currently unused and should be left set to 'false'. It will be updated and enabled by default in the future.

## dart.enableSnippets
**Default:** `true`.
<br />
Whether to include Dart and Flutter snippets in code completion.

## dart.env
**Default:** `{}`.
<br />
Additional environment variables to be added to all Dart/Flutter processes spawned by the Dart and Flutter extensions.

## dart.evaluateToStringInDebugViews
**Default:** `true`.
<br />
Whether to call toString() on objects when rendering them in debug views (such as the Variables, Watch and Hovers views). Only applies to views of 100 or fewer values for performance reasons.

## dart.flutterAdbConnectOnChromeOs
**Default:** `false`.
<br />
Whether to automatically run `adb connect 100.115.92.2:5555` when spawning the Flutter daemon when running on Chrome OS.

## dart.flutterCreateAndroidLanguage
**Options:** `"java"` or `"kotlin"`.
<br />
**Default:** `"kotlin"`.
<br />
The programming language to use for Android apps when creating new projects using the 'Flutter: New Project' command.

## dart.flutterCreateIOSLanguage
**Options:** `"objc"` or `"swift"`.
<br />
**Default:** `"swift"`.
<br />
The programming language to use for iOS apps when creating new projects using the 'Flutter: New Project' command.

## dart.flutterCreateOffline
**Default:** `false`.
<br />
Whether to use offline mode when creating new projects with the 'Flutter: New Project' command.

## dart.flutterCreateOrganization
The organization responsible for your new Flutter project, in reverse domain name notation (e.g. `com.google`). This string is used in Java package names and as prefix in the iOS bundle identifier when creating new projects using the 'Flutter: New Project' command.

## dart.flutterCustomEmulators
Custom emulators to show in the emulator list for easier launching. If IDs match existing emulators returned by Flutter, the custom emulators will override them.

## dart.flutterGutterIcons
**Default:** `true`.
<br />
Whether to show Flutter icons and colors in the editor gutter.

## dart.flutterHotReloadOnSave
**Options:** `"never"`, `"always"` or `"manual"`.
<br />
**Default:** `"manual"`.
<br />
Whether to automatically send a Hot Reload request during a debug session when saving files.

- `never` - Do not reload when saving.
- `always` - Reload for all saves, manual or automatic.
- `manual` - Only reload for manual saves (requires pressing Save explicitly if using autosave).

## dart.flutterHotRestartOnSave
**Default:** `true`.
<br />
Whether to automatically send a Hot Restart request during a debug session when saving files if Hot Reload is not available but Hot Restart is.

## dart.flutterOutline
**Default:** `true`.
<br />
Whether to show the Flutter Outline tree in the sidebar.

## dart.flutterSelectDeviceWhenConnected
**Default:** `true`.
<br />
Whether to set newly connected devices as the current device in Flutter projects.

## dart.flutterShowEmulators
**Options:** `"local"` or `"always"`.
<br />
**Default:** `"local"`.
<br />
When to show the Flutter emulators. These are usually hidden for remote workspaces because it is usually not possible to see or interact with emulators in a remote session. If you are using remoting/containers in a way that you can interact with launched emulator processes, you may wish to set this to 'always'.

- `local` - Only show for local workspaces.
- `always` - Always show, even for remote sessions.

## dart.flutterShowWebServerDevice
**Options:** `"remote"` or `"always"`.
<br />
**Default:** `"remote"`.
<br />
When to show the Flutter headless web-server device. This requires using the Dart Debug extension for Chrome and is usually only used for remote environments where Chrome is not available such as browser/cloud-based IDEs (requires restart).

- `remote` - Only show for remote workspaces (includes browser-based workspaces).
- `always` - Always show, even for local sessions.

## dart.flutterWebRenderer
**Options:** `"auto"`, `"html"` or `"canvaskit"`.
<br />
**Default:** `"auto"`.
<br />
Sets the [Web renderer](https://flutter.dev/docs/development/tools/web-renderers) used for Flutter web apps.

- `auto` - Allow Flutter to pick the best renderer based on the users device.
- `html` - Always use the HTML renderer.
- `canvaskit` - Always use the CanvasKit renderer.

## dart.hotReloadProgress
**Options:** `"notification"` or `"statusBar"`.
<br />
**Default:** `"notification"`.
<br />
Determines how to display Hot Restart and Hot Reload progress.

- `notification` - Hot reload progress will be shown in a toast notification.
- `statusBar` - Hot reload progress will be shown only in the status bar.

## dart.lspSnippetTextEdits
**Default:** `true`.
<br />
Whether to enable [Snippet support in LSP TextEdits](https://github.com/rust-analyzer/rust-analyzer/blob/979e788957ced1957ee9ac1da70fb97abf9fe2b1/docs/dev/lsp-extensions.md#snippet-textedit).

## dart.maxLogLineLength
**Default:** `2000`.
<br />
The maximum length of a line in the log file. Lines longer than this will be truncated and suffixed with an ellipsis.

## dart.normalizeFileCasing
**Default:** `false`.
<br />
Whether to normalize file casings before sending them to the LSP server. This may fix issues with file_names lints not disappearing after renaming a file if the VS Code API continues to use the original casing.

## dart.notifyAnalyzerErrors
**Default:** `true`.
<br />
Whether to show a notification the first few times an analysis server exception occurs.

## dart.openDevTools
**Options:** `"never"`, `"flutter"` or `"always"`.
<br />
**Default:** `"never"`.
<br />
Whether to automatically open DevTools at the start of a debug session. If embedded DevTools is enabled, this will launch the Widget Inspector embedded for Flutter projects, or launch DevTools externally in a browser for Dart projects.

- `never` - Do not automatically launch DevTools when starting a debug session.
- `flutter` - Automatically launch DevTools when starting a Flutter debug session.
- `always` - Automatically launch DevTools when starting any debug session.

## dart.openTestView
**Default:** `[testRunStart]`.
<br />
When to automatically switch focus to the test list (array to support multiple values).

## dart.previewBazelWorkspaceCustomScripts
**Default:** `false`.
<br />
EXPERIMENTAL: Whether to look for custom script definitions at `dart/config/intellij-plugins/flutter.json` in Bazel workspaces. Currently supported for macOS and Linux only.

## dart.previewCommitCharacters
**Default:** `false`.
<br />
EXPERIMENTAL: Whether to enable commit characters for the LSP server. In a future release, the `dart.enableCompletionCommitCharacters` setting will also apply to LSP.

## dart.previewFlutterUiGuides
**Default:** `false`.
<br />
EXPERIMENTAL: Whether to enable the [Flutter UI Guides preview](https://dartcode.org/releases/v3-1/#preview-flutter-ui-guides).

## dart.previewFlutterUiGuidesCustomTracking
**Default:** `false`.
<br />
EXPERIMENTAL: Whether to enable custom tracking of Flutter UI guidelines (to hide some latency of waiting for the next Flutter Outline).

## dart.previewHotReloadOnSaveWatcher
**Default:** `false`.
<br />
Whether to perform hot reload on save based on a filesystem watcher for Dart files rather than using VS Code's `onDidSave` event. This allows reloads to trigger when external tools modify Dart source files.

## dart.previewLsp
Whether to run the analyzer in [LSP mode](https://microsoft.github.io/language-server-protocol/) (requires restart).

## dart.promptToRunIfErrors
**Default:** `true`.
<br />
Whether to prompt before running if there are errors in your project. Test scripts will be excluded from the check unless they're the script being run.

## dart.renameFilesWithClasses
**Options:** `"never"`, `"prompt"` or `"always"`.
<br />
**Default:** `"never"`.
<br />
Whether to rename files when renaming classes with matching names (for example renaming 'class Person' inside 'person.dart'). If set to 'prompt', will ask each time before renaming. If set to 'always', the file will automatically be renamed. This setting requires using LSP and a Dart SDK of at least v2.15.

## dart.shareDevToolsWithFlutter
**Default:** `true`.
<br />
Whether to eagerly run DevTools for Flutter workspaces and share the spawned server with `flutter run`.

## dart.showDartPadSampleCodeLens
**Default:** `true`.
<br />
Whether to show CodeLens actions in the editor for opening online DartPad samples.

## dart.showDevToolsDebugToolBarButtons
**Default:** `true`.
<br />
Whether to show DevTools buttons in the Debug toolbar.

## dart.showIgnoreQuickFixes
**Default:** `true`.
<br />
Whether to show quick fixes for ignoring hints and lints.

## dart.showInspectorNotificationsForWidgetErrors
**Default:** `true`.
<br />
Whether to show notifications for widget errors that offer Inspect Widget links. This requires that the `dart.shareDevToolsWithFlutter` setting is also enabled.

## dart.showMainCodeLens
**Default:** `true`.
<br />
Whether to show CodeLens actions in the editor for quick running / debugging scripts with main functions.

## dart.showSkippedTests
**Default:** `true`.
<br />
Whether to show skipped tests in the test tree.

## dart.showTestCodeLens
**Default:** `true`.
<br />
Whether to show CodeLens actions in the editor for quick running / debugging tests.

## dart.showTodos
**Default:** `true`.
<br />
Whether to show TODOs in the Problems list.

## dart.triggerSignatureHelpAutomatically
**Default:** `false`.
<br />
Whether to automatically trigger signature help when pressing keys such as , and (.

## dart.updateImportsOnRename
**Default:** `true`.
<br />
Whether to automatically update imports when moving or renaming files. Currently only supports single file moves / renames.

## dart.useKnownChromeOSPorts
**Default:** `false`.
<br />
Whether to use specific ports for the VM service and DevTools when running in Chrome OS. This is required to connect from the native Chrome OS browser but will prevent apps from launching if the ports are already in-use (for example if trying to run a second app).

## dart.useVsCodeTestRunner
**Default:** `true`.
<br />
Whether to use the built-in VS Code test runner. Otherwises uses the legacy custom test runner.

## dart.warnWhenEditingFilesInPubCache
**Default:** `true`.
<br />
Whether to show a warning when modifying files in the [system package cache](https://dart.dev/tools/pub/glossary#system-cache) directory.

## dart.warnWhenEditingFilesOutsideWorkspace
**Default:** `true`.
<br />
Whether to show a warning when modifying files outside of the workspace.

# Resource Scoped Settings

Resource scoped settings can be set in individual workspace folder settings and apply to resources within that workspace folder (for example each workspace folder could have its own `dart.lineLength`).

## dart.analysisExcludedFolders
An array of paths to be excluded from Dart analysis. This option should usually be set at the Workspace level. Excluded folders will also be ignored when detecting project types.

## dart.analyzerPath
The path to a custom Dart analysis server.

## dart.completeFunctionCalls
**Default:** `true`.
<br />
Whether to insert parentheses and placeholders for positional and required arguments during code completions when using LSP. This feature is automatically disabled if commit characters are enabled.

## dart.doNotFormat
An array of glob patterns that should be excluded for formatting. The pattern is matched against the absolute path of the file. Use `[ "**/test/**" ]` to skip formatting for all test directories.

## dart.enableCompletionCommitCharacters
**Default:** `false`.
<br />
Whether to automatically commit the selected completion item when pressing certain keys such as . , ( and \[. This setting does not currently apply to LSP, see `dart.previewCommitCharacters`.

## dart.evaluateGettersInDebugViews
**Default:** `true`.
<br />
Whether to evaluate getters in order to display them in debug views (such as the Variables, Watch and Hovers views).

## dart.flutterAdditionalArgs
Additional args to pass to all `flutter` commands including `flutter daemon`. Do not use this to pass arguments to your Flutter app, use the `args` field in a `launch.json` or the `dart.flutterRunAdditionalArgs` setting.

## dart.flutterAttachAdditionalArgs
Additional args to pass to the `flutter attach` command. Using the `args` field in `launch.json` is usually better than this setting as this setting will apply to _all_ projects.

## dart.flutterRunAdditionalArgs
Additional args to pass to the `flutter run` command. Using the `args` field in `launch.json` is usually better than this setting as this setting will apply to _all_ projects.

## dart.flutterScreenshotPath
The path to a directory to save Flutter screenshots.

## dart.flutterSdkPath
The location of the Flutter SDK to use. If blank, Dart Code will attempt to find it from the project directory, `FLUTTER_ROOT` environment variable and the `PATH` environment variable.

## dart.flutterSdkPaths
An array of paths that either directly point to a Flutter SDK or the parent directory of multiple Flutter SDKs. When set, the version number in the status bar can be used to quickly switch between SDKs.

## dart.flutterStructuredErrors
**Default:** `true`.
<br />
Whether to use Flutter's [structured error support](https://medium.com/flutter/improving-flutters-error-messages-e098513cecf9) for improved error display.

## dart.flutterTestAdditionalArgs
Additional args to pass to the `flutter test` command. Using the `args` field in `launch.json` is usually better than this setting as this setting will apply to _all_ projects.

## dart.flutterTrackWidgetCreation
**Default:** `true`.
<br />
Whether to pass `--track-widget-creation` to Flutter apps (required to support 'Inspect Widget'). This setting is always ignored when running in Profile or Release mode.

## dart.insertArgumentPlaceholders
**Default:** `true`.
<br />
Whether to insert argument placeholders during code completions. This feature is automatically disabled when `enableCompletionCommitCharacters` is enabled. This setting does not apply to LSP, instead see the `dart.completeFunctionCalls` setting.

## dart.lineLength
**Default:** `80`.
<br />
The maximum length of a line of code. This is used by the document formatter.

## dart.promptToGetPackages
**Default:** `true`.
<br />
Whether to prompt to get packages when opening a project with out of date packages.

## dart.pubAdditionalArgs
Additional args to pass to all `pub` commands.

## dart.runPubGetOnPubspecChanges
**Default:** `true`.
<br />
Whether to automatically run `pub get` whenever `pubspec.yaml` is saved.

## dart.sdkPath
The location of the Dart SDK to use for analyzing and executing code. If blank, Dart Code will attempt to find it from the `PATH` environment variable. When editing a Flutter project, the version of Dart included in the Flutter SDK is used in preference.

## dart.sdkPaths
An array of paths that either directly point to a Dart SDK or the parent directory of multiple Dart SDKs. When set, the version number in the status bar can be used to quickly switch between SDKs.

## dart.showDartDeveloperLogs
**Default:** `true`.
<br />
Whether to show logs from the `dart:developer` `log()` function in the debug console.

## dart.vmAdditionalArgs
Additional args to pass to the Dart VM when running/debugging command line apps.

# Custom Color Settings

Some colors in Dart Code can be customized using the `workbench.colorCustomizations` section in settings. Supported colors are:

## dart.closingLabels
The color of the 'closing label' annotations shown against constructor, method invocations and lists that span multiple lines. If not supplied, the color for `tab.inactiveForeground` will be used.

## dart.flutterUiGuides
The color of the Flutter UI Guidelines shown in the editor.

# Diagnostic Settings

There are several settings for enabling logging of various services used by Dart Code. For more information about setting these up and troubleshooting please see [Enabling Logging](/docs/logging/).

## dart.analyzerDiagnosticsPort
The port number to be used for the Dart analyzer diagnostic server.

## dart.analyzerInstrumentationLogFile
The path to a log file for very detailed logging in the Dart analysis server that may be useful when trying to diagnose analysis server issues. For more information on capturing these logs, see [Analyzer Instrumentation Logging](/docs/logging/#analyzer-instrumentation).

## dart.analyzerLogFile
The path to a log file for communication between Dart Code and the analysis server. For more information on capturing these logs, see [Analyzer Logging](/docs/logging/#analyzer).

## dart.dapLogFile
The path to a log file for communication with the DAP debug adapters. This is useful when trying to diagnose issues with debugging such as missed breakpoints.

## dart.devToolsLogFile
The path to a low-traffic log file for the Dart DevTools service.

## dart.extensionLogFile
The path to a low-traffic log file for basic extension and editor issues. For more information on capturing these logs, see [Extension Logging](/docs/logging/#extension).

## dart.flutterDaemonLogFile
The path to a log file for the `flutter daemon` service, which provides information about connected devices to show in the status bar. For more information on capturing these logs, see [Flutter Daemon Logging](/docs/logging/#flutter-daemon).

## dart.flutterRunLogFile
The path to a log file for `flutter run`, which is used to launch Flutter apps from VS Code. This is useful when trying to diagnose issues with apps launching (or failing to) on simulators and devices. Use `${name}` in the log file name to prevent concurrent debug sessions overwriting each others logs. For more information on capturing these logs, see [Flutter Run Logging](/docs/logging/#flutter-run).

## dart.flutterTestLogFile
The path to a log file for `flutter test`, which is used to run unit tests from VS Code. This is useful when trying to diagnose issues with unit test executions. Use `${name}` in the log file name to prevent concurrent debug sessions overwriting each others logs. For more information on capturing these logs, see [Flutter Test Logging](/docs/logging/#flutter-test).

## dart.pubTestLogFile
The path to a log file for Dart test runs. This is useful when trying to diagnose issues with unit test executions. Use `${name}` in the log file name to prevent concurrent debug sessions overwriting each others logs. For more information on capturing these logs, see [Pub Test Logging](/docs/logging/#pub-test).

## dart.vmServiceLogFile
The path to a log file for communication between Dart Code and the VM service. This is useful when trying to diagnose issues with debugging such as missed breakpoints. Use `${name}` in the log file name to prevent concurrent debug sessions overwriting each others logs.

## dart.webDaemonLogFile
The path to a log file for communication between Dart Code and the webdev daemon. This is useful when trying to diagnose issues with launching web apps. Use `${name`} in the log file name to prevent concurrent debug sessions overwriting each others logs.
