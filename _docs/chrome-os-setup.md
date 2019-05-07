---
title: Dart & Flutter on Chrome OS
---

Developing Flutter apps on Chrome OS is now supported via [Chrome OS's Linux support](https://support.google.com/chromebook/answer/9145439?hl=en-GB) - both for the Play Store and Flutter for web. To do this a little bit of setup is required:

## Setting up VS Code and Flutter on Chrome OS {#vscode}

For instructions on setting up VS Code and Flutter on Chrome OS see [Tim Sneath's Flutter Development on a Pixelbook](https://proandroiddev.com/flutter-development-on-a-pixelbook-dde984a3fc1e) article.

## Setting up Chrome OS for Flutter web projects {#web}

Flutter for web needs to launch Chrome with additional flags that are not available on Chrome OS's version of the Chrome browser so you'll need to install the standalone version of Chrome in the Linux container.

- Go to [google.com/chrome](https://www.google.com/chrome/)
- Click **Download Chrome**
- Click **full list of supporting operating systems**
- Click **Linux**
- Select **64 bit .deb** and click **Accept and Install**
- Download the .deb file into the **Linux Files** area of your Chromebook
- Open your Chrome OS Linux terminal
- Run `sudo apt install <path to downloaded .deb file>`
