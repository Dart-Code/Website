---
title: Settings
---

Dart Code has a number of configurable settings that can be modified in your [User Settings or Workspace Settings](https://code.visualstudio.com/docs/getstarted/settings) files.

* TOC
{:toc}

# Window Scoped Settings

Window scoped settings must be applied in your User Settings or at the workspace level and will apply for all projects open in a window (for example, `dart.sdkPath` is used to launch an analyzer that is used for the whole window).

## dart.allowAnalytics
**Default:** `true`.
<br />
Whether to send analytics such as startup timings, frequency of use of features and analysis server crashes.

## dart.analysisServerFolding
**Default:** `true`.
<br />
Whether to use folding data from the Dart analysis server instead of the built-in VS Code indent-based folding.

## dart.analyzeAngularTemplates
**Default:** `true`.
<br />
Whether to enable analysis for AngularDart templates (requires the [angular_analyzer_plugin](https://github.com/dart-lang/angular_analyzer_plugin)).

## dart.analyzerAdditionalArgs
Additional arguments to pass to the Dart analysis server.

## dart.analyzerPath
The path to a custom Dart analysis server.

## dart.analyzerSshHost
An SSH host to run the analysis server.
This can be useful when modifying code on a remote machine using SSHFS.

## dart.buildRunnerAdditionalArgs
Additional args to pass to the build_runner when building/watching/serving.

## dart.checkForSdkUpdates
**Default:** `true`.
<br />
Whether to check you are using the latest version of the Dart SDK at startup.

## dart.closingLabels
**Default:** `true`.
<br />
Whether to show annotations against constructor, method invocations and lists that span multiple lines.

## dart.devToolsTheme
**Options:** `"dark"` or `"light"`.
<br />
**Default:** `"light"`.
<br />
The theme to use for Dart DevTools.

## dart.enableSdkFormatter
**Default:** `true`.
<br />
Whether to enable the dart_style formatter included with the Dart SDK.

## dart.env
Additional environment variables to be added to all Dart/Flutter processes spawned by the Dart and Flutter extensions.

## dart.flutterCreateAndroidLanguage
**Options:** `"java"` or `"kotlin"`.
<br />
The programming language to use for Android apps when creating new projects using the **Flutter: New Project** command.

## dart.flutterCreateIOSLanguage
**Options:** `"objc"` or `"swift"`.
<br />
The programming language to use for IOS apps when creating new projects using the **Flutter: New Project** command.

## dart.flutterCreateOrganization
The organization responsible for your new Flutter project, in reverse domain name notation. This string is used in Java package names and as prefix in the iOS bundle identifier when creating new projects using the **Flutter: New Project** command.

## dart.flutterHotReloadOnSave
**Default:** `true`.
<br />
Whether to automatically send a 'hot reload' request during a Flutter debug session when saving files.

## dart.flutterScreenshotPath
The path to a directory to save Flutter screenshots.

## dart.flutterSdkPath
The location of the Flutter SDK to use. If blank, Dart Code will attempt to find it from the project folder, FLUTTER_ROOT environment variable and the PATH environment variable.

## dart.flutterSdkPaths
An array of strings that are either Flutter SDKs or folders that contains multiple Flutter SDKs in sub-folders. When set, the version number in the status bar will be clickable to quickly switch between SDKs.

## dart.flutterSelectDeviceWhenConnected
**Default:** `true`.
<br />
Whether to set newly connected devices as the current device in Flutter projects.

## dart.maxLogLineLength
**Default:** `2000`.
<br />
The maximum length of a line in the log file. Lines longer than this will be truncated and suffixed with an ellipsis.

## dart.normalizeWindowsDriveLetters
**Default:** `true`.
<br />
Whether to always force Windows drive letters to uppercase when interacting with other tools. This should reduce spurious errors from tools that are accidentally case-sensitive with Windows paths.

## dart.openTestView
**Default:** `[testRunStart]`.
<br />
When to automatically switch focus to the test list (array to support multiple values).

## dart.previewBuildRunnerTasks
**Default:** `false`.
<br />
Whether to register Pub Build Runner tasks with VS Code.

## dart.previewToStringInDebugViews
**Default:** `false`.
<br />
Whether to call toString() on objects when rendering them in debug views (such as the Variables, Watch and Hovers views). Only applies to views of 15 or fewer values for performance reasons.

## dart.promptToRunIfErrors
**Default:** `true`.
<br />
Whether to prompt before running if there are errors in your project. Test scripts will be excluded from the check unless they're the script being run.

## dart.reportAnalyzerErrors
**Default:** `true`.
<br />
Whether to offer to report analysis server exceptions when they occur.

## dart.sdkPath
The location of the Dart SDK to use for analyzing and executing code. If blank, Dart Code will attempt to find it from the PATH environment variable. When editing a Flutter project, the version of Dart included in the Flutter SDK is used in preference.

## dart.sdkPaths
An array of strings that are either Dart SDKs or folders that contains multiple Dart SDKs in sub-folders. When set, the version number in the status bar will be clickable to quickly switch between SDKs.

## dart.showIgnoreQuickFixes
**Default:** `false`.
<br />
Whether to show quick fixes for ignoring hints and lints.

## dart.showTestCodeLens
**Default:** `true`.
<br />
Whether to show Code Lens actions in the editor for quick running/debugging tests.

## dart.showTodos
**Default:** `true`.
<br />
Whether to show TODOs in the Problems list.

## dart.theme
**Options:** `"dark"` or `"light"`.
<br />
**Default:** `"dark"`.
<br />
The theme to use for Icon previews in Hovers. VS Code does not offer an API to check whether the current theme is Dart or Light so this must be configured manually.

## dart.triggerSignatureHelpAutomatically
**Default:** `false`.
<br />
Whether to automatically trigger signature help when pressing keys such as , and (.

## dart.warnWhenEditingFilesOutsideWorkspace
**Default:** `true`.
<br />
Whether to show a warning when modifying files outside of the workspace.

# Resource Scoped Settings

Resource scoped settings can be set in individual workspace folder settings and apply to resources within that workspace folder (for example each workspace folder could have its own `dart.lineLength`).

## dart.analysisExcludedFolders
An array of paths to be excluded from Dart analysis. This option should usually be set at the Workspace level.

## dart.debugExternalLibraries
**Default:** `false`.
<br />
Whether to mark external pub package libraries as debuggable, enabling stepping into them while debugging.

## dart.debugSdkLibraries
**Default:** `false`.
<br />
Whether to mark SDK libraries as debuggable, enabling stepping into them while debugging.

## dart.doNotFormat
An array of glob patterns that should be excluded for formatting. The pattern is matched against the absolute path of the file. Use `[ "**/test/**" ]` to skip formatting for all test folders.

## dart.enableCompletionCommitCharacters
**Default:** `false`.
<br />
Whether to automatically commit the selected completion item when pressing certain keys such as . , ( and [.

## dart.evaluateGettersInDebugViews
**Default:** `true`.
<br />
Whether to evaluate getters in order to display them in debug views (such as the Variables, Watch and Hovers views).

## dart.flutterTrackWidgetCreation
Whether to pass --track-widget-creation to Flutter apps (required to support 'Inspect Widget'). If this setting is not set, it will default to true for Flutter >= 10.2 and false for any previous versions of Flutter. The setting is always ignored when running in Profile or Release mode.

## dart.insertArgumentPlaceholders
**Default:** `true`.
<br />
Whether to insert argument placeholders during code completions. This feature is automatically disabled when `enableCompletionCommitCharacters` is enabled.

## dart.lineLength
**Default:** `80`.
<br />
The maximum length of a line of code. This is used by the document formatter.

## dart.promptToGetPackages
**Default:** `true`.
<br />
Whether to prompt to get packages when opening a project with out of date packages.

## dart.pubAdditionalArgs
Additional args to pass to `pub get` and `pub upgrade` commands (eg. --packages-dir).

## dart.runPubGetOnPubspecChanges
**Default:** `true`.
<br />
Whether to automatically run `pub get` whenever pubspec.yaml is saved.

## dart.vmAdditionalArgs
Additional args to pass to the Dart VM when running/debugging command line apps.

# Custom Color Settings

Some colors in Dart Code can be customized using the `workbench.colorCustomizations` section in settings. Supported colors are:

## dart.closingLabels

The color of the 'closing label' annotations shown against constructor, method invocations and lists that span multiple lines. If not supplied, the color for `tab.inactiveForeground` will be used.

# Diagnostic Settings

There are several settings for enabling logging of various services used by Dart Code. For more information about setting these up and troubleshooting please see [Enabling Logging](/docs/logging/).

## dart.analyzerDiagnosticsPort
The port number to be used for the Dart analysis server diagnostic server.

## dart.analyzerInstrumentationLogFile
The path to a log file for very detailed logging in the Dart analysis server that may be useful when trying to diagnose analysis server issues. For more information on capturing these logs, see [Analyzer Instrumentation Logging](/docs/logging/#analyzer-instrumentation).

## dart.analyzerLogFile
The path to a log file for communication between Dart Code and the analysis server. For more information on capturing these logs, see [Analyzer Logging](/docs/logging/#analyzer).

## dart.analyzerObservatoryPort
The port number to be used for the Dart analysis server observatory.

## dart.extensionLogFile
The path to a low-traffic log file for basic extension and editor issues. For more information on capturing these logs, see [Extension Logging](/docs/logging/#extension).

## dart.flutterDaemonLogFile
The path to a log file for the `flutter daemon` communication which is the service that provides information about connected devices used to show in the status bar. For more information on capturing these logs, see [Flutter Daemon Logging](/docs/logging/#flutter-daemon).

## dart.flutterRunLogFile
The path to a log file for `flutter run` which is used to launch Flutter applications from VS Code. This is useful when trying to diagnose issues with applications launching (or failing to) on simulators and devices. For more information on capturing these logs, see [Flutter Run Logging](/docs/logging/#flutter-run).

## dart.flutterTestLogFile
The path to a log file for `flutter test` which is used to run unit tests from VS Code. This is useful when trying to diagnose issues with unit test executions. For more information on capturing these logs, see [Flutter Test Logging](/docs/logging/#flutter-test).

## dart.observatoryLogFile
The path to a log file for communication between Dart Code and Observatory (the VM debugger). This is useful when trying to diagnose issues with debugging such as missed breakpoints. For more information on capturing these logs, see [Observatory Logging](/docs/logging/#observatory).

## dart.pubTestLogFile
The path to a log file for `pub run test` runs. This is useful when trying to diagnose issues with unit test executions. For more information on capturing these logs, see [Pub Test Logging](/docs/logging/#pub-test).
