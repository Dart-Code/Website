---
title: Recommended Settings
---

There are some settings in VS Code that you may wish to change from the defaults for a better experience editing Flutter code. You can set copy these from the JSON to your VS Code User Settings or by run the **Dart: Use Recommended Settings** command from the VS Code command palette (note: to avoid cluttering the command palette, this command - like many others - only shows up when a Dart project is open).

```js
{
	// By default, VS Code will only switch to the Debug Console when you start
	// debugging the first time in a session. This setting tells VS Code to always
	// switch to the Debug Console when starting a session, so you can see the
	// programs output.
	"debug.internalConsoleOptions": "openOnSessionStart",

	"[dart]": {
		// Automatically format code on save and during typing of certain characters
		// (like `;` and `}`).
		"editor.formatOnSave": true,
		"editor.formatOnType": true,

		// Draw a guide line at 80 characters, where Dart's formatting will wrap code.
		"editor.rulers": [80],

		// Disables built-in highlighting of words that match your selection. Without
		// this, all instances of the selected text will be highlighted, interfering
		// with Dart's ability to highlight only exact references to the selected variable.
		"editor.selectionHighlight": false,

		// Allows pressing <TAB> to complete snippets such as `for` even when the
		// completion list is not visible.
		"editor.tabCompletion": "onlySnippets",

		// By default, VS Code will populate code completion with words found in the
		// matching documents when a language service does not provide its own completions.
		// This results in code completion suggesting words when editing comments and
		// strings. This setting will prevent that.
		"editor.wordBasedSuggestions": "off",
	}
}
```
