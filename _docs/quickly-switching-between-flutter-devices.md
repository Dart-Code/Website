---
title: Quickly Switching Between Flutter Devices
---

If you have multiple devices or simulators connected then there are a number of ways to quickly switch between them:

1. Clicking on the currently selected device in the status bar
1. Executing the [`Flutter: Select Device` command](/docs/commands/#flutter-change-device)
1. Pressing your [custom key binding](/docs/commands/#keybinding-commands) for the [`Flutter: Select Device` command](/docs/commands/#flutter-change-device)

You will be presented with a pick list of all devices and simulators to select from:

<!-- TODO
![The Flutter device pick list](/images/device_picklist.png)
-->

Selecting a new device will apply from the next debugging session.

{:.callout.title}
### Device Not Listed?

{:.callout.body}
If your device or simulator is not listed then Flutter may not have detected it. If using a physical device please ensure USB debugging is enabled and/or disconnect and reconnect your device. If using a simulator try restarting it. Run `flutter doctor -v` for additional troubleshooting.
