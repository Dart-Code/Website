---
title: SDK Version Compatibility
---

<style>
table th, table td {
	text-align: left;
	white-space: nowrap;
	padding: 4px 12px 4px 0;
}
</style>

The table below indicates the latest Dart/Flutter extensions that can be used when using older versions of the Dart/Flutter SDKs.

| Dart SDK | Flutter SDK | Extension Version | |
| ----- | ----- | ----- | ----- |
| up to v2.19 | up to v3.7 | <span title="v3.105 removes legacy analysis server protocol support">Supported until v3.104</span> | [announcement](https://groups.google.com/g/flutter-announce/c/JQHzM3FbBGI) |
| v3.0 | v3.10 | Supported until v3.118 | [announcement](https://blog.flutter.dev/whats-new-in-flutter-3-35-c58ef72e3766#:~:text=Deprecated%20IDE%20support%20for%20older%20Flutter%20SDKs) |
| v3.1 | v3.13 | Supported until v3.126 | [announcement](https://blog.flutter.dev/whats-new-in-flutter-3-35-c58ef72e3766#:~:text=In%20our%20next%20stable%20release%2C%20Flutter%20SDKs%20before%203.16%20will%20be%20deprecated) |
| v3.2 - current | v3.16 - current | Currently supported |

To switch to a specific version of the extensions, use the **Install Specific Version...** from the cog menu on the extension in VS Code's extensions side bar:

![The "Install Specific Version" option in the extensions menu](/images/change_extension_version.png)
