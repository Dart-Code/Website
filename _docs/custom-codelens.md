---
title: Custom CodeLens Launch Configurations
---

You can create your custom CodeLens links in the editor for specific launch configurations by setting the `codeLens` field on the configuration.

For example, to add CodeLens for a launch config that sets a `RELEASE_MODE=true` environment variable to tests in `test/integration_tests`:

```js
{
	"name": "Current File (release mode)",
	"type": "dart",
	"request": "launch",
	"args": [], // Additional args to pass

	// If codeLens is defined, this launch configuration can be launched from custom
	// CodeLens links in the editor (see the page linked above for more info).
	"codeLens": {

		// This array sets where custom CodeLens links will be rendered:
		// - run-test: Above test functions as a Run link
		// - debug-test: Above test functions as a Debug link
		// - run-test-file: Above main functions in test files as a Run link
		// - debug-test-file: Above main functions in test files as a Debug link
		// - run-file: Above main functions in bin/tool/lib files as a Run link
		// - debug-file: Above main functions in bin/tool/lib files as a Debug link
		"for": [ "run-test", "run-test-file", "debug-test", "debug-test-file" ],

		// If specificed, the custom CodeLens will only appear for files that begin
		// with this path.
		"path": "test/integration_tests",

		// Text for the custom CodeLens. If not specified, will use the name field
		// from the parent launch configuration. The string "${debugType}" here will
		// be replaced with "run" or "debug" depending on the rendered position
		// (see the for field above).
		"title": "${debugType} (release)"
	},

	// Any custom environment variables to set when running the app with this
	// launch config.
	"env": { "RELEASE_MODE": true }
}
```

This will insert additional CodeLens links into tests, groups and main functions:

<img src="/images/release_notes/v3.11/code_lens_improvements.png" width="700" height="90" />
