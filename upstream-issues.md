---
title: Upstream Issues
body-class: upstream-issues
---

Many feature requests for Dart-Code require some implementation in upstream repositories such as VS Code or LSP. Some of these projects use the count of 👍's as a way to gauge demand (and in the case of VS Code require a certain number to avoid being closed). Below are a list of some features and links to upstream issues they depend on. Please consider adding 👍's on the upstream issues for any features you'd like to see in Dart-Code!

New items are always added to the top of the list.

## Improve APIs for Debug Console completion
github.com/microsoft/vscode [#278113](https://github.com/microsoft/vscode/issues/278113) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/278113?label=%20), [#278108](https://github.com/microsoft/vscode/issues/278108) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/278108?label=%20), [#278109](https://github.com/microsoft/vscode/issues/278109) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/278109?label=%20), [#278115](https://github.com/microsoft/vscode/issues/278115) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/278115?label=%20)

We don't yet support completion in the Debug Console, but there are various bugs/quirks that make it awkward to use. Implementing completion would be of more value if these issues were addressed.


## Unable to copy/paste with Cmd+C and Cmd+V in embedded DevTools windows on macOS
[github.com/microsoft/vscode#129178](https://github.com/microsoft/vscode/issues/129178) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/129178?label=%20)

Using Cmd+C/Cmd+V for copy/paste in embedded DevTools windows doesn't work because some of the events appear to be dropped.


## Debugger shows "Paused on Entry" for continued threads
[github.com/microsoft/vscode#280933](https://github.com/microsoft/vscode/issues/280933) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/280933?label=%20)

When multiple isolates are used, some isolates incorrectly show "Paused on Entry" in the UI even though they were only temporarily paused at entry while breakpoints were configured.


## Allow Grouping of edits in Fix All in Workspace by default
[github.com/microsoft/vscode#207580](https://github.com/microsoft/vscode/issues/207580) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/207580?label=%20)

An upcoming feature "Fix All in Workspace" allows previewing changes before applying them. Dart provides groups for these edits but by default VS Code does not show them unless you use the context menu to enable grouping. It would be better if we could tell VS Code to group by default.


## Support pre-ticking edits when previewing Fix All in Workspace
[github.com/microsoft/vscode#207578](https://github.com/microsoft/vscode/issues/207578) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/207578?label=%20)

An upcoming feature "Fix All in Workspace" allows previewing changes before applying them. By default, VS Code has all changes unticked and requires manually ticking each branch. It would be better if we could tell VS Code to pre-tick all changes.


## Editor Insets
[github.com/microsoft/vscode#85682](https://github.com/microsoft/vscode/issues/85682) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/85682?label=%20)

Editor Insets allow inserting content between lines in the editor. This might allow improved DartDoc previews, for example showing images and/or videos directly in the editor that are included in the markdown content.


## A separate TODOs pane to keep TODO comments out of the Problems list
[github.com/microsoft/vscode#162455](https://github.com/microsoft/vscode/issues/162455) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/162455?label=%20)

Currently, TODO comments show up in the Problems list because there's nowhere else to show them. In projects with lots of TODOs (perhaps from other developers) this makes the Problems list hard to use. The only option is to disable TODOs (`"dart.showTodos": false`). It would be better if they could be shown seperately instead.


## Better Rendering for Flutter UI Guides
[github.com/microsoft/vscode#73780](https://github.com/microsoft/vscode/issues/73780) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/73780?label=%20)

The current implementation of Flutter UI Guides has many display issues because VS Code currently has no good APIs for drawing lines between code.


## Bring Imports with Copy/Pasted Code
[github.com/microsoft/language-server-protocol#2072](https://github.com/microsoft/language-server-protocol/issues/2072) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/language-server-protocol/2072?label=%20)

This would allow copy/pasting code between files without having another step to add the relevant `import`s to make the code valid.


## Add Command to Outline Nodes
[github.com/microsoft/vscode#49925](https://github.com/microsoft/vscode/issues/49925) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/49925?label=%20)

This would allow adding some actions (such as "Move to New File") to the Outline tree.


## Support Refactors that Require User Input
[github.com/microsoft/language-server-protocol#1164](https://github.com/microsoft/language-server-protocol/issues/1164) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/language-server-protocol/1164?label=%20)

Currently LSP has no support for servers to ask for user input (for example, for input when refactoring) and requires a lot of custom messages.


## Allow Docking Documentation in a Seperate Panel
[github.com/microsoft/vscode#149270](https://github.com/microsoft/vscode/issues/149270) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/149270?label=%20)

Flutter's very detailed dartdocs can often result in hovers obscuring the code you're trying to read. Being able to doc the documentation for hovers/code completion would avoid this.


## Signature Help Popup is Not Syntax Highlighted
[github.com/microsoft/vscode#55044](https://github.com/microsoft/vscode/issues/55044) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/55044?label=%20)

Signature Help (Parameter Hints) can be quite long in Flutter code and currently are rendered all white, with no ability to syntax highlight.


## Improve Support for Commit Characters in Code Completion
[github.com/microsoft/vscode#42544](https://github.com/microsoft/vscode/issues/42544) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/42544?label=%20)

It should be possible to use `(` to complete function calls and automatically insert parens but currently this does not play nicely with inserting argument placeholders.


## Allow Prominent Progress Notifications from Debug Adapters
[github.com/microsoft/vscode#101791](https://github.com/microsoft/vscode/issues/101791) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/101791?label=%20)

Showing large progress notifications for actions like Hot Restart currently requires custom messages instead of standard DAP progress messages.


## Support Palettes of Named Colors in Color Picker
[github.com/microsoft/vscode#140899](https://github.com/microsoft/vscode/issues/140899) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/140899?label=%20)

Using the editor color picker currently converts any named Flutter colors to RGB values. Being able to provide a palette of colors to the color picker would make it easier to stick to a define theme of named colors.


## Support Custom Types of Inlay Hints
[github.com/microsoft/vscode#151920](https://github.com/microsoft/vscode/issues/151920) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/151920?label=%20)

This would allow Closing Labels to be moved to a standard VS Code/LSP API instead of relying on custom messages.


## Markdown in Diagnostic Descriptions
[github.com/microsoft/vscode#54272](https://github.com/microsoft/vscode/issues/54272) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/54272?label=%20)

This would allow improved formatting of diagnostic message ([for example lint examples](https://github.com/Dart-Code/Dart-Code/issues/3841#issuecomment-1048677129)).


## Allow Stepping by Line While Debugging
[github.com/microsoft/vscode#102236](https://github.com/microsoft/vscode/issues/102236) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/102236?label=%20)

Although the debug adapter protocol has support for stepping by line or instruction, VS Code does not expose any UI to select this.


## Syntax Highlighting in Code Completion Details
[github.com/microsoft/language-server-protocol#1115](https://github.com/microsoft/language-server-protocol/issues/1115) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/language-server-protocol/1115?label=%20)

A lack of guidance about the use of `detail`/`documentation` makes it difficult to provide [syntax-highlighted details](https://github.com/Dart-Code/Dart-Code/issues/2792) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/Dart-Code/Dart-Code/2792?label=%20) on code completion items.


## Code Folding Hides Closing Braces
[github.com/microsoft/vscode#50840](https://github.com/microsoft/vscode/issues/50840) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/50840?label=%20)

VS Code's code folding currently only suports hiding entire lines, meaning closing braces disappear inside the fold instead of showing as `void method { ... }`.


## Support Searching "ClassName.fieldName" in Workspace Symbols
[github.com/microsoft/vscode#98125](https://github.com/microsoft/vscode/issues/98125) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/98125?label=%20)

Searching for `ClassName.fieldName` does not currently work because VS Code only searches the final `label` (`"fieldName"`) and not the `containerName` (`"className"`).


## Show "package:foo/foo.dart" in Editor Tab Labels
[github.com/microsoft/vscode#41909](https://github.com/microsoft/vscode/issues/41909) ![GitHub issue status](https://img.shields.io/github/issues/detail/state/microsoft/vscode/41909?label=%20)

This would make it easier to tell which packages open files belong to.
