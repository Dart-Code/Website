---
title: "Quickly Switching between SDK Versions"
---


To quickly switch between Dart or Flutter SDKs you need to provide Dart Code with a list of paths or containers for your SDKs. This can be done using the `dart.sdkPaths` and `dart.flutterSdkPaths` settings. Each setting is an array of paths that should either be SDK folders themselves or be a folder that contains SDK folders.
	

```js
{
	"dart.sdkPaths": [
		"M:\\Apps\\Dart\\Dart-2.0.0-dev.35.0" // Can be a specific SDK folder
		"M:\\Apps\\Dart" // Or can be a folder that contains multiple SDKs
	]
}
```

{:.callout.title}
### Flutter Channels

{:.callout.body}
Flutter comes with the ability to change "channels" (eg. `master`, `dev`, `beta`). Switching SDK in Dart Code works separately to this and you must have each version in its own folder. To avoid multiple clones you can use the `git worktree` command to check different branches out into different folders (for example `git worktree add ../flutter-dev origin/dev`).

With this value set, the SDK version numbers shown in the status bar will now be clickable:

![The Dart SDK version number in the status bar](/images/version_in_status_bar.png)

When you click this you'll be presented with a pick-list of all SDKs:

![The SDK version pick-list](/images/version_picklist.png)

