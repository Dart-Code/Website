---
title: Tasks
---

<!-- TODO: Add a validation script that compares master package.json to this list -->

Dart Code adds a number of tasks under the **Run Task** command in the command palette (`Ctrl`+`Shift`+`P` or `Cmd`+`Shift`+`P`).

These tasks can also be copied to `tasks.json` to allow customisation of arguments by clicking the cog icon next to the task. Tasks can be referenced in a `launch.json` launch config (for example in the `preLaunchTask` field to run a task prior to launching an app). Tasks can also be configured to run at folder open using the [`folderOpen` field in tasks.json](https://code.visualstudio.com/docs/editor/tasks-appendix).

The **Run Build Task** command in VS Code (`Ctrl`+`Shift`+`B` or `Cmd`+`Shift`+`B`) can be used to quickly execute a task designated as a build task.

* TOC
{:toc}

## pub get, pub upgrade, flutter pub get, flutter pub upgrade, dartdoc

These tasks are the same as using the equivilent named commands and just execute pub/flutter to fetch/upgrade packages.

## flutter build

Build tasks are available for Flutter projects to build common app types (apk, ios, web). These run the `flutter build [type]` and can be further customised by copying them to `tasks.json` using the cog icon.

## build_runner

[build_runner](https://pub.dev/packages/build_runner) provides a way of generating files using Dart code, outside of tools like `pub`. Unlike `pub serve/build`, files are always generated directly on disk and rebuilds are incremental.

The build_runner tasks appear if your project(s) reference the [build_runner package](https://pub.dev/packages/build_runner) in `pubspec.yaml`. Supported commands are `watch`, `build`, `serve` and `test`. For more information on each of these commands, see the [build_runner documentation](https://pub.dev/packages/build_runner#built-in-commands).
