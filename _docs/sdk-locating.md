---
title: How Dart-Code locates a Dart/Flutter SDK
---

The Dart extension searches for an SDK to use upon activating. If your workspace does not contain any Flutter packages, it will look for a Dart SDK. If your workspace does contain Flutter packages, it will look for a Flutter SDK and then use the Dart SDK that is bundled within that Flutter SDK.

## Finding a Dart SDK

The search order for a Dart SDK is:

1. If in a Flutter workspace, the `bin/cache/dart-sdk` folder from the located Flutter SDK (see below)
2. The value of the `dart.sdkPath` setting at the workspace or global level
  An explicitly configured Dart SDK is always the highest priority after accounting for Flutter workspaces
3. All folders on the `PATH` environment variable (assuming they point to the `bin/` folder of an SDK)
  See [this page](/docs/configuring-path-and-environment-variables/) for more info on adding to `PATH`
4. If not in a Flutter workspace, but we located a Flutter SDK, the `bin/cache/dart-sdk` folder from that Flutter SDK
  A Flutter SDK will only be used in a non-Flutter workspace for it's Dart SDK if no better options of standalone Dart SDKs are found. If you want to always use the Dart SDK from your Flutter SDK, you can explicitly add it's `bin/cache/dart-sdk/bin` folder to `PATH` before any other Dart SDKs.


## Finding a Flutter SDK

The search order for a Flutter SDK is:

1. The value of the `dart.flutterSdkPath` setting at the workspace or global level
  An explicitly configured Flutter SDK is always the highest priority
2. The path that `package:flutter` resolves to according to the `.dart_tool/package_config.json` file for the first found Flutter package
3. A folder named `.flutter/` in the first found Flutter package
4. A folder named `vendor/flutter` in the first found Flutter package
5. All folders on the `PATH` environment variable (assuming they point to the `bin/` folder of an SDK)
  See [this page](/docs/configuring-path-and-environment-variables/) for more info on adding to `PATH`
6. Some platform-specific defaults
  For example `~/snap/flutter/common/flutter` or `/opt/flutter`

