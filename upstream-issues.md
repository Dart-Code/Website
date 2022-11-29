---
title: Upstream Issues
body-class: upstream-issues
---

Many feature requests for Dart-Code require some implementation in upstream repositories such as VS Code or LSP. Some of these projects use the count of 👍's as a way to gauge demand (and in the case of VS Code require a certain number to avoid being closed). Below are a list of some features and links to upstream issues they depend on. Please consider adding 👍's on the upstream issues for any features you'd like to see in Dart-Code!

New items are always added to the top of the list.


## Tooltips on Type Hierarchy tree nodes

[github.com/microsoft/vscode#165840](https://github.com/microsoft/vscode/issues/165840)

The upcoming Type Hierarchy feature shows limited information about types in the tree. It would be useful to show additional information such as the package a type is from, or the relationship between the nodes (`extends`, `implements`, `with`, `on`) but currently tooltips cannot be customised and just repeat the node label.


## A separate TODOs pane to keep TODO comments out of the Problems list
[github.com/microsoft/vscode#162455](https://github.com/microsoft/vscode/issues/162455)

Currently, TODO comments show up in the Problems list because there's nowhere else to show them. In projects with lots of TODOs (perhaps from other developers) this makes the Problems list hard to use. The only option is to disable TODOs (`"dart.showTodos": false`). It would be better if they could be shown seperately instead.


## Better Rendering for Flutter UI Guides
[github.com/microsoft/vscode#73780](https://github.com/microsoft/vscode/issues/73780)

The current implementation of Flutter UI Guides has many display issues because VS Code currently has no good APIs for drawing lines between code.


## Bring Imports with Copy/Pasted Code
[github.com/microsoft/vscode#30066](https://github.com/microsoft/vscode/issues/30066)

This would allow copy/pasting code between files without having another step to add the relevant `import`s to make the code valid.


## Add Command to Outline Nodes
[github.com/microsoft/vscode#49925](https://github.com/microsoft/vscode/issues/49925)

This would allow adding some actions (such as "Move to New File") to the Outline tree.


## Support Refactors that Require User Input
[github.com/microsoft/language-server-protocol#1164](https://github.com/microsoft/language-server-protocol/issues/1164)

Currently LSP has no support for servers to ask for user input (for example, for input when refactoring) and requires a lot of custom messages.


## Automatically Set PATH in Terminals to Match the Current SDK
[github.com/microsoft/vscode#99878](https://github.com/microsoft/vscode/issues/99878)

It should be possible to set the `PATH` env in the built-in terminal to match the Dart/Flutter SDK selected in VS Code, but currently VS Code's support for setting `PATH` does not work correctly on macOS.


## Allow Docking Documentation in a Seperate Panel
[github.com/microsoft/vscode#149270](https://github.com/microsoft/vscode/issues/149270)

Flutter's very detailed dartdocs can often result in hovers obscuring the code you're trying to read. Being able to doc the documentation for hovers/code completion would avoid this.


## Improve Handling of Save All for Triggering Hot Reloads
[github.com/microsoft/vscode#86087](https://github.com/microsoft/vscode/issues/86087)

VS Code does not currently expose a Save All event, so any events that should run after save (such as hot reload) need to perform their own debouncing, which introduces a delay when saving a single file.


## Diagnostics Appear at the Very Bottom of Long Srollable Hovers
[github.com/microsoft/vscode#73120](https://github.com/microsoft/vscode/issues/73120)

When hovering over some squiggled code to read the diagnostic message, you may need to scroll down past a large amount of documentation because errors are rendered at the very bottom and not always visible.


## Signature Help Popup is Not Syntax Highlighted
[github.com/microsoft/vscode#55044](https://github.com/microsoft/vscode/issues/55044)

Signature Help (Parameter Hints) can be quite long in Flutter code and currently are rendered all white, with no ability to syntax highlight.


## Improve Support for Commit Characters in Code Completion
[github.com/microsoft/vscode#42544](https://github.com/microsoft/vscode/issues/42544)

It should be possible to use `(` to complete function calls and automatically insert parens but currently this does not play nicely with inserting argument placeholders.


## Allow Prominent Progress Notifications from Debug Adapters
[github.com/microsoft/vscode#101791](https://github.com/microsoft/vscode/issues/101791)

Showing large progress notifications for actions like Hot Restart currently requires custom messages instead of standard DAP progress messages.


## Support Palettes of Named Colors in Color Picker
[github.com/microsoft/vscode#140899](https://github.com/microsoft/vscode/issues/140899)

Using the editor color picker currently converts any named Flutter colors to RGB values. Being able to provide a palette of colors to the color picker would make it easier to stick to a define theme of named colors.


## Support Custom Types of Inlay Hints
[github.com/microsoft/vscode#151920](https://github.com/microsoft/vscode/issues/151920)

This would allow Closing Labels to be moved to a standard VS Code/LSP API instead of relying on custom messages.


## Markdown in Diagnostic Descriptions
[github.com/microsoft/vscode#54272](https://github.com/microsoft/vscode/issues/54272)

This would allow improved formatting of diagnostic message ([for example lint examples](https://github.com/Dart-Code/Dart-Code/issues/3841#issuecomment-1048677129)).


## Allow Stepping by Line While Debugging
[github.com/microsoft/vscode#102236](https://github.com/microsoft/vscode/issues/102236)

Although the debug adapter protocol has support for stepping by line or instruction, VS Code does not expose any UI to select this.


## Type-Aware Code Completion
[github.com/microsoft/vscode#127516](https://github.com/microsoft/vscode/issues/127516)

Currently VS Code ranks code completions as you type based on text heuristics with no knowledge of types which often puts less relevant items at the top. Being able to quickly filter completion to only things that are the right type would make it much easier to find the right symbols.


## Snippet Markup in Quick-Fix/Refactor Edits
[github.com/microsoft/language-server-protocol#724](https://github.com/microsoft/language-server-protocol/issues/724)

Supporting snippet markup in Code Actions makes it easier to set things like cursor position during quick fixes/refactors. Currently Dart-Code is using non-standard middleware and [a proposal from the Rust analyzer team](https://github.com/rust-lang/rust-analyzer/blob/master/docs/dev/lsp-extensions.md#snippet-textedit) in order to set selections correctly.


## Syntax Highlighting in Code Completion Details
[github.com/microsoft/language-server-protocol#1115](https://github.com/microsoft/language-server-protocol/issues/1115)

A lack of guidance about the use of `detail`/`documentation` makes it difficult to provide [syntax-highlighted details](https://github.com/Dart-Code/Dart-Code/issues/2792) on code completion items.


## Code Folding Hides Closing Braces
[github.com/microsoft/vscode#50840](https://github.com/microsoft/vscode/issues/50840)

VS Code's code folding currently only suports hiding entire lines, meaning closing braces disappear inside the fold instead of showing as `void method { ... }`.


## Support Searching "ClassName.fieldName" in Workspace Symbols
[github.com/microsoft/vscode#98125](https://github.com/microsoft/vscode/issues/98125)

Searching for `ClassName.fieldName` does not currently work because VS Code only searches the final `label` (`"fieldName"`) and not the `containerName` (`"className"`).


## Show "package:foo/foo.dart" in Editor Tab Labels
[github.com/microsoft/vscode#41909](https://github.com/microsoft/vscode/issues/41909)

This would make it easier to tell which packages open files belong to.





