---
title: Running Flutter in Verbose Mode
---

There are two ways to run Flutter in verbose mode:

## 1. Dart: Capture Logs command

When [capturing logs using the **Dart: Capture Logs** command](/docs/logging/#capture-logs-command), Flutter will automatically run in verbose mode. Be sure to start logging prior to running the app.


## 2. Launch Configuration

Alternatively, you can add `-v` to the `args` field in your [launch configuration](/docs/launch-configuration/) (`.vscode/launch.json`):

```js
"configurations": [
	{
		"name": "Flutter",
		"request": "launch",
		"type": "dart",
		"args": [
			"-v"
		]
	}
]
```
