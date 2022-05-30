---
title: Running Dart (non-Flutter) Web apps
---

To run Dart web apps that do not use Flutter, you need to create a launch configuration in `.vscode/launch.json` that sets the `"program"` field to `"web"` so that the debugger knows to run using `webdev serve`:


```js
"configurations": [
	{
		"name": "Dart Web",
		"request": "launch",
		"type": "dart",
		// Run the web app in the "web" folder via "webdev"
		"program": "web"
	}
]
```

This is not necessary for Flutter apps being run on Web devices, they will run automatically in the browser when you [select a web device](/docs/quickly-switching-between-flutter-devices/).
