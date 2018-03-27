---
title: Settings
---

Dart Code has a number of configurable settings that can be modified in your User Settings (`Ctrl`+`,` or `Cmd`+`,`) or Workspace Settings files.

* TOC
{:toc}

<!-- TODO: Add log settings -->
<!-- TODO: Add a validation script that compares master package.json to this list -->

# Window Scoped Settings

Window scoped settings must be applied in your User Settings or at the workspace level and will apply for all projects open in a window (for example, `dart.sdkPath` is used to launch an analyzer that is used for the whole window).

## dart.allowAnalytics

Whether to send analytics such as startup timings, frequency of use of features and analysis server crashes. Defaults to `true`.

## dart.closingLabels

Whether to show annotations against constructor, method invocations and lists that span multiple lines. Defaults to `true`.

## dart.checkForSdkUpdates

Whether to check you are using the latest version of the Dart SDK at startup. Defaults to `true`.

## dart.insertArgumentPlaceholders

Whether to insert argument placeholders during code completions. Defaults to `true`.

## dart.lineLength

The maximum length of a line of code. This is used by the document formatter. Defaults to `80`.

## dart.pubAdditionalArgs

Additional args to pass to `pub get` and `pub upgrade` commands (eg. `--packages-dir`).

## dart.runPubGetOnPubspecChanges

Whether to automatically run `pub get` whenever pubspec.yaml is saved. Defaults to `true`.

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

## dart.showLintNames

Whether to show the names of linter rules in the problems panel to make it easier to `// ignore:`. Defaults to `false`.

## dart.showTodos

Whether to show TODOs in the Problems list. Defaults to `true`.

# Custom Colors

Some colors in Dart Code can be customised using the `workbench.colourCustomizations` section in settings. Supported colors are:

## dart.closingLabels

The color of the "closing label" annotations against constructor, method invocations and lists that span multiple lines. If not supplied, the colour for `tab.inactiveForeground` will be used.