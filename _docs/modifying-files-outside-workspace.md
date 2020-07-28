---
title: Modifying Files Outside Workspace
---

If you modify files outside your workspace, you may see a warning:

> You are modifying a file outside of your open folders

This warning is to help some common situations that can cause problems, such as:

- Accidentally modifying files in your pub cache folder after jumping to the definition of a class
  This could cause errors if you alter the package code in your pub cache, as other users would not have your modifications
- Modifying files in packages referenced with `path` that might not be code you intended to modify

If you would prefer not to see this warning, you can prevent it using the `dart.warnWhenEditingFilesOutsideWorkspace` setting.
