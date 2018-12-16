---
title: Commands
---

<!-- TODO: Add a validation script that compares master package.json to this list -->

Dart Code adds a number of commands to the command palette (`Ctrl`+`Shift`+`P` or `Cmd`+`Shift`+`P`).

* TOC
{:toc}

## Adding Key Bindings for Commands

For information on key bindings, including how to add your own, see [Key Bindings](/docs/key-bindings/)

## Dart: Change SDK

If you have configured the [`dart.sdkPaths` setting](/docs/settings/#dartsdkpaths) then this command will allow you to quickly switch between Dart SDKs. See [Quickly Switching Between SDK Versions](/docs/quickly-switching-between-sdk-versions/) for more info.

## Dart: Organize Imports

This command removes unused imports and sorts directives in the current Dart file according to [the Dart Style Guide](https://www.dartlang.org/guides/language/effective-dart/style).

## Dart: Go to Super Method

This command goes to the `super` implementation of the method under the caret.

## Dart: Show Type Hierarchy

This commands display the hierarchy for the current types in a pick list.

## Dart: Sort Members

This command sort all of the directives, unit and class members in the current Dart file.

## Pub: Get Packages

This command fetches Pub packages listed in your `pubspec.yaml` and their dependencies for the current project. If invoked in a Flutter project this command will instead run `Flutter: Get Packages`.

For more information on using packages [see the Dart website](https://www.dartlang.org/tools/pub/get-started).

## Pub: Upgrade Packages

This command upgrades Pub packages to the latest version allowed by the constraints in your `pubspec.yaml` for the current project. If invoked in a Flutter project this command will instead run `Flutter: Upgrade Packages`.

For more information on using packages [see the Dart website](https://www.dartlang.org/tools/pub/get-started).

## Flutter: New Project

This command simplifies creation of new Flutter projects. You will be asked for a name for your project and a folder to create it in. The folder will be created and opened automatically and all required files created automatically. A notification will appear once the creation process is complete and your project is ready to run.

For more information on getting started with your first app, see the [Get Started: Test Drive](https://flutter.io/get-started/test-drive/#vscode) section of the Flutter website.

## Flutter: Run Flutter Doctor

This commands runs `flutter doctor` and shows the results in the `Output` pane.

For more information on using packages [see the Flutter website](https://flutter.io/using-packages/).

## Flutter: Select Device

If you have multiple devices or simulators connected then this command will allow you to quickly switch between Dart SDKs. See [Quickly Switching Between Flutter Devices](/docs/quickly-switching-between-flutter-devices/) for more info.

## Flutter: Change SDK

If you have configured the [`dart.flutterSdkPaths` setting](/docs/settings/#dartfluttersdkpaths) then this command will allow you to quick switch between Flutter SDKs. See [Quickly Switching Between SDK Versions](/docs/quickly-switching-between-sdk-versions/) for more info.

## Flutter: Get Packages

This command fetches Flutter packages listed in your `pubspec.yaml` and their dependencies for the current project. If invoked in a standard Dart project this command will instead run `Pub: Get Packages`.

For more information on using packages [see the Flutter website](https://flutter.io/using-packages/).

## Flutter: Upgrade Packages

This command upgrades Flutter packages to the latest version allowed by the constraints in your `pubspec.yaml` for the current project. If invoked in a standard Dart project this command will instead run `Pub: Upgrade Packages`.
