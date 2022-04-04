---
title: ""
---

## Introduction

The Dart and Flutter extensions extend [VS Code](https://code.visualstudio.com/) with support for the
[Dart](https://www.dartlang.org/) programming language and provides tools for
effectively editing, refactoring, running, and reloading [Flutter](https://flutter.dev/) mobile apps, and [AngularDart](https://angulardart.org) web apps.

## Installation

You must have [the VS Code Editor](https://code.visualstudio.com/) in order to install Dart Code. Click the buttons below to open the extension pages in VS Code. Installing the Flutter extension automatically installs the Dart extension.

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

If you have any problems with the links above you can also find the [Dart extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code) and [Flutter extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter) in the marketplace or by [searching within VS Code](https://code.visualstudio.com/docs/editor/extension-gallery#_search-for-an-extension).

## Features

- Edit and Debug Flutter mobile apps (launch using `F5` or the `Debug` menu)
- Edit and Debug Dart command line apps (launch using `F5` or the `Debug` menu)
- [Automatic hot reloads for Flutter](/docs/settings/#dartflutterhotreloadonsave)
- [Refactorings and Code fixes (lightbulb)](/docs/refactorings-and-code-fixes/)
- [Quickly switch between devices for Flutter](/docs/quickly-switching-between-flutter-devices/)
- [Flutter Doctor command](/docs/commands/#flutter-run-flutter-doctor)
- [Flutter Get Packages command](/docs/commands/#flutter-get-packages)
- [Flutter Upgrade Packages command](/docs/commands/#flutter-upgrade-packages)
- [Automatically gets packages when `pubspec.yaml` is saved](/docs/settings/#dartrunpubgetonpubspecchanges)
- [Automatically finds SDKs from `PATH`](/docs/configuring-path-and-environment-variables/)
- [Notification of new stable Dart SDK releases](/docs/settings/#dartcheckforsdkupdates)
- [Sort Members command](/docs/commands/#dart-sort-members)
- Support for debugging "just my code" or SDK/libraries too ([`dart.debugSdkLibraries`](/docs/settings/#dartdebugsdklibraries) and [`dart.debugExternalPackageLibraries`](/docs/settings/#dartdebugexternalpackagelibraries))
- [Prompts to get packages when out of date](/docs/settings/#dartprompttogetpackages)
- Syntax highlighting
- Code completion
- [Snippets](https://github.com/Dart-Code/Dart-Code/tree/master/snippets)
- Realtime errors/warnings/TODOs
- Documentation in hovers/tooltips
- Go to Definition
- Find References
- Rename refactoring
- Format document
- Support for format-on-save (`editor.formatOnSave`)
- Support for format-on-type (`editor.formatOnType`)
- Workspace symbol search
- Document symbol search
- [Organize Imports command](/docs/commands/#dart-organize-imports)
- [Pub Get Packages command](/docs/commands/#pub-get-packages)
- [Pub Upgrade Packages command](/docs/commands/#pub-upgrade-packages)
- [Type Hierarchy](/docs/commands/#dart-show-type-hierarchy)


## Extension Settings

A full list of settings is [available here](/docs/settings/).


## Frequently Asked Questions

A list of frequently asked questions is [available here](/faq/).


## Key Bindings

A list of useful key bindings is [available here](/docs/key-bindings/).


## Refactorings and Code Fixes

A full list of supported refactors is [available here](/docs/refactorings-and-code-fixes/).


## Analytics

This extension reports some analytics such as:

- Extension load and analysis times
- Version numbers for the Dart/Flutter extensions and SDKs
- The values of some settings (such as Flutter UI Guidelines and Format-on-Save)
- Frequency of use of features like Hot Reload and Hot Restart

Reporting can be disabled via VS Code's standard **Telemetry: Telemetry Level** setting.


## Release Notes

For full release notes, see [the changelog](/releases/).
