---
title: ""
---

<aside markdown="1">
[![Gitter Chat](https://img.shields.io/badge/chat-online-blue.svg)](https://gitter.im/dart-code/Dart-Code) [![Follow on Twitter](https://img.shields.io/badge/twitter-dartcode-blue.svg)](https://twitter.com/DartCode) [![Contribute to Dart Code](https://img.shields.io/badge/help-contribute-551A8B.svg)](https://github.com/Dart-Code/Dart-Code/blob/master/CONTRIBUTING.md) [![Linux &amp; Mac build status](https://img.shields.io/travis/Dart-Code/Dart-Code/master.svg?label=mac+%26+linux)](https://travis-ci.org/Dart-Code/Dart-Code) [![Windows build status](https://img.shields.io/appveyor/ci/DanTup/Dart-Code/master.svg?label=windows&amp;logoWidth=-1)](https://ci.appveyor.com/project/DanTup/dart-code)
</aside>

## Introduction

The Dart and Flutter extensions extend [VS Code](https://code.visualstudio.com/) with support for the
[Dart](https://www.dartlang.org/) programming language and provides tools for
effectively editing, refactoring, running, and reloading [Flutter](https://flutter.io/) mobile apps, and [AngularDart](https://angulardart.org) web apps.

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

- Edit and Debug Flutter mobile apps
- Edit and Debug Dart command line apps
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
- Support for debugging "just my code" or SDK/libraries too ([`dart.debugSdkLibraries`](/docs/settings/#dartdebugsdklibraries) and [`dart.debugExternalLibraries`](/docs/settings/#dartdebugexternallibraries))
- [Prompts to get packages when out of date](/docs/settings/#dartprompttogetpackages)
- Syntax highlighting
- Code completion
- Snippets
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
- [Organize Directives command](/docs/commands/#dart-organize-directives)
- [Automatically Organize Directives on save](/docs/settings/#dartorganizedirectivesonsave)
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
- Whether you have disabled some settings (such as showing TODOs in Problems Window or Closing Labels)
- Frequency of use of features like Hot Reload, Hot Restart and Open Observatory
- Crashes in the Dart analysis server
- Platform and Dart/Flutter SDK versions

Reporting can be disabled via the [`dart.allowAnalytics` setting](/docs/settings/#dartallowanalytics).


## Release Notes

For full release notes, see [the changelog](/releases/).
