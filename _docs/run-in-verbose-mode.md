---
title: Running Flutter in Verbose Mode
---

There are two ways to run Flutter in verbose mode:

1. Start [capturing logs using the **Dart: Capture Logs** command](/docs/logging/#capture-logs-command) before launching your Flutter app
2. Add the `-v` arg to the `args` field in your launch configuration `launch.json`:
	```js
	{
		"name": "Flutter",
		"request": "launch",
		"type": "dart",
		"args": [
			"-v"
		]
	}
	```
