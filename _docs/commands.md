---
title: Commands
---

<!-- TODO: Add a validation script that compares master package.json to this list -->

Dart Code adds a number of commands to the command palette (`Ctrl`+`Shift`+`P` or `Cmd`+`Shift`+`P`).

* TOC
{:toc}

## Adding Key Bindings for Commands

For information on key bindings, including how to add your own, see [Key Bindings](/docs/key-bindings/)

## Dart: Capture Logs

This command simplifies capturing logs for diagnosing issues. See the [/docs/logging/](logging) page for more info.

## Dart: Complete Statement

This command will attempt to finish the current line you’re editing by adding things like closing brackets and semicolons before moving the cursor to the next line.

## Dart: New Project

This command simplifies creation of new Dart projects by using [stagehand](https://pub.dev/packages/stagehand). You will be asked to select a project type, enter a name for your project and pick a folder to create it in. The folder will be created and opened and all required files created automatically. A notification will appear once the creation process is complete and your project is ready to run.

## Dart: Change SDK

If you have configured the [`dart.sdkPaths` setting](/docs/settings/#dartsdkpaths) then this command will allow you to quickly switch between Dart SDKs. See [Quickly Switching Between SDK Versions](/docs/quickly-switching-between-sdk-versions/) for more info.

## Dart: Go to Super Class/Method

This command goes to the `super` implementation of the method or class under the caret.

## Dart: Go to Test/Implementation File

This command jumps between a file and its corresponding test file in the editor. It will map `lib/foo.dart` to `test/foo_test.dart` and back. The command is only available when the current file can be mapped and the target file exists.

## Dart: Show Type Hierarchy

This command displays the hierarchy for the current types in a pick list.

## Dart: Rerun Last Debug Session

This command will re-run the last Dart debug session that has run. This can be useful if you ran a specific test from the Code Lens links or test tree and want to quickly re-run it without navigating back there.

## Dart: Run Test At Cursor / Debug Test At Cursor

If the cursor is within a test method, these commands will execute the test (the same as clicking the **Run** or **Debug** Code Lens link).

## Dart: Sort Members

This command sort all of the directives, unit and class members in the current Dart file.

## Dart: Write Recommended Settings

This command writes all [recommended settings](/docs/recommended-settings/) to your VS Code user settings for the Dart language.

## Pub: Get Packages

This command fetches Pub packages listed in your `pubspec.yaml` and their dependencies for the current project. If invoked in a Flutter project this command will instead run `Flutter: Get Packages`.

For more information on using packages [see the Dart website](https://www.dartlang.org/tools/pub/get-started).

## Pub: Upgrade Packages

This command upgrades Pub packages to the latest version allowed by the constraints in your `pubspec.yaml` for the current project. If invoked in a Flutter project this command will instead run `Flutter: Upgrade Packages`.

For more information on using packages [see the Dart website](https://www.dartlang.org/tools/pub/get-started).

## Flutter: New Project

This command simplifies the creation of new Flutter projects. You will be asked for a name for your project and a folder to create it in. The folder will be created and opened automatically and all required files created automatically. A notification will appear once the creation process is complete and your project is ready to run.

For more information on getting started with your first app, see the [Get Started: Test Drive](https://flutter.io/get-started/test-drive/#vscode) section of the Flutter website.

## Flutter: Open Widget Sample

This commands provides easy access to all Flutter widget sample applications. You will be shown a list of all available samples, and selecting one will open the sample in VS Code ready for you to run by pressing `F5`.

## Flutter: Run Flutter Doctor

This commands runs `flutter doctor` and shows the results in the `Output` pane.

For more information on using packages [see the Flutter website](https://flutter.io/using-packages/).

## Flutter: Clean Project

This commands runs `flutter clean` to remove any existing build output for the current project.

## Flutter: Select Device

If you have multiple devices or simulators connected then this command will allow you to quickly switch between Dart SDKs. See [Quickly Switching Between Flutter Devices](/docs/quickly-switching-between-flutter-devices/) for more info.

## Flutter: Change SDK

If you have configured the [`dart.flutterSdkPaths` setting](/docs/settings/#dartfluttersdkpaths) then this command will allow you to quick switch between Flutter SDKs. See [Quickly Switching Between SDK Versions](/docs/quickly-switching-between-sdk-versions/) for more info.

## Flutter: Get Packages

This command fetches Flutter packages listed in your `pubspec.yaml` and their dependencies for the current project. If invoked in a standard Dart project this command will instead run `Pub: Get Packages`.

For more information on using packages [see the Flutter website](https://flutter.io/using-packages/).

## Flutter: Upgrade Packages

This command upgrades Flutter packages to the latest version allowed by the constraints in your `pubspec.yaml` for the current project. If invoked in a standard Dart project this command will instead run `Pub: Upgrade Packages`.
