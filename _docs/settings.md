---
title: Settings
---

Dart Code has a number of configurable settings that can be modified in your [User Settings or Workspace Settings](https://code.visualstudio.com/docs/getstarted/settings) files.

* TOC
{:toc}

<!-- TODO: Add a validation script that compares master package.json to this list -->

# Window Scoped Settings

Window scoped settings must be applied in your User Settings or at the workspace level and will apply for all projects open in a window (for example, `dart.sdkPath` is used to launch an analyzer that is used for the whole window).

## dart.allowAnalytics

Whether to send analytics such as startup timings, frequency of use of features and analysis server crashes. Defaults to `true`.

## dart.analyzeAngularTemplates

Whether to enable analysis for AngularDart templates (requires the [angular_analyzer_plugin](https://github.com/dart-lang/angular_analyzer_plugin)).

## dart.closingLabels

Whether to show annotations against constructor, method invocations and lists that span multiple lines. Defaults to `true`.

## dart.checkForSdkUpdates

Whether to check you are using the latest version of the Dart SDK at startup. Defaults to `true`.

## dart.doNotFormat

An array of glob patterns that should be excluded for formatting. The pattern is matched against the absolute path of the file. Use `[ "**/test/**" ]` to skip formatting for all test folders.

## dart.flutterCreateOrganization

Used in Java package names and as prefix in the iOS bundle identifier.

## dart.flutterCreateIOSLanguage

The programming language to use for IOS apps (`objc` or `swift`).

## dart.flutterCreateAndroidLanguage

The programming language to use for Android apps (`java` or `kotlin`).

## dart.flutterSelectDeviceWhenConnected

Whether to set newly connected devices as the current device in Flutter projects.

## dart.insertArgumentPlaceholders

Whether to insert argument placeholders during code completions. Defaults to `true`.

## dart.lineLength

The maximum length of a line of code. This is used by the document formatter. Defaults to `80`.

## dart.normalizeWindowsDriveLetters

Whether to force all drive letters in paths to uppercase. This should reduce spurious errors from tools that are accidentally case-sensitive with Windows paths. Defaults to `true`.

## dart.pubAdditionalArgs

Additional args to pass to `pub get` and `pub upgrade` commands (eg. `--packages-dir`).

## dart.runPubGetOnPubspecChanges

Whether to automatically run `pub get` whenever pubspec.yaml is saved. Defaults to `true`.

## dart.openTestView

An array to control when the test runner will automatically be displayed. Defaults to `["testRunStart"]`.

## dart.promptToGetPackages

Whether to prompt to get packages when opening a project with out of date packages. Defaults to `true`.

## dart.promptToUpgradeWorkspace

Whether to prompt to upgrade folders to Workspace Folders when projects are detected in sub-folders. Defaults to `true`.

## dart.vmAdditionalArgs

Additional args to pass to the Dart VM when running/debugging apps.

# Resource Scoped Settings

Resource scoped settings can be set in individual workspace folder settings and apply to resources within that workspace folder (for example each workspace folder could have its own `dart.lineLength`).

## dart.debugSdkLibraries

Whether SDK libraries should be marked as debuggable. Defaults to `false`.

## dart.debugExternalLibraries

Whether libraries should be marked as debuggable. Defaults to `false`.

## dart.evaluateGettersInDebugViews

Whether to evaluate getters in order to display them in debug views (such as the Variables, Watch and Hovers views). Defaults to `true`.

## dart.flutterHotReloadOnSave

Whether to automatically send a 'hot reload' request during a Flutter debug session when saving files. Defaults to `true`.

## dart.flutterSdkPath

Override the detected Flutter SDK to allow you to run from another location.

## dart.sdkPath

If the Dart SDK is not automatically found on your machine from your `PATH` you can enter the path to it here.

## dart.sdkPaths

If you often switch between multiple Dart SDKs, setting this option to an array of Dart SDK folders or folders that contain multiple Dart SDKs in sub-folders will allow fast switching by clicking the Dart SDK version in the status bar.

## dart.flutterSdkPaths

If you often switch between multiple Flutter SDKs/channels, setting this option to an array of Flutter SDK folders or folders that contain multiple Flutter SDKs in sub-folders will allow fast switching by clicking the Flutter SDK version in the status bar.

## dart.organizeDirectivesOnSave

Whether to automatically execute [Organize Directives](/docs/commands/#dart-organize-directives) when saving files. Defaults to `false`.

## dart.showTodos

Whether to show TODOs in the Problems list. Defaults to `true`.

## dart.showIgnoreQuickFixes

Whether to show quick fixes for ignoring hints and lints. Defaults to `false`.

# Custom Colors

Some colors in Dart Code can be customised using the `workbench.colourCustomizations` section in settings. Supported colors are:

## dart.closingLabels

The color of the "closing label" annotations against constructor, method invocations and lists that span multiple lines. If not supplied, the colour for `tab.inactiveForeground` will be used.

# Logging

There are several settings for enabling logging of various services used by Dart Code. For more information about setting these up and troubleshooting please see [Enabling Logging](/docs/logging/). Each of these settings takes a file path and the containing folder must have already been created.

## dart.extensionLogFile

This enables a low-traffic log file for basic extension and editor issues. For more information on capturing logs, see [Extension Logging](/docs/logging/#extension).

## dart.analyzerInstrumentationLogFile

This enables very detailed logging in the analysis server that may be useful when trying to diagnose analysis server issues. For more information on capturing logs, see [Analyzer Instrumentation Logging](/docs/logging/#analyzer-instrumentation).

## dart.analyzerLogFile

This enables logging of communication between Dart Code and the analysis server. Messages are truncated after a few thousand characters but this is useful to when trying to understand how Dart Code is interacting with the analysis server. For more information on capturing logs, see [Analyzer Logging](/docs/logging/#analyzer).

## dart.flutterDaemonLogFile

This enables logging of the `flutter daemon` communication which is the service that provides information about connected devices that is used in the status bar. For more information on capturing logs, see [Flutter Daemon Logging](/docs/logging/#flutter-daemon).

## dart.flutterRunLogFile

This enables logging of `flutter run` which is used to launch Flutter applications from VS Code. This is useful when trying to diagnose issues with applications launching (or failing to) on simulators and devices. For more information on capturing logs, see [Flutter Run Logging](/docs/logging/#flutter-run).

## dart.flutterTestLogFile

This enables logging of `flutter test` which is used to run unit tests from VS Code. This is useful when trying to diagnose issues with unit test executions. For more information on capturing logs, see [Flutter Test Logging](/docs/logging/#flutter-test).

## dart.pubTestLogFile

This enables logging of `pub run test` runs. This is useful when trying to diagnose issues with unit test executions. For more information on capturing logs, see [Pub Test Logging](/docs/logging/#pub-test).

## dart.observatoryLogFile

This enables logging of communication between Dart Code and Observatory (the VM debugger). This is useful when trying to diagnose issues with debugging such as missed breakpoints. For more information on capturing logs, see [Observatory Logging](/docs/logging/#observatory).

<!-- TODO: Other daiagnotics like analyzer observatory, etc. -->
