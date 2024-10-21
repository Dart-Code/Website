---
title: Configuring PATH and Environment Variables
---

For more information on how Dart-Code locates a Dart/Flutter SDK, see [this page](/docs/sdk-locating/).

By default, Dart Code will try to locate Dart and Flutter SDKs from your `PATH` variable. Additionally, Flutter may use environment variables to locate some dependencies (such as `ANDROID_HOME` for the Android SDK). It's common to set `PATH` and environment variables in a terminal script like `.bash_profile` or `.bashrc` however these changes often only apply to terminal sessions so if you launch VS Code from a launcher/dock you may find that Dart Code is unaware of them.

If you have issues with Dart Code not locating your Dart or Flutter SDKs (or Flutter Doctor saying it cannot locate your Android SDK) try the suggestions below.

## Windows

In Windows, setting your `PATH` and environment variables can be done by opening Control Panel and typing "Environment" and then clicking the "Edit the system environment variables" option. You'll be presented with a list of environment variables including `PATH` where you can edit or add new ones.

**Note:** You should reboot your computer after making changes to `PATH` to ensure all processes (including explorer) are updated.

## macOS

The most reliable place to set `PATH`s seems to be in a file inside the `/etc/path.d/` folder. It doesn't matter what you call the file as all files inside this folder will be processed for paths. For example, you may wish to create a file at `/etc/path.d/dart` and add paths to your SDK(s) (one-per-line).

Setting environment variables in a way that applies in all cases [appears to be complicated](https://stackoverflow.com/a/5444960) so you may wish to install your Android SDK in the default location to avoid the need to set `ANDROID_HOME`.

**Note:** You should reboot your computer after making changes to `PATH` to ensure all processes are updated.

## Linux

Setting `PATH` and environment variables from Linux will vary between distributions. If you know of a reliable way to set these please [raise an issue](https://github.com/Dart-Code/Dart-Code/issues/new?labels=is%20documentation) with the details (including which distribution) so this page can be updated.

**Note:** You should reboot your computer after making changes to `PATH` to ensure all processes are updated.
