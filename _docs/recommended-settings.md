---
title: Recommended Settings
---

There are some settings in VS Code that you may wish to change from the defaults for a better experience editing Flutter code. You can set these globally in your User Settings, or scope them only to Dart files by running the `Preferences: Configure Language-Specific Settings...` command from the VS Code command palette.

```js
{
	// Causes the debug view to automatically appear when a breakpoint is hit.
	"debug.openDebug": "openOnDebugBreak",

	// Automatically format code on save and during typing of certain characters
	// (like `;` and `}`).
	"editor.formatOnSave": true,
	"editor.formatOnType": true,
	
	// Draw a guide line at 80 characters, where Dart's formatting will wrap code.
	"[dart]": {
		"editor.rulers": [80]
	},

	// Disables built-in highlighting of words that match your selection. Without this, all
	// instances of the selected text will be highlighted, interfering with Dart's ability
	// to highlight only exact references to the selected variable.
	"editor.selectionHighlight": false,

	// Allows pressing <TAB> to complete snippets such as `for` even when the completion
	// list is not visible.
	"editor.tabCompletion": true,

	// By default, VS Code will popualte code completion with words found in the current
	// file when a language service does not provide its own completions. This results in
	// code completion suggesting words when editing comments and strings. This setting
	// will prevent that.
	"editor.wordBasedSuggestions": false,

	// Force all files to have a trailing newline for consistency and reduced diffs when
	// adding new lines at the bottom of the file.
	"files.insertFinalNewline": true,
}
```
