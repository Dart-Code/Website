---
title: Installing an Preview Release/Nightly Build
---

There are often preview releases and nightly builds of Dart Code available for testing ahead of general release to the VS Code extension marketplace. To install one follow the instructions below.

Nightly builds are [available on GitHub](https://github.com/Dart-Code/Dart-Code/actions/workflows/nightly-build.yml). Click on the most recent (the top-most) run and scroll down to the Artifacts section to download the **nightly-build-vsix** zip file, then extract the `.vsix` file.

1. Open VS Code
1. Run the **Extensions: Install from VSIX** command from the VS Code
1. Browse to the VSIX file you downloaded/extracted
1. Wait for the extension to install
1. Click the **Reload** button on the VS Code notification that appears

If you receive a message about the Flutter extension depending on the Dart extension, you may need to first uninstall the Flutter extension and then perform the steps above, then re-install the Flutter extension from the VS Code marketplace.

If you'd like to see a simpler way to opt-in to beta releases, please put a 👍 on [this VS Code Feature Request](https://github.com/Microsoft/vscode/issues/15756).

**Note:** VS Code will still automatically update locally-installed extensions so once the marketplace contains a version that is *newer* than the one you installed, it may upgrade you. This is normally the desired behavior (you'll be moved back to the stable version of what you were previewing once it is released) but it's worth noting in case you explicitly install an older version and find VS Code reverted you to the (newer) stable version.
