---
title: Quickly Switching Between SDK Versions
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
Flutter comes with the ability to change "channels" (eg. `master`, `dev`, `beta`). Using quick-switching in Dart Code works separately to this and you must have each Flutter channel in its own folder. To avoid multiple clones you can use the `git worktree` command to check different branches out into different folders (for example `git worktree add ../flutter-master origin/master` to check out the master channel into a `flutter-master` folder alongside your existing version).

With this value set, the SDK version numbers shown in the status bar will become clickable and open pick lists of the found SDK versions:

![The Dart SDK version number in the status bar](/images/version_in_status_bar.png)

![The SDK version pick list](/images/version_picklist.png)

Selecting a version will reload Dart Code's services silently in the background to use the new version (note this will require re-analyzing all of your project files).
