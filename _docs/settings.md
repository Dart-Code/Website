---
title: Settings
---

There are a number of settings for the Dart and Flutter extensions that can be modified in VS Code's [User Settings or Workspace Settings](https://code.visualstudio.com/docs/getstarted/settings).

The settings described here are documented by their JSON keys, though most of them can also be edited in the settings UI in VS Code by clicking the **Dart & Flutter** section under **Extensions**.

* TOC
{:toc}

# Window Scoped Settings

Window scoped settings must be applied in your User Settings or at the workspace level and will apply for all projects open in a window (for example, `dart.sdkPath` is used to launch an analyzer that is used for the whole window).

## Analyzer

### dart.analyzerAdditionalArgs
Additional arguments to pass to the Dart Analysis Server. This setting is can be useful for troubleshooting issues with the Dart Analysis Server.

### dart.analyzerSshHost
An SSH host to run the Analysis Server.
This can be useful when modifying code on a remote machine using SSHFS.

### dart.analyzerVmAdditionalArgs
Additional arguments to pass to the VM running the Dart Analysis Server. This setting is can be useful for troubleshooting issues with the Dart Analysis Server.

### dart.analyzerVmServicePort
The port number to be used for the Dart Analysis Server VM service. This setting is intended for use by Dart Analysis Server developers.

### dart.includeDependenciesInWorkspaceSymbols
**Default:** `true`.
<br />
Whether to include symbols from the SDK and package dependencies in the "Go to Symbol in Workspace" (`cmd/ctrl`+`T`) list. This can only be disabled when using Dart 3.0 / Flutter 3.10 or later.

### dart.notifyAnalyzerErrors
**Default:** `true`.
<br />
Whether to show a notification the first few times an Analysis Server exception occurs.

### dart.onlyAnalyzeProjectsWithOpenFiles
**Default:** `false`.
<br />
Whether to ignore workspace folders and perform analysis based on the open files, as if no workspace was open at all. This allows opening large folders without causing them to be completely analyzed.

### dart.showExtensionRecommendations
**Default:** `true`.
<br />
Whether to show recommendations for other VS Code extensions based on the packages you're using.

### dart.showTodos
**Default:** `true`.
<br />
Whether to show TODOs in the Problems list. Can be a boolean to enable all TODO comments (TODO, FIXME, HACK, UNDONE) or an array of which types to enable. Older Dart SDKs may not support some TODO kinds.

## DevTools

### dart.closeDevTools
**Options:** `"never"`, `"ifOpened"` or `"always"`.
<br />
**Default:** `"never"`.
<br />
Whether to automatically close embedded DevTools tabs when a debug session ends.

- `never` - Do not automatically close embedded DevTools when the debug session ends.
- `ifOpened` - Automatically close embedded DevTools the debug session ends if it was automatically opened when the session started.
- `always` - Always automatically close embedded DevTools when the debug session ends.

### dart.devToolsBrowser
**Options:** `"chrome"` or `"default"`.
<br />
**Default:** `"chrome"`.
<br />
Whether to launch external DevTools windows using Chrome or the system default browser. This setting is ignored for remote workspaces (including Docker, SSH, WSL).

- `chrome` - Locate and launch Google Chrome from your system.
- `default` - Use your systems default web browser.

### dart.devToolsLocation
**Default:** `{default: beside, inspector: sidebar}`.
<br />
Where to open [Dart DevTools](https://dart.dev/tools/dart-devtools) pages.

### dart.devToolsPort
The port number to be used for the Dart DevTools (requires restart).

### dart.devToolsReuseWindows
**Default:** `true`.
<br />
Whether to try to reuse existing DevTools windows instead of launching new ones. Only works for instances of DevTools launched by the DevTools server on the local machine.

### dart.devToolsTheme
**Options:** `"dark"` or `"light"`.
<br />
**Default:** `"dark"`.
<br />
The theme to use for Dart DevTools.

### dart.openDevTools
**Options:** `"never"`, `"flutter"` or `"always"`.
<br />
**Default:** `"never"`.
<br />
Whether to automatically open DevTools at the start of a debug session. If embedded DevTools is enabled, this will launch the Widget Inspector embedded for Flutter projects, or launch DevTools externally in a browser for Dart projects.

- `never` - Do not automatically launch DevTools when starting a debug session.
- `flutter` - Automatically launch DevTools when starting a Flutter debug session.
- `always` - Automatically launch DevTools when starting any debug session.

### dart.shareDevToolsWithFlutter
**Default:** `true`.
<br />
Whether to eagerly run DevTools for Flutter workspaces and share the spawned server with `flutter run`.

### dart.showInspectorNotificationsForWidgetErrors
**Default:** `true`.
<br />
Whether to show notifications for widget errors that offer Inspect Widget links. This requires that the `dart.shareDevToolsWithFlutter` setting is also enabled.

## Editor

### dart.autoImportCompletions
**Default:** `true`.
<br />
Whether to include symbols that have not been imported in the code completion list and automatically insert the required import when selecting them (requires restart).

### dart.automaticCommentSlashes
**Options:** `"none"`, `"tripleSlash"` or `"all"`.
<br />
**Default:** `"tripleSlash"`.
<br />
Determines when to insert comment slashes when pressing `<enter>` in the editor (requires restart).

When using `tripleSlash`, double-slashes will still be included when breaking existing double-slash comments across additional lines.

- `none` - Never insert slashes automatically.
- `tripleSlash` - Insert `///` when pressing `<enter>` at the end of a triple-slash comment.
- `all` - Insert `///` when pressing `<enter>` at the end of a triple-slash comment and also `//` when pressing `<enter>` at the end of a double-slash comment.

### dart.closingLabels
**Default:** `true`.
<br />
Whether to show annotations against constructor, method invocations and lists that span multiple lines.

### dart.closingLabelsPrefix
**Default:** `" // "`.
<br />
The prefix to use in closing labels.

### dart.closingLabelsTextStyle
**Options:** `"normal"` or `"italic"`.
<br />
**Default:** `"normal"`.
<br />
The text style to use in closing labels. Using _Italic_ requires a font that supports italic text.

### dart.documentation
**Options:** `"full"`, `"summary"` or `"none"`.
<br />
What level of documentation to show in Hovers and Code Completion details. When `null`, defaults to 'full' when running locally and 'none' in remote workspaces. This setting is only supported for Dart SDKs after v2.18.

- `full` - Show full documentation.
- `summary` - Show short documentatin summary.
- `none` - Do not show documentation.

### dart.dtdEditorActiveLocationDelay
**Default:** `200`.
<br />
How long (in ms) to delay sending editor location change events over the Dart Tooling Daemon. Increasing this results in less events which may improve performance, at the expensive of tools that use these events not updating as quickly after your location/editor changes (requires restart).

### dart.enableSdkFormatter
**Default:** `true`.
<br />
Whether to enable the [dart_style](https://pub.dev/packages/dart_style) formatter for Dart code.

### dart.enableServerSnippets
**Default:** `true`.
<br />
Whether to use code snippets from the Dart Analysis Server instead of those included in the extension. Server snippets are context and language-version aware and should be preferred.

### dart.enableSnippets
**Default:** `true`.
<br />
Whether to include Dart and Flutter snippets in code completion.

### dart.lspSnippetTextEdits
**Default:** `true`.
<br />
Whether to enable [Snippet support in LSP TextEdits](https://github.com/rust-analyzer/rust-analyzer/blob/979e788957ced1957ee9ac1da70fb97abf9fe2b1/docs/dev/lsp-extensions.md#snippet-textedit).

### dart.renameFilesWithClasses
**Options:** `"never"`, `"prompt"` or `"always"`.
<br />
**Default:** `"never"`.
<br />
Whether to rename files when renaming classes with matching names (for example renaming 'class Person' inside 'person.dart'). If set to 'prompt', will ask each time before renaming. If set to 'always', the file will automatically be renamed. This setting requires using LSP and a Dart SDK of at least v2.15.

### dart.showDartPadSampleCodeLens
**Default:** `true`.
<br />
Whether to show CodeLens actions in the editor for opening online DartPad samples.

### dart.showMainCodeLens
**Default:** `true`.
<br />
Whether to show CodeLens actions in the editor for quick running / debugging scripts with main functions.

### dart.showTestCodeLens
**Default:** `true`.
<br />
Whether to show CodeLens actions in the editor for quick running / debugging tests.

### dart.updateImportsOnRename
**Default:** `true`.
<br />
Whether to automatically update imports when moving or renaming files. Currently only supports single file moves / renames.

### dart.warnWhenEditingFilesInPubCache
**Default:** `true`.
<br />
Whether to show a warning when modifying files in the [system package cache](https://dart.dev/tools/pub/glossary#system-cache) directory.

### dart.warnWhenEditingFilesOutsideWorkspace
**Default:** `true`.
<br />
Whether to show a warning when modifying files outside of the workspace.

## Flutter

### dart.flutterAdbConnectOnChromeOs
**Default:** `false`.
<br />
Whether to automatically run `adb connect 100.115.92.2:5555` when spawning the Flutter daemon when running on Chrome OS.

### dart.flutterCreateAndroidLanguage
**Options:** `"java"` or `"kotlin"`.
<br />
**Default:** `"kotlin"`.
<br />
The programming language to use for Android apps when creating new projects using the **Flutter: New Project** command.

### dart.flutterCreateIOSLanguage
**Options:** `"objc"` or `"swift"`.
<br />
**Default:** `"swift"`.
<br />
The programming language to use for iOS apps when creating new projects using the **Flutter: New Project** command. This is only supported up until Flutter 3.22 after which it will be ignored.

### dart.flutterCreateOrganization
The organization responsible for your new Flutter project, in reverse domain name notation (e.g. `com.google`). This string is used in Java package names and as prefix in the iOS bundle identifier when creating new projects using the **Flutter: New Project** command.

### dart.flutterCreatePlatforms
The platforms to enable for new projects created using the **Flutter: New Project** command. If unset, all platforms will be enabled.

### dart.flutterCustomEmulators
Custom emulators to show in the emulator list for easier launching. If IDs match existing emulators returned by Flutter, the custom emulators will override them.

### dart.flutterGenerateLocalizationsOnSave
**Options:** `"never"`, `"manual"`, `"manualIfDirty"`, `"all"` or `"allIfDirty"`.
<br />
**Default:** `"never"`.
<br />
Whether to automatically run the Generate Localizations command for Flutter apps when saving .arb files.

- `never` - Do not generate localizations when saving.
- `manual` - Generate localizations for explicit manual saves (requires pressing Save explicitly if using autosave).
- `manualIfDirty` - Generate localizations for explicit manual saves (requires pressing Save explicitly if using autosave) only if the saved file had changes.
- `all` - Generate localizations for all saves, manual or automatic.
- `allIfDirty` - Generate localizations for all saves, manual or automatic only if the saved file had changes.

### dart.flutterGutterIcons
**Default:** `true`.
<br />
Whether to show Flutter icons and colors in the editor gutter.

### dart.flutterHotReloadOnSave
**Options:** `"never"`, `"manual"`, `"manualIfDirty"`, `"all"` or `"allIfDirty"`.
<br />
**Default:** `"manual"`.
<br />
Whether to automatically send a Hot Reload request to Flutter apps during a debug session when saving files. Dart apps are controlled by the hotReloadOnSave setting.

- `never` - Do not reload when saving.
- `manual` - Reload for explicit manual saves (requires pressing Save explicitly if using autosave).
- `manualIfDirty` - Reload for explicit manual saves (requires pressing Save explicitly if using autosave) only if the saved file had changes.
- `all` - Reload for all saves, manual or automatic.
- `allIfDirty` - Reload for all saves, manual or automatic only if the saved file had changes.

### dart.flutterOutline
**Default:** `true`.
<br />
Whether to show the Flutter Outline tree in the sidebar.

### dart.flutterRememberSelectedDevice
**Default:** `true`.
<br />
Whether to remember which device was last (explicitly) selected for each project. When the remembered device is selected, it will prevent newly-connected mobile devices from being automatically selected (regardless of the `dart.flutterSelectDeviceWhenConnected` setting).

### dart.flutterSelectDeviceWhenConnected
**Default:** `true`.
<br />
Whether to set newly connected devices as the current device in Flutter projects.

### dart.flutterShowEmulators
**Options:** `"local"`, `"always"` or `"never"`.
<br />
**Default:** `"local"`.
<br />
When to show the Flutter emulators. These are usually hidden for remote workspaces because it is usually not possible to see or interact with emulators in a remote session. If you are using remoting/containers in a way that you can interact with launched emulator processes, you may wish to set this to 'always'.

- `local` - Only show for local workspaces.
- `always` - Always show, even for remote sessions.
- `never` - Never show emulators.

### dart.flutterShowWebServerDevice
**Options:** `"remote"` or `"always"`.
<br />
**Default:** `"remote"`.
<br />
When to show the Flutter headless web-server device. This requires using the Dart Debug extension for Chrome and is usually only used for remote environments where Chrome is not available such as browser/cloud-based IDEs (requires restart).

- `remote` - Only show for remote workspaces (includes browser-based workspaces).
- `always` - Always show, even for local sessions.

### dart.flutterWebRenderer
**Options:** `"flutter-default"`, `"canvaskit"`, `"html"` or `"auto"`.
<br />
**Default:** `"flutter-default"`.
<br />
Sets the [Web renderer](https://flutter.dev/to/web-renderers) used for Flutter web apps.

- `flutter-default` - Use the default renderer for Flutter Web apps.
- `canvaskit` - Always use the CanvasKit renderer.
- `html` - Always use the HTML renderer.
- `auto` - Use Flutter's "auto" renderer option to pick the best renderer based on the users device.

### dart.hotReloadOnSave
**Options:** `"never"`, `"manual"`, `"manualIfDirty"`, `"all"` or `"allIfDirty"`.
<br />
**Default:** `"never"`.
<br />
Whether to automatically send a Hot Reload request to Dart apps during a debug session when saving files. Flutter apps are controlled by the flutterHotReloadOnSave setting.

- `never` - Do not reload when saving.
- `manual` - Reload for explicit manual saves (requires pressing Save explicitly if using autosave).
- `manualIfDirty` - Reload for explicit manual saves (requires pressing Save explicitly if using autosave) only if the saved file had changes.
- `all` - Reload for all saves, manual or automatic.
- `allIfDirty` - Reload for all saves, manual or automatic only if the saved file had changes.

### dart.offline
**Default:** `false`.
<br />
Whether to use the --offline switch for commands like `pub get` and **Flutter: New Project**.

## Logging

### dart.maxCompletionItems
The maximum number of completion items to return from a code completion request. Updated results will be fetched as additional characters are typed. Lower numbers may improved performance. Defaults to a lower value in remote workspaces. Only affects LSP for > Dart SDK 2.17.

### dart.maxLogLineLength
**Default:** `2000`.
<br />
The maximum length of a line in the log file. Lines longer than this will be truncated and suffixed with an ellipsis.

## Pub

### dart.enablePub
**Default:** `true`.
<br />
Whether to enable functionality for using Pub. Turning this setting off will prevent the extension from ever running pub and hide all commands relating to this. Use this if you are using an alternative package manager.

### dart.runPubGetOnNestedProjects
**Options:** `"none"`, `"both"`, `"above"` or `"below"`.
<br />
**Default:** `"none"`.
<br />
Whether to automatically run `pub get` on nested projects above or below the one where the pubspec was changed.

- `none` - Only run `pub get` for the project whose pubspec was changed.
- `both` - Run `pub get` also in parent or child projects of the one whose pubspec was changed.
- `above` - Run `pub get` also in parent projects of the one whose pubspec was changed.
- `below` - Run `pub get` also in child projects of the one whose pubspec was changed.

## Run and Debug

### dart.buildRunnerAdditionalArgs
Additional args to pass to the `build_runner` when building/watching/serving.

### dart.cliConsole
**Options:** `"debugConsole"`, `"terminal"` or `"externalTerminal"`.
<br />
**Default:** `"debugConsole"`.
<br />
Whether to run Dart CLI apps in the Debug Console or a terminal. The Debug Console has more functionality because the process is controlled by the debug adapter, but is unable to accept input from the user via stdin.

- `debugConsole` - Run in the Debug Console pane, using the input as a REPL to evaluate expressions.
- `terminal` - Run in the VS Code integrated terminal where input will be sent to stdin.
- `externalTerminal` - Run in an external terminal where input will be sent to stdin.

### dart.debugExtensionBackendProtocol
**Options:** `"sse"` or `"ws"`.
<br />
**Default:** `"ws"`.
<br />
The protocol to use for the Dart Debug Extension backend service and injected client. Using WebSockets can improve performance but may fail when connecting through some proxy servers.

- `sse` - Server-Sent Events.
- `ws` - WebSockets.

### dart.debugExternalPackageLibraries
**Default:** `false`.
<br />
Whether to mark external pub package libraries (including `package:flutter`) as debuggable, enabling stepping into them while debugging.

### dart.debugSdkLibraries
**Default:** `false`.
<br />
Whether to mark Dart SDK libraries (`dart:*`) as debuggable, enabling stepping into them while debugging.

### dart.evaluateToStringInDebugViews
**Default:** `true`.
<br />
Whether to call toString() on objects when rendering them in debug views (such as the Variables, Watch and Hovers views). Only applies to views of 100 or fewer values for performance reasons.

### dart.hotReloadProgress
**Options:** `"notification"` or `"statusBar"`.
<br />
**Default:** `"notification"`.
<br />
Determines how to display Hot Restart and Hot Reload progress.

- `notification` - Hot reload progress will be shown in a toast notification.
- `statusBar` - Hot reload progress will be shown only in the status bar.

### dart.promptToRunIfErrors
**Default:** `true`.
<br />
Whether to prompt before running if there are errors in your project. Test scripts will be excluded from the check unless they're the script being run.

### dart.showDebuggerNumbersAsHex
**Default:** `false`.
<br />
Whether to show integers formatted as Hex in Variables, Watch, Debug Consoles.

### dart.showDevToolsDebugToolBarButtons
**Default:** `true`.
<br />
Whether to show DevTools buttons in the floating Debug toolbar.

## SDK

### dart.addSdkToTerminalPath
**Default:** `true`.
<br />
Whether to add your selected Dart/Flutter SDK path to the `PATH` environment variable for the embedded terminal. This is useful when switching SDKs via `dart.sdkPaths` / `dart.flutterSdkPaths` to ensure commands run from the terminal are the same version as being used by the editor/debugger (requires restart).

### dart.checkForSdkUpdates
**Default:** `true`.
<br />
Whether to check you are using the latest version of the Dart SDK at startup.

### dart.sdkSwitchingTarget
**Options:** `"workspace"` or `"global"`.
<br />
**Default:** `"workspace"`.
<br />
Where to save SDK selections when using fast SDK switching from the language status entry.

- `workspace` - Save the SDK path in the current workspace settings.
- `global` - Save the SDK path in your global user settings and clear any workspace setting.

## Testing

### dart.allowTestsOutsideTestFolder
**Default:** `false`.
<br />
Whether to consider files ending `_test.dart` that are outside of the test directory as tests. This should be enabled if you put tests inside the `lib` directory of your Flutter app so they will be run with `flutter test` and not `flutter run`.

### dart.openTestView
**Default:** `[testRunStart]`.
<br />
When to automatically switch focus to the test list (array to support multiple values).

### dart.showSkippedTests
**Default:** `true`.
<br />
Whether to show skipped tests in the test tree.

### dart.testInvocationMode
**Options:** `"name"` or `"line"`.
<br />
**Default:** `"name"`.
<br />
How to identify tests when running/debugging. `name` is compatible with older versions of `package:test` but cannot handle some complex/dynamic test names. `line` will prefer to run tests by their line numbers (when available) and fall back to `name` only if the line number is unavailable.

## Other

### dart.env
**Default:** `{}`.
<br />
Additional environment variables to be added to all Dart/Flutter processes spawned by the Dart and Flutter extensions.

### dart.projectSearchDepth
**Default:** `5`.
<br />
How many levels (including the workspace roots) down the workspace to search for Dart/Flutter projects. Increasing this number may help detect Flutter projects that are deeply nested in your workspace but slow down all operations that search for projects, including extension activation.

### dart.toolingDaemonAdditionalArgs
Additional args to pass to the `dart tooling-daemon` command that runs as a background service (requires restart).

## Experimental

### dart.experimentalDtdHandlers
**Default:** `false`.
<br />
Whether to enable experimental (possibly unfinished or unstable) LSP handlers through DTD. This setting is passed to the analysis server in the connectToDtd request and therefore relies on DTD being supported and enabled for the analysis server (requires restart).

### dart.experimentalRefactors
**Default:** `false`.
<br />
Whether to enable experimental (possibly unfinished or unstable) refactors on the lightbulb menu. This setting is intended for use by Dart Analysis Server developers or users that want to try out and provide feedback on in-progress refactors.

### dart.normalizeFileCasing
**Default:** `false`.
<br />
Whether to normalize file casings before sending them to the LSP server. This may fix issues with file_names lints not disappearing after renaming a file if the VS Code API continues to use the original casing.

### dart.previewCommitCharacters
**Default:** `false`.
<br />
EXPERIMENTAL: Whether to enable commit characters for the LSP server. In a future release, the `dart.enableCompletionCommitCharacters` setting will also apply to LSP.

### dart.previewFlutterUiGuides
**Default:** `false`.
<br />
EXPERIMENTAL: Whether to enable the [Flutter UI Guides preview](https://dartcode.org/releases/v3-1/#preview-flutter-ui-guides).

### dart.previewFlutterUiGuidesCustomTracking
**Default:** `false`.
<br />
EXPERIMENTAL: Whether to enable custom tracking of Flutter UI guidelines (to hide some latency of waiting for the next Flutter Outline).

### dart.previewHotReloadOnSaveWatcher
**Default:** `false`.
<br />
Whether to perform hot reload on save based on a filesystem watcher for Dart files rather than using VS Code's `onDidSave` event. This allows reloads to trigger when external tools modify Dart source files.

## Legacy

### dart.additionalAnalyzerFileExtensions
**LEGACY SETTING: Only applies to legacy analysis server protocol.**

Additional file extensions that should be analyzed (usually used in combination with analyzer plugins).

### dart.analysisServerFolding
**Default:** `true`.
<br />
**LEGACY SETTING: Only applies to legacy analysis server protocol.**

Whether to use folding data from the Dart Analysis Server instead of the built-in VS Code indent-based folding.

### dart.analyzeAngularTemplates
**Default:** `true`.
<br />
**LEGACY SETTING: The angular plugin is no longer supported.**

Whether to enable analysis for AngularDart templates (requires the Angular analyzer plugin to be enabled in `analysis_options.yaml`).

### dart.updateDevTools
**Default:** `true`.
<br />
**LEGACY SETTING: Only applies to Dart SDKs before v2.15 since DevTools now ships in the SDK.**

Whether to update DevTools if you are not using the latest version.

### dart.useLegacyDebugAdapters
**LEGACY SETTING: Legacy debug adapters are not recommended since Dart v3.4.**

Whether to use the legacy debug adapters even if the new debug adapters are available in the current Dart/Flutter SDKs contain. Setting the value to `true` will force use of the legacay adapters. Setting to `false` will force use of the SDK adapters. Leaving as `null` will allow the extension to decide which debug adapters to use depending on the SDK version and rollout progress.

# Resource Scoped Settings

Resource scoped settings can be set in individual workspace folder settings and apply to resources within that workspace folder (for example each workspace folder could have its own `dart.lineLength`).

## Analyzer

### dart.analysisExcludedFolders
An array of paths to be excluded from Dart analysis. This option should usually be set at the Workspace level. Excluded folders will also be ignored when detecting project types.

### dart.analyzerPath
The path to a custom Dart Analysis Server. This setting is intended for use by Dart Analysis Server developers. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows).

## DevTools

### dart.customDevTools
Custom settings for launching DevTools. This setting is intended for use by Dart DevTools developers.

## Editor

### dart.completeFunctionCalls
**Default:** `true`.
<br />
Whether to insert parentheses and placeholders for positional and required arguments during code completions when using LSP. This feature is automatically disabled if commit characters are enabled.

### dart.enableCompletionCommitCharacters
**Default:** `false`.
<br />
Whether to automatically commit the selected completion item when pressing certain keys such as . , ( and \[. This setting does not currently apply to LSP, see `dart.previewCommitCharacters`.

### dart.hotReloadPatterns
An array of glob patterns that should trigger Hot Reload when saved. The pattern is matched against the absolute path of the file. Use `**/assets/**` to trigger reloading for everything in the assets directory. Must always start with "**/" and use forward slashes (even on Windows) as backslashes are used for escaping.

### dart.insertArgumentPlaceholders
**Default:** `true`.
<br />
Whether to insert argument placeholders during code completions. This feature is automatically disabled when `enableCompletionCommitCharacters` is enabled.

### dart.lineLength
**Default:** `80`.
<br />
The maximum length of a line of code. This is used by the document formatter. If you change this value, you may wish to update `editor.rulers` (which draws vertical lines in the editor) in the `["dart"]` section of your settings to match.

## Flutter

### dart.flutterAdditionalArgs
Additional args to pass to all `flutter` commands including `flutter daemon`. Do not use this to pass arguments to your Flutter app, use the `args` field in a `launch.json` or the `dart.flutterRunAdditionalArgs` setting.

### dart.flutterAttachAdditionalArgs
Additional args to pass to the `flutter attach` command. Using the `args`/`toolArgs` fields in `launch.json` is usually better than this setting as this setting will apply to _all_ projects.

### dart.flutterRunAdditionalArgs
Additional args to pass to the `flutter run` command. Using the `args`/`toolArgs` fields in `launch.json` is usually better than this setting as this setting will apply to _all_ projects.

### dart.flutterScreenshotPath
The path to a directory to save Flutter screenshots. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows).

### dart.flutterTestAdditionalArgs
Additional args to pass to the `flutter test` command. Using the `args`/`toolArgs` fields in `launch.json` is usually better than this setting as this setting will apply to _all_ projects.

## Pub

### dart.promptToGetPackages
**Default:** `true`.
<br />
Whether to prompt to get/upgrade packages when opening a project with missing/out of date packages.

### dart.pubAdditionalArgs
Additional args to pass to all `pub` commands.

### dart.runPubGetOnPubspecChanges
**Options:** `"always"`, `"prompt"` or `"never"`.
<br />
**Default:** `"always"`.
<br />
Whether to run `pub get` whenever `pubspec.yaml` is saved.

- `always` - Always run when pubspec is changed.
- `prompt` - Prompt to run when pubspec is changed.
- `never` - Never run when pubspec is changed.

## Run and Debug

### dart.cliAdditionalArgs
Additional args to pass to the `dart` command when running CLI scripts. Using the `args`/`toolArgs` fields in `launch.json` is usually better than this setting as this setting will apply to _all_ projects.

### dart.customDartDapPath
The path to a custom Dart Debug Adapter. This setting is intended for use by Dart Debug Adapter developers. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows).

### dart.customFlutterDapPath
The path to a custom Flutter Debug Adapter. This setting is intended for use by Dart Debug Adapter developers. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows).

### dart.evaluateGettersInDebugViews
**Default:** `true`.
<br />
Whether to evaluate getters in order to display them in debug views (such as the Variables, Watch and Hovers views).

### dart.showDartDeveloperLogs
**Default:** `true`.
<br />
Whether to show logs from the `dart:developer` `log()` function in the debug console.

### dart.showGettersInDebugViews
**Default:** `true`.
<br />
Whether to show getters in order to display them in debug views (such as the Variables, Watch and Hovers views). If `evaluateGettersInDebugViews` is `true` getters will be eagerly evaluated, otherwise they will require clicking to evaluate.

### dart.suppressTestTimeouts
**Options:** `"never"`, `"debug"` or `"always"`.
<br />
**Default:** `"never"`.
<br />
Whether to suppress test timeouts when running/debugging tests. To work properly this requires package:test version 1.20.1 or newer. For older versions, the default timeout will be increased to 1d but this will not affect tests that have explicit (non-factor) timeouts set with @timeout.

- `never` - Do not suppress test timeouts.
- `debug` - Suppress test timeouts when Debugging.
- `always` - Suppress test timeouts both when Running and Debugging.

### dart.testAdditionalArgs
Additional args to pass to the `dart test` command. Using the `args`/`toolArgs` fields in `launch.json` is usually better than this setting as this setting will apply to _all_ projects.

### dart.vmAdditionalArgs
Arguments to be passed to the Dart VM when running Dart CLI scripts/tests.

These arguments appear after "dart" but before subcommands like "test":

`dart (vmAdditionalArgs) test (toolArgs) test/my_test.dart (args)`

## SDK

### dart.flutterSdkPath
The location of the Flutter SDK to use. If blank (or not a valid SDK), Dart Code will attempt to find it from the project directory, `FLUTTER_ROOT` environment variable and the `PATH` environment variable. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows).

### dart.flutterSdkPaths
An array of paths that either directly point to a Flutter SDK or the parent directory of multiple Flutter SDKs that can be used for fast SDK switching. These paths are not used directly when searching for an SDK. When this setting is populated, the version number in the status bar can be used to quickly switch between SDKs. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows).

### dart.getDartSdkCommand
Get the Dart SDK path from a command. Useful when using tools such as direnv, asdf, mise... The command should exit with a 0 status code and it should print to the standard output just the path to the SDK. If the command fails (non zero exit or bad path), the extension will keep looking for other SDK paths. Some configuration examples can be found in: https://github.com/Dart-Code/Dart-Code/pull/5377

### dart.getFlutterSdkCommand
Get the Flutter SDK path from a command. Useful when using tools such as direnv, asdf, mise... The command should exit with a 0 status code and it should print to the standard output just the path to the SDK. If the command fails (non zero exit or bad path), the extension will keep looking for other SDK paths. Some configuration examples can be found in: https://github.com/Dart-Code/Dart-Code/pull/5377

### dart.sdkPath
The location of the Dart SDK to use for analyzing and executing code. If blank (or not a valid SDK), Dart Code will attempt to find it from the `PATH` environment variable. When editing a Flutter project, the version of Dart included in the Flutter SDK is used in preference. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows).

### dart.sdkPaths
An array of paths that either directly point to a Dart SDK or the parent directory of multiple Dart SDKs that can be used for fast SDK switching. These paths are not used directly when searching for an SDK. When this setting is populated, the SDK version number in the status bar can be used to quickly switch between SDKs. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows).

## Experimental

### dart.daemonPort
EXPERIMENTAL: The port where `flutter daemon` can be accessed if daemon is run remotely. This setting is intended for use by Google developers.

## Legacy

### dart.doNotFormat
**LEGACY SETTING: Only applies to legacy analysis server protocol.**

An array of glob patterns that should be excluded for formatting. The pattern is matched against the absolute path of the file. Use `[ "**/test/**" ]` to skip formatting for all test directories. Must always use forward slashes (even on Windows) as backslashes are used for escaping.

### dart.flutterTrackWidgetCreation
**Default:** `true`.
<br />
**LEGACY SETTING: Disabling this may break functionality on modern SDKs.**

Whether to pass `--track-widget-creation` to Flutter apps (required to support 'Inspect Widget'). This setting is always ignored when running in Profile or Release mode.

# Custom Color Settings

Some colors in Dart Code can be customized using the `workbench.colorCustomizations` section in settings. Supported colors are:

## dart.closingLabels
The color of the 'closing label' annotations shown against constructor, method invocations and lists that span multiple lines. If not supplied, the color for `tab.inactiveForeground` will be used.

## dart.flutterUiGuides
The color of the Flutter UI Guidelines shown in the editor.

# Diagnostic Settings

There are several settings for enabling logging of various services used by Dart Code. For more information about setting these up and troubleshooting please see [Enabling Logging](/docs/logging/).

## Analyzer

### dart.analyzerDiagnosticsPort
The port number to be used for the Dart analyzer diagnostic server. This setting is can be useful for troubleshooting issues with the Dart Analysis Server.

## Logging

### dart.analyzerInstrumentationLogFile
The path to a log file for very detailed logging in the Dart Analysis Server that may be useful when trying to diagnose Analysis Server issues. Use `${workspaceName}` to insert the name of the current workspace in the file path. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows). Only the noted substitutions are supported, others will stay as-is. For more information on capturing these logs, see [Analyzer Instrumentation Logging](/docs/logging/#analyzer-instrumentation).

### dart.analyzerLogFile
The path to a log file for communication between Dart Code and the Analysis Server. Use `${workspaceName}` to insert the name of the current workspace in the file path. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows). Only the noted substitutions are supported, others will stay as-is. For more information on capturing these logs, see [Analyzer Logging](/docs/logging/#analyzer).

### dart.dapLogFile
The path to a log file for communication with the DAP debug adapters. This is useful when trying to diagnose issues with debugging such as missed breakpoints. Use `${name}` in the log file name to insert the Debug Session name to prevent concurrent debug sessions overwriting each others logs. Use `${workspaceName}` to insert the name of the current workspace in the file path. Use `${kind}` to insert a description of the kind of debug session ('dart', 'dart_test', 'flutter' etc.). Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows). Only the noted substitutions are supported, others will stay as-is.

### dart.devToolsLogFile
The path to a low-traffic log file for the Dart DevTools service. Use `${workspaceName}` to insert the name of the current workspace in the file path. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows). Only the noted substitutions are supported, others will stay as-is.

### dart.extensionLogFile
The path to a low-traffic log file for basic extension and editor issues. Use `${workspaceName}` to insert the name of the current workspace in the file path. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows). Only the noted substitutions are supported, others will stay as-is. For more information on capturing these logs, see [Extension Logging](/docs/logging/#extension).

### dart.flutterDaemonLogFile
The path to a log file for the `flutter daemon` service, which provides information about connected devices accessible from the status bar. Use `${workspaceName}` to insert the name of the current workspace in the file path. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows). Only the noted substitutions are supported, others will stay as-is. For more information on capturing these logs, see [Flutter Daemon Logging](/docs/logging/#flutter-daemon).

### dart.toolingDaemonLogFile
The path to a log file for the `dart tooling-daemon` service, which coordinates between various Dart and Flutter tools and extensions. Use `${workspaceName}` to insert the name of the current workspace in the file path. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows). Only the noted substitutions are supported, others will stay as-is.

## Legacy

### dart.dartTestLogFile
**LEGACY SETTING: Only applies when using the legacy debug adapters.**

The path to a log file for Dart test runs. This is useful when trying to diagnose issues with unit test executions. Use `${name}` in the log file name to insert the Debug Session name to prevent concurrent debug sessions overwriting each others logs. Use `${workspaceName}` to insert the name of the current workspace in the file path. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows). Only the noted substitutions are supported, others will stay as-is.

### dart.flutterRunLogFile
**LEGACY SETTING: Only applies when using the legacy debug adapters.**

The path to a log file for `flutter run`, which is used to launch Flutter apps from VS Code. This is useful when trying to diagnose issues with apps launching (or failing to) on simulators and devices. Use `${name}` in the log file name to insert the Debug Session name to prevent concurrent debug sessions overwriting each others logs. Use `${workspaceName}` to insert the name of the current workspace in the file path. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows). Only the noted substitutions are supported, others will stay as-is. For more information on capturing these logs, see [Flutter Run Logging](/docs/logging/#flutter-run).

### dart.flutterTestLogFile
**LEGACY SETTING: Only applies when using the legacy debug adapters.**

The path to a log file for `flutter test`, which is used to run unit tests from VS Code. This is useful when trying to diagnose issues with unit test executions. Use `${name}` in the log file name to insert the Debug Session name to prevent concurrent debug sessions overwriting each others logs. Use `${workspaceName}` to insert the name of the current workspace in the file path. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows). Only the noted substitutions are supported, others will stay as-is. For more information on capturing these logs, see [Flutter Test Logging](/docs/logging/#flutter-test).

### dart.vmServiceLogFile
**LEGACY SETTING: Only applies when using the legacy debug adapters.**

The path to a log file for communication between Dart Code and the VM service. This is useful when trying to diagnose issues with debugging such as missed breakpoints. Use `${name}` in the log file name to insert the Debug Session name to prevent concurrent debug sessions overwriting each others logs. Use `${workspaceName}` to insert the name of the current workspace in the file path. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows). Only the noted substitutions are supported, others will stay as-is.

### dart.webDaemonLogFile
**LEGACY SETTING: Only applies when using the legacy debug adapters.**

The path to a log file for communication between Dart Code and the webdev daemon. This is useful when trying to diagnose issues with launching web apps. Use `${name}` in the log file name to insert the Debug Session name to prevent concurrent debug sessions overwriting each others logs. Use `${workspaceName}` to insert the name of the current workspace in the file path. Use `~` to insert the user's home directory (the path should then use `/` separators even on Windows). Only the noted substitutions are supported, others will stay as-is.
