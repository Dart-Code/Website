---
title: Installing an Preview Release/Nightly Build
---

The easiest way to try a pre-release version of the extension is directly inside VS Code:

![Installing Pre-Release Extensions](/images/pre-release.png)

Pre-release extensions are published ad-hoc, usually a couple of times in the few weeks prior to a stable release. Pre-release extensions end with a date in YYYYMMDD format and use odd minor version numbers (for example `v3.81.20240129`).

If there has not been a pre-release extension that includes the change you'd like to test you can either ping on the GitHub issue asking for one (it's a trivial task) or install a nightly build directly yourself. Nightly builds are [available on GitHub](https://github.com/Dart-Code/Dart-Code/actions/workflows/nightly-build.yml). Click on the most recent (the top-most) run and scroll down to the Artifacts section to download the **nightly-build-vsix** zip file, then extract the `.vsix` file.

1. Open VS Code
1. Run the **Extensions: Install from VSIX** command from the VS Code
1. Browse to the VSIX file you downloaded/extracted
1. Wait for the extension to install
1. Click the **Reload** button on the VS Code notification that appears

If you receive a message about the Flutter extension depending on the Dart extension, you may need to first uninstall the Flutter extension and then perform the steps above, then re-install the Flutter extension from the VS Code marketplace.

**Note:** VS Code will still automatically update locally-installed extensions so once the marketplace contains a version that is *newer* than the one you installed, it may upgrade you. This is normally the desired behavior (you'll be moved back to the stable version of what you were previewing once it is released) but it's worth noting in case you explicitly install an older version and find VS Code reverted you to the (newer) stable version.
