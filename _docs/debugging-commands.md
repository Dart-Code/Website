---
title: Debugging Commands
---

<!-- TODO: Add a validation script that compares master package.json to this list -->

Dart Code adds a number of commands to the command palette (`Ctrl`+`Shift`+`P` or `Cmd`+`Shift`+`P`) during a debugging session.

* TOC
{:toc}

## Keybinding Commands

For commands that do not already have their own key bindings you can add your own by following the steps in the [VS Code Key Binding docs](https://code.visualstudio.com/docs/getstarted/keybindings).

## Flutter: Hot Reload

This command invokes injects updated source code into the Dart VM on your device/simulator to allow instant updates without having to restart your application. For more information on hot reload visit [flutter.io/hot-reload](https://flutter.io/hot-reload/). `Flutter: Hot Reload` is automatically executed whenever you save a source file if you're in a Flutter debugging session and there are no compile errors (this can be disabled with the [`dart.flutterHotReloadOnSave` setting](/docs/settings/#dartflutterhotreloadonsave)).

## Flutter: Full Restart

Certain types of changes are not supported by hot reload ([see here](https://flutter.io/hot-reload/#limitations)) so you must perform a full restart. Full restarts deploy latest source code to your device/simulator and restarts your application. Although slower than a hot reload a full restart is still usually very fast (a few seconds), much quicker than stopping the debug session and rebuilding/deploying.

## Dart: Open Observatory

This command will open the Observatory debugger application in your web browser. For more information on using this tool to debug your Flutter application visit [flutter.io/debugging](https://flutter.io/debugging/#dart-observatory-statement-level-single-stepping-debugger-and-profiler).

## Flutter: Open Observatory Timeline

This command opens the Timeline view of the Obersvatory tool which can be useful for debugging performance issues.

## Flutter: Toggle Baseline Painting

This command toggles the painting of baselines in your Flutter application.

## Flutter: Toggle Debug Painting

This command toggles debug painting in your Flutter application to help you understand how widgets are laid out on the screen.

## Flutter: Toggle Performance Overlay

This command toggles the rendering of a performance graph at the top of your application (on the device) to help diagnose performance issues. For more information on the overlay visit [flutter.io/ui-performance](https://flutter.io/ui-performance/#the-performance-overlay).

## Flutter: Toggle Platform

This command toggles between Android and iOS platform rendering to allow easier testing of platform-specific rendering without having to use two devices.

## Flutter: Toggle Repaint Rainbow

This command toggles painting different colors in areas of the screen as they are painted. This helps understand which areas of the screen are/aren't being repainted. For more information see [flutter.io/ui-performance](https://flutter.io/ui-performance/#debug-flags).

## Flutter: Toggle Slow Animations

This command toggles the speed of animations between normal and one sixth normal speed to help troubleshoot when something isn't animating as expected.

## Flutter: Toggle Slow Mode Banner

When taking screenshots of your Flutter application during development it may be convenient to hide the **Slow Mode** banner without having to rebuild your app. If you're running your Flutter app via the VS Code debugger then you can use the `Flutter: Toggle Slow Mode Banner` command to show or hide the banner.

<!-- TODO: SCREENSHOT -->
