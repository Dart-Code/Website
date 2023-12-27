---
title: Frequently Asked Questions
---

* TOC
{:toc}

<!-- TODO -->
<!-- TODO -->
<!-- TODO -->

## How do I perform a Restart of my Flutter app?

The [**Flutter: Hot Restart** command](/docs/debugging-commands/#flutter-hot-restart) is [bound to `Ctrl`+`F5`](/docs/key-bindings/) by default.

## Why can't Dart Code find my Dart/Flutter SDK?

Dart Code generally will try to find Dart and/or Flutter automatically, searching plces including:

- Paths in the `PATH` environment variable
- Paths in the `.packages` or `.dart_tool/package_config.json` files created by pub when running `pub get`
- The `dart.sdkPath` and `dart.flutterSdkPath` settings in VS Code
- A `.flutter` or `vendor/flutter` folder in your current project
- The `FLUTTER_ROOT` environment variable
- `~/snap/flutter/common/flutter` (on Linux)

Depending on how you launch VS Code it may not inherit the `PATH` variable from your terminal. For information on how best to set your `PATH` see [Configuring PATH and Environment Variables](/docs/configuring-path-and-environment-variables/).

**Note:** If Dart Code detects that you have a Flutter project open then it will prefer to use the version of the Dart SDK that is bundled in the Flutter SDK, otherwise it will prefer to use a version of Dart directly from your `PATH`.

## Where can I find a list of Key Bindings?

Much of Dart Code's functionality inherits key bindings from VS Code though we do also add some of our own. For a list of key bindings added by Dart Code or that we consider useful, see [the key binding docs](/docs/key-bindings/).

## How do I switch between multiple devices for Flutter development?

If you have multiple devices/simulators you can quickly switch them from the status bar. For more info, see [Quickly Switching Between Flutter Devices](/docs/quickly-switching-between-flutter-devices/) in the docs.

## How do I hide Flutter's Debug Mode Banner?

The Debug Mode Banner (previously Slow Mode Banner) can be toggled from the command palette. For more info, see [documentation for the **Flutter: Toggle Debug-Mode Banner** command](/docs/debugging-commands/#flutter-toggle-debug-mode-banner).
