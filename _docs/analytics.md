---
title: Analytics collected by the Dart-Code extension
---

The Dart-Code extension collects some basic analytics to help understand how users are using the extension and with which VS Code and SDK versions.

These analytics are separate to analytics sent by VS Code itself (to Microsoft) and analytics sent by other tools that the extension calls (such as `dart` and `flutter` which may send analytics to Google).

You can see all analytics sent by the extension (along with others) in the Telemetry output pane (see [VS Code docs](https://code.visualstudio.com/docs/getstarted/telemetry#_output-channel-for-telemetry-events)).

This information is also available in [telemetry.json](https://github.com/Dart-Code/Dart-Code/blob/master/telemetry.json) in the extension, which can be extracted for all extensions from VS Code using the `code --telemetry` command (see [VS Code docs](https://code.visualstudio.com/docs/getstarted/telemetry#_viewing-all-telemetry-events)).

# Opting Out

The extension uses the VS Code telemetry settings for enabling/disabling analytics. More information is available [in the VS Code docs](https://code.visualstudio.com/docs/getstarted/telemetry#_disable-telemetry-reporting).

Additionally, analytics will be disabled if you have opted-out using the legacy `"dart.analytics": false` setting.

# Events

The following events are recorded by the Dart-Code extension:

- `Extension_Activated`
- `Extension_Restart`
- `SdkDetectionFailure`
- `Debugger_Activated`
  In addition to the common properties below, this event includes the following properties:
   - `debuggerPreference`: Whether debugging is to to 'just my code', or includes external package and SDK sources
   - `debuggerType`: The type (Dart, Flutter, DartTest, FlutterTest) of debug session being started
   - `debuggerRunType`: Whether the debug session is Run (without Debugging) or Debug
   - `debuggerAdapterType`: Whether debugging is using the SDK or legacy debug adapter implementation
- `DevTools_Opened`
- `FlutterSurvey_Shown`
- `FlutterSurvey_Clicked`
- `FlutterSurvey_Dismissed`
- `FlutterOutline_Activated`
- `Command_DartNewProject`
- `Command_FlutterNewProject`
- `Command_RestartAnalyzer`
- `Command_ForceReanalyze`

# Common Properties

The following properties are included in all events:

 - `common.vscodemachineid`: An identifier provided by VS Code to relate coding sessions from the same installation together
 - `common.extname`: The name of the Dart extension
 - `common.extversion`: The version of the Dart extension
 - `common.vscodeversion`: The version of VS Code running the extension
 - `common.remotename`: The 'remoteName' from VS Code (such as 'ssh' or 'docker' for remote workspaces)
 - `isDevExtension`: Whether the extension is running in development mode (this usually means running from source checked out from the Dart-Code repo)
 - `showTodos`: Whether TODOs in Dart code are being shown in the Problems list
 - `analyzerProtocol`: Whether the Dart analysis server is running using the LSP or Legacy communication protocol
 - `formatter`: Whether the formatter is enabled, enabled-on-save, disabled, or set to something other than the Dart SDK formatter
 - `flutterVersion`: Which version of the Flutter SDK is being used
 - `flutterExtension`: Whether the Flutter extension is installed
 - `flutterUiGuides`: Whether the Flutter 'UI Guides' are enabled and which kind of updates they are configured to use
 - `platform`: The platform/OS the extension is running on
 - `appName`: The name of the editor application (usually VS Code, but could be another editor that runs VS Code extensions such as from open-vsix)
 - `dartVersion`: Which version of the Dart SDK is being used
 - `workspaceType`: Which type of project(s) are in the current workspace (Dart, Flutter)
 - `closingLabels`: Whether Dart's 'closing labels' hints are enabled
 - `flutterHotReloadOnSave`: Whether hot-reload-on-save is enabled
 - `language`: The user's language as reported by VS Code
