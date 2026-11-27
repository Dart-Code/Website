---
title: ""
---

The Dart and Flutter extensions add support for the [Dart](https://dart.dev/) programming language and [Flutter](https://flutter.dev/) apps (mobile, web, and desktop) to [Visual Studio Code](https://code.visualstudio.com/), including rich editing, refactoring, debugging, testing, and tooling integration.

<div class="buttons">
	<a href="vscode:extension/Dart-Code.dart-code" class="download-box">
		<span class="logo dart-logo"></span>
		<span class="name">Dart</span>
		Dart language support and debugger for VS Code.
	</a>
	<a href="vscode:extension/Dart-Code.flutter" class="download-box">
		<span class="logo flutter-logo"></span>
		<span class="name">Flutter</span>
		Flutter support and debugger for VS Code.
	</a>
</div>

## Getting Started

1. Install the **Dart** or **Flutter** extension using the buttons above (installing Flutter automatically installs Dart). You can also install them from the Visual Studio Code Marketplace ([Dart](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code), [Flutter](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)), Open VSX ([Dart](https://open-vsx.org/extension/Dart-Code/dart-code), [Flutter](https://open-vsx.org/extension/Dart-Code/flutter)), or by searching in the VS Code Extensions view.
2. Install the [Dart SDK](https://dart.dev/get-dart) and make sure it is on your `PATH` (for Flutter projects, the [Flutter SDK](https://flutter.dev/) includes Dart and can be downloaded automatically by the extension if not already installed).
3. Open a folder containing a Dart or Flutter project (or run **Dart: Create New Project** / **Flutter: Create New Project** from the Command Palette) and press `F5` to run and debug.

## Features

- **Editing & Navigation** — Syntax and semantic highlighting, code completion, hover documentation, real-time diagnostics, snippets, Go to Definition, Find References, Call/Type Hierarchy, closing labels, and Flutter UI guides.
- **Refactoring & Formatting** — Quick fixes, refactorings (rename, extract method/widget, wrap/remove widget, organize imports, sort members, fix all), and formatting via `dart format` (including format-on-save and format-on-type).
- **Debugging & Hot Reload** — Launch and attach debugging for Dart and Flutter apps with breakpoints, expression evaluation, hot reload and hot restart (including hot reload on save), and configurable "Just My Code" debugging (with options to step into packages or SDK code).
- **Flutter Tools & Devices** — Quick device and emulator switching from the status bar, Flutter sidebar, Property Editor, Widget Preview, and `flutter doctor` integration.
- **Testing** — Integrated with VS Code's Test Explorer to discover, run, debug, and view results and coverage for Dart and Flutter tests.
- **Packages & SDK Management** — Automatic Dart and Flutter SDK discovery from `PATH`, quick SDK switching, project creation, Pub package commands, automatic `pub get` on `pubspec.yaml` changes, and a **Dependencies** view in the Explorer.
- **DevTools & AI Tooling** — Built-in [DevTools](https://docs.flutter.dev/tools/devtools/overview) integration (Widget Inspector, performance, CPU profiler, memory, network, and logging) and AI agent support via the Dart SDK [MCP server](https://dart.dev/tools/mcp-server) and VS Code language model tools.

## Documentation

- [Documentation Overview](/docs/)
- [Extension Settings](/docs/settings/)
- [Commands](/docs/commands/) & [Key Bindings](/docs/key-bindings/)
- [Refactorings & Code Fixes](/docs/refactorings-and-code-fixes/)
- [Flutter VS Code Documentation](https://docs.flutter.dev/tools/vs-code)
- [SDK Version Compatibility](/sdk-version-compatibility/)
- [Frequently Asked Questions](/faq/)
- [Release Notes / Changelog](/releases/)

## Feedback & Contributing

- **Issues & Feature Requests**: Report bugs or request features for both the Dart and Flutter extensions on [GitHub Issues](https://github.com/Dart-Code/Dart-Code/issues/new/choose). When reporting a bug, attaching a log file ([instructions](/docs/logging/)) is often very helpful.
- **Community**: Ask questions or chat in the [Dart-Code Discord](https://discord.gg/xSTPEqm).
- **Contributing**: See [CONTRIBUTING.md](https://github.com/Dart-Code/Dart-Code/blob/master/CONTRIBUTING.md) for instructions on building, running, and testing the extension locally.

## Telemetry

The extension collects basic anonymous usage analytics — such as extension, editor, and SDK versions, platform, certain commands and debug session types, and a few feature settings — to help guide development.

A complete list of collected events and properties is available in the [analytics documentation](/docs/analytics/) and [`telemetry.json`](https://github.com/Dart-Code/Dart-Code/blob/master/telemetry.json). Reporting can be disabled via VS Code's **Telemetry: Telemetry Level** setting (and also respects `DO_NOT_TRACK=1` and Dart/Flutter tooling telemetry opt-out).
