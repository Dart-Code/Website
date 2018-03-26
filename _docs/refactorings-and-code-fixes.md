---
title: Refactorings and Code Fixes
---

<!-- TODO: Add a validation script that compares master list in SDK repo to this list -->

`Ctrl`+`.` in Code opens the "lightbulb" menu showing all code fixes/refactors. Code v1.20 [gained the ability to keybind quickfixes](https://code.visualstudio.com/updates/v1_20#_keybindings-for-quick-fixes-and-code-actions). To do this you should edit your `keybindings.json` file and include the ID of the refactor as found below. If the `kind` for the keybind is set to just a segment of the ID (for example 'refactor.surround') then all actions sharing that prefix will appear in a filtered menu (or if only one, the action invoked immediately). You can control this behaviour with the `apply` argument [see docs](https://code.visualstudio.com/updates/v1_20#_keybindings-for-quick-fixes-and-code-actions).

The list of refactors comes from the Dart analysis server and therefore may change over time. Once this list is available somewhere centrally the readme will be updated to link there.

Note: These IDs are only provided by recent versions of the Dart analysis server and will not work with older/v1 builds.

- `refactor.addPartDirective` - Add 'part' directive  
- `refactor.addTypeAnnotation` - Add type annotation  
- `refactor.assignToVariable` - Assign value to new local variable  
- `refactor.convert.blockComment` - Convert to block documentation comment  
- `refactor.convert.lineComment` - Convert to line documentation comment  
- `refactor.convert.bodyToAsync` - Convert to async function body    
- `refactor.convert.bodyToBlock` - Convert to block body  
- `refactor.convert.bodyToExpression` - Convert to expression body  
- `refactor.convert.forEachToForIndex` - Convert to for-index loop  
- `refactor.convert.getterToFinalField` - Convert to final field  
- `refactor.convert.toGenericFunctionSyntax` - Convert into 'Function' syntax  
- `refactor.convert.finalFieldToGetter` - Convert to getter  
- `refactor.convert.isNot` - Convert to is!  
- `refactor.convert.isNotEmpty` - Convert to 'isNotEmpty'  
- `refactor.convert.partOfToPartUri` - Convert to use a URI  
- `refactor.convert.toDoubleQuotedString` - Convert to double quoted string  
- `refactor.convert.toConstructorFieldParameter` - Convert to field formal parameter  
- `refactor.convert.toConstructorNormalParameter` - Convert to normal parameter  
- `refactor.convert.toSingleQuotedString` - Convert to single quoted string  
- `refactor.encapsulateField` - Encapsulate field  
- `refactor.exchangeOperands` - Exchange operands  
- `refactor.extractClass` - Extract class into file
- `refactor.flutter.convert.childToChildren` - Convert to children:  
- `refactor.flutter.convert.toStatefulWidget` - Convert to StatefulWidget  
- `refactor.flutter.move.down` - Move widget down  
- `refactor.flutter.move.up` - Move widget up  
- `refactor.flutter.removeWidget` - Remove widget  
- `refactor.flutter.swap.withChild` - Swap with child  
- `refactor.flutter.swap.withParent` - Swap with parent  
- `refactor.flutter.wrap.center` - Center widget  
- `refactor.flutter.wrap.column` - Wrap with Column  
- `refactor.flutter.wrap.generic` - Wrap with new widget  
- `refactor.flutter.wrap.padding` - Add padding  
- `refactor.flutter.wrap.row` - Wrap with Row  
- `refactor.addShowCombinator` - Add explicit 'show' combinator  
- `refactor.introduceLocalCast` - Introduce new local with tested type  
- `refactor.invertIf` - Invert 'if' statement  
- `refactor.joinWithInnerIf` - Join 'if' statement with inner 'if' statement  
- `refactor.joinWithOuterIf` - Join 'if' statement with outer 'if' statement  
- `refactor.joinVariableDeclaration` - Join variable declaration  
- `refactor.removeTypeAnnotation` - Remove type annotation  
- `refactor.convert.conditionalToIfElse` - Replace conditional with 'if-else'  
- `refactor.convert.ifElseToConditional` - Replace 'if-else' with conditional ('c ? x : y')  
- `refactor.splitIfConjunction` - Split && condition  
- `refactor.splitVariableDeclaration` - Split variable declaration  
- `refactor.surround.block` - Surround with block  
- `refactor.surround.doWhile` - Surround with 'do-while'  
- `refactor.surround.forEach` - Surround with 'for'  
- `refactor.surround.forIn` - Surround with 'for-in'  
- `refactor.surround.if` - Surround with 'if'  
- `refactor.surround.tryCatch` - Surround with 'try-catch'  
- `refactor.surround.tryFinally` - Surround with 'try-finally'  
- `refactor.surround.while` - Surround with 'while'
