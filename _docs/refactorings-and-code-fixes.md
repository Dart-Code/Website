---
title: Refactorings and Code Fixes
---

<!-- TODO: Add a validation script that compares master list in SDK repo to this list -->

`Ctrl`+`.` in Code opens the "lightbulb" menu showing all code fixes/refactors. Code v1.20 [gained the ability to keybind quickfixes](https://code.visualstudio.com/updates/v1_20#_keybindings-for-quick-fixes-and-code-actions). To do this you should edit your `keybindings.json` file and include the ID of the refactor as found below. If the `kind` for the keybind is set to just a segment of the ID (for example 'refactor.surround') then all actions sharing that prefix will appear in a filtered menu (or if only one, the action invoked immediately). You can control this behavior with the `apply` argument [see docs](https://code.visualstudio.com/updates/v1_20#_keybindings-for-quick-fixes-and-code-actions).

The list of refactors comes from the Dart analysis server and therefore may change over time. Once this list is available somewhere centrally the readme will be updated to link there.

Note: These IDs are only provided by recent versions of the Dart analysis server and may not work with older builds.

- `quickfix.add.async` - Add 'async' modifier
- `quickfix.add.await` - Add 'await' keyword
- `quickfix.add.await.multi` - Add 'await's everywhere in file
- `quickfix.add.callSuper` - Add 'super....'
- `quickfix.add.class.modifier.base` - Add 'base' modifier
- `quickfix.add.class.modifier.base.multi` - Add 'base' modifier everywhere in file
- `quickfix.add.class.modifier.final` - Add 'final' modifier
- `quickfix.add.class.modifier.final.multi` - Add 'final' modifier everywhere in file
- `quickfix.add.class.modifier.sealed` - Add 'sealed' modifier
- `quickfix.add.class.modifier.sealed.multi` - Add 'sealed' modifier everywhere in file
- `quickfix.add.const` - Add 'const' modifier
- `quickfix.add.const.multi` - Add 'const' modifiers everywhere in file
- `quickfix.add.curlyBraces` - Add curly braces
- `quickfix.add.curlyBraces.multi` - Add curly braces everywhere in file
- `quickfix.add.diagnosticPropertyReference` - Add a debug reference to this property
- `quickfix.add.diagnosticPropertyReference.multi` - Add missing debug property references everywhere in file
- `quickfix.add.empty.argument.list` - Add empty argument list
- `quickfix.add.empty.argument.list.multi` - Add empty argument lists everywhere in file
- `quickfix.add.enumConstant` - Add enum constant '...'
- `quickfix.add.eolAtEndOfFile` - Add EOL at end of file
- `quickfix.add.explicitCall` - Add explicit .call tearoff
- `quickfix.add.explicitCall.multi` - Add explicit .call to implicit tearoffs in file
- `quickfix.add.explicitCast` - Add cast
- `quickfix.add.explicitCast.multi` - Add cast everywhere in file
- `quickfix.add.extensionOverride` - Add an extension override for '...'
- `quickfix.add.initializingFormalParameters` - Add final initializing formal parameters
- `quickfix.add.keyToConstructors` - Add 'key' to constructors
- `quickfix.add.keyToConstructors.multi` - Add 'key' to constructors everywhere in file
- `quickfix.add.late` - Add 'late' modifier
- `quickfix.add.leadingNewlineToString` - Add leading new line
- `quickfix.add.leadingNewlineToString.multi` - Add leading new line everywhere in file
- `quickfix.add.missingEnumCaseClauses` - Add missing case clauses
- `quickfix.add.missingParameterNamed` - Add named parameter '...'
- `quickfix.add.missingParameterPositional` - Add optional positional parameter
- `quickfix.add.missingParameterRequired` - Add required positional parameter
- `quickfix.add.missingRequiredArgument` - Add ... required argument...
- `quickfix.add.missingSwitchCases` - Add missing switch cases
- `quickfix.add.neNull` - Add != null
- `quickfix.add.neNull.multi` - Add != null everywhere in file
- `quickfix.add.override` - Add '@override' annotation
- `quickfix.add.override.multi` - Add '@override' annotations everywhere in file
- `quickfix.add.redeclare` - Add '@redeclare' annotation
- `quickfix.add.redeclare.multi` - Add '@redeclare' annotations everywhere in file
- `quickfix.add.reopen` - Add '@reopen' annotation
- `quickfix.add.reopen.multi` - Add '@reopen' annotations everywhere in file
- `quickfix.add.required` - Add 'required' keyword
- `quickfix.add.returnNull` - Add 'return null'
- `quickfix.add.returnNull.multi` - Add 'return null' everywhere in file
- `quickfix.add.returnType` - Add return type
- `quickfix.add.returnType.multi` - Add return types everywhere in file
- `quickfix.add.static` - Add 'static' modifier
- `quickfix.add.superConstructorInvocation` - Add super constructor ... invocation
- `quickfix.add.superParameter` - Add required parameter...
- `quickfix.add.switchCaseReturn` - Add 'break'
- `quickfix.add.switchCaseReturn.multi` - Add 'break' everywhere in file
- `quickfix.add.trailingComma` - Add trailing comma
- `quickfix.add.trailingComma.multi` - Add trailing commas everywhere in file
- `quickfix.add.typeAnnotation` - Add type annotation
- `quickfix.add.typeAnnotation.multi` - Add type annotations everywhere in file
- `quickfix.change.argumentName` - Change to '...'
- `quickfix.change.toNearestPreciseValue` - Change to nearest precise int-as-double value: ...
- `quickfix.change.toStaticAccess` - Change access to static using '...'
- `quickfix.change.typeAnnotation` - Change '...' to '...' type annotation
- `quickfix.convert.bodyToBlock` - Convert to block body
- `quickfix.convert.bodyToBlock.multi` - Convert to block body everywhere in file
- `quickfix.convert.classToEnum` - Convert class to an enum
- `quickfix.convert.classToEnum.multi` - Convert classes to enums in file
- `quickfix.convert.getter` - Convert '...' to a getter
- `quickfix.convert.isNot` - Convert to is!
- `quickfix.convert.isNot.multi` - Convert to is! everywhere in file
- `quickfix.convert.nullCheckToNullAwareElement` - Convert null check to null-aware element
- `quickfix.convert.nullCheckToNullAwareElement.multi` - Convert null check to null-aware element in file
- `quickfix.convert.quotes` - Convert the quotes and remove escapes
- `quickfix.convert.quotes.multi` - Convert the quotes and remove escapes everywhere in file
- `quickfix.convert.toBoolExpression` - Convert to boolean expression
- `quickfix.convert.toBoolExpression.multi` - Convert to boolean expressions everywhere in file
- `quickfix.convert.toCascade` - Convert to cascade notation
- `quickfix.convert.toConstantPattern` - Convert to constant pattern
- `quickfix.convert.toContains` - Convert to using 'contains'
- `quickfix.convert.toContains.multi` - Convert to using 'contains' everywhere in file
- `quickfix.convert.toDoubleQuotedString` - Convert to double quoted string
- `quickfix.convert.toDoubleQuotedString.multi` - Convert to double quoted strings everywhere in file
- `quickfix.convert.toExpressionBody` - Convert to expression body
- `quickfix.convert.toExpressionBody.multi` - Convert to expression bodies everywhere in file
- `quickfix.convert.toFlutterStyleTodo` - Convert to flutter style todo
- `quickfix.convert.toFlutterStyleTodo.multi` - Convert to flutter style todos everywhere in file
- `quickfix.convert.toForEach` - Convert to 'forEach'
- `quickfix.convert.toForElement` - Convert to a 'for' element
- `quickfix.convert.toForElement.multi` - Convert to 'for' elements everywhere in file
- `quickfix.convert.toForLoop` - Convert 'forEach' to a 'for' loop
- `quickfix.convert.toForLoop.multi` - Convert 'forEach' to a 'for' loop everywhere in file
- `quickfix.convert.toFunctionDeclaration` - Convert to function declaration
- `quickfix.convert.toFunctionDeclaration.multi` - Convert to function declaration everywhere in file
- `quickfix.convert.toGenericFunctionSyntax` - Convert into 'Function' syntax
- `quickfix.convert.toGenericFunctionSyntax.multi` - Convert to 'Function' syntax everywhere in file
- `quickfix.convert.toIfElement` - Convert to an 'if' element
- `quickfix.convert.toIfElement.multi` - Convert to 'if' elements everywhere in file
- `quickfix.convert.toIfNull` - Convert to use '??'
- `quickfix.convert.toIfNull.multi` - Convert to '??'s everywhere in file
- `quickfix.convert.toInitializingFormal` - Convert to an initializing formal parameter
- `quickfix.convert.toIntLiteral` - Convert to an int literal
- `quickfix.convert.toIntLiteral.multi` - Convert to int literals everywhere in file
- `quickfix.convert.toLineComment` - Convert to line documentation comment
- `quickfix.convert.toLineComment.multi` - Convert to line documentation comments everywhere in file
- `quickfix.convert.toMapLiteral` - Convert to map literal
- `quickfix.convert.toMapLiteral.multi` - Convert to map literals everywhere in file
- `quickfix.convert.toNamedArguments` - Convert to named arguments
- `quickfix.convert.toNullAware` - Convert to use '?.'
- `quickfix.convert.toNullAware.multi` - Convert to use '?.' everywhere in file
- `quickfix.convert.toNullAwareListElement` - Convert to use '?'
- `quickfix.convert.toNullAwareMapEntryKey` - Convert to use '?'
- `quickfix.convert.toNullAwareMayEntryValue` - Convert to use '?'
- `quickfix.convert.toNullAwareSetElement` - Convert to use '?'
- `quickfix.convert.toNullAwareSpread` - Convert to use '...?'
- `quickfix.convert.toNullAwareSpread.multi` - Convert to use '...?' everywhere in file
- `quickfix.convert.toOnType` - Convert to 'on ...'
- `quickfix.convert.toPackageImport` - Convert to 'package:' import
- `quickfix.convert.toPackageImport.multi` - Convert to 'package:' imports everywhere in file
- `quickfix.convert.toRawString` - Convert to raw string
- `quickfix.convert.toRawString.multi` - Convert to raw strings everywhere in file
- `quickfix.convert.toRelativeImport` - Convert to relative import
- `quickfix.convert.toRelativeImport.multi` - Convert to relative imports everywhere in file
- `quickfix.convert.toSetLiteral` - Convert to set literal
- `quickfix.convert.toSetLiteral.multi` - Convert to set literals everywhere in file
- `quickfix.convert.toSingleQuotedString` - Convert to single quoted string
- `quickfix.convert.toSingleQuotedString.multi` - Convert to single quoted strings everywhere in file
- `quickfix.convert.toSpread` - Convert to a spread
- `quickfix.convert.toSpread.multi` - Convert to spreads everywhere in file
- `quickfix.convert.toSuperParameters` - Convert to using super parameters
- `quickfix.convert.toSuperParameters.multi` - Convert to using super parameters everywhere in file
- `quickfix.convert.toWhereType` - Convert to use 'whereType'
- `quickfix.convert.toWhereType.multi` - Convert to using 'whereType' everywhere in file
- `quickfix.convert.toWildcardPattern` - Convert to wildcard pattern
- `quickfix.convert.toWildcardVariable` - Convert to wildcard variable
- `quickfix.create.class` - Create class '...'
- `quickfix.create.constructor` - Create constructor '...'
- `quickfix.create.constructorForFinalFields` - Create constructor for final fields
- `quickfix.create.constructorSuper` - Create constructor to call ...
- `quickfix.create.field` - Create field '...'
- `quickfix.create.file` - Create file '...'
- `quickfix.create.function` - Create function '...'
- `quickfix.create.getter` - Create getter '...'
- `quickfix.create.localVariable` - Create local variable '...'
- `quickfix.create.method` - Create method '...'
- `quickfix.create.method.multi` - Create methods in file
- `quickfix.create.mixin` - Create mixin '...'
- `quickfix.create.noSuchMethod` - Create 'noSuchMethod' method
- `quickfix.create.parameter` - Create required positional parameter '...'
- `quickfix.create.setter` - Create setter '...'
- `quickfix.dataDriven` - ...
- `quickfix.extendClassForMixin` - Extend the class '...'
- `quickfix.extractLocalVariable` - Extract local variable
- `quickfix.flutter.convert.childToChildren` - Convert to children:
- `quickfix.flutter.convert.childrenToChild` - Convert to child:
- `quickfix.flutter.makeConditionalOnDebugMode` - Make conditional on 'kDebugMode'
- `quickfix.flutter.wrap.text` - Wrap in a 'Text' widget
- `quickfix.import.async` - Import 'dart:async'
- `quickfix.import.libraryHide` - Hide others to use '...' from '...'...
- `quickfix.insertBody` - Insert body
- `quickfix.insertOnKeyword` - Insert 'on' keyword
- `quickfix.insertOnKeyword.multi` - Insert 'on' keyword in file
- `quickfix.insertSemicolon` - Insert ';'
- `quickfix.insertSemicolon.multi` - Insert ';' everywhere in file
- `quickfix.makeClassAbstract` - Make class '...' abstract
- `quickfix.makeFieldNotFinal` - Make field '...' not final
- `quickfix.makeFieldPublic` - Make field '...' public
- `quickfix.makeFinal` - Make final
- `quickfix.makeFinal.multi` - Make final where possible in file
- `quickfix.makeRequiredNamedParametersFirst` - Put required named parameter first
- `quickfix.makeRequiredNamedParametersFirst.multi` - Put required named parameters first everywhere in file
- `quickfix.makeReturnTypeNullable` - Make the return type nullable
- `quickfix.makeSuperInvocationLast` - Move the invocation to the end of the initializer list
- `quickfix.makeVariableNotFinal` - Make variable '...' not final
- `quickfix.makeVariableNullable` - Make '...' nullable
- `quickfix.matchAnyMap` - Match any map
- `quickfix.matchEmptyMap` - Match an empty map
- `quickfix.mergeCombinatorsHide.show` - Merge combinators into a single 'hide'
- `quickfix.mergeCombinatorsShow.hide` - Merge combinators into a single 'show'
- `quickfix.moveAnnotationToLibraryDirective` - Move this annotation to a library directive
- `quickfix.moveDocCommentToLibraryDirective` - Move this doc comment to a library directive
- `quickfix.moveTypeArgumentsToClass` - Move type arguments to after class name
- `quickfix.organize.imports` - Organize Imports
- `quickfix.qualifyReference` - Use '...'
- `quickfix.remove.abstract` - Remove the 'abstract' keyword
- `quickfix.remove.abstract.multi` - Remove the 'abstract' keyword everywhere in file
- `quickfix.remove.annotation` - Remove the '...' annotation
- `quickfix.remove.argument` - Remove argument
- `quickfix.remove.argument.multi` - Remove arguments in file
- `quickfix.remove.assertion` - Remove the assertion
- `quickfix.remove.assignment` - Remove assignment
- `quickfix.remove.assignment.multi` - Remove unnecessary assignments everywhere in file
- `quickfix.remove.async` - Remove 'async' modifier
- `quickfix.remove.await` - Remove 'await'
- `quickfix.remove.await.multi` - Remove 'await's in file
- `quickfix.remove.break` - Remove 'break'
- `quickfix.remove.break.multi` - Remove unnecessary 'break's in file
- `quickfix.remove.character` - Remove the 'U+...' code point
- `quickfix.remove.comma` - Remove the comma
- `quickfix.remove.comma.multi` - Remove ...commas from ... everywhere in file
- `quickfix.remove.comment` - Remove the comment
- `quickfix.remove.comparison` - Remove comparison
- `quickfix.remove.comparison.multi` - Remove comparisons in file
- `quickfix.remove.comparison.multi` - Remove type check everywhere in file
- `quickfix.remove.const` - Remove 'const'
- `quickfix.remove.constructor` - Remove the constructor
- `quickfix.remove.constructorName` - Remove 'new'
- `quickfix.remove.constructorName.multi` - Remove constructor names in file
- `quickfix.remove.deadCode` - Remove dead code
- `quickfix.remove.defaultValue` - Remove the default value
- `quickfix.remove.deprecatedNewInCommentReference` - Remove deprecated 'new' keyword
- `quickfix.remove.deprecatedNewInCommentReference.multi` - Remove deprecated 'new' keyword in file
- `quickfix.remove.duplicateCase` - Remove duplicate case statement
- `quickfix.remove.duplicateCase.multi` - Remove duplicate case statement
- `quickfix.remove.emptyCatch` - Remove empty catch clause
- `quickfix.remove.emptyCatch.multi` - Remove empty catch clauses everywhere in file
- `quickfix.remove.emptyConstructorBody` - Remove empty constructor body
- `quickfix.remove.emptyConstructorBody.multi` - Remove empty constructor bodies in file
- `quickfix.remove.emptyElse` - Remove empty else clause
- `quickfix.remove.emptyElse.multi` - Remove empty else clauses everywhere in file
- `quickfix.remove.emptyStatement` - Remove empty statement
- `quickfix.remove.emptyStatement.multi` - Remove empty statements everywhere in file
- `quickfix.remove.extends.clause` - Remove the invalid 'extends' clause
- `quickfix.remove.extends.clause.multi` - Remove invalid 'extends' clauses everywhere in file
- `quickfix.remove.ifNullOperator` - Remove the '??' operator
- `quickfix.remove.ifNullOperator.multi` - Remove unnecessary '??' operators everywhere in file
- `quickfix.remove.ignore.comment` - Remove unnecessary ignore comment
- `quickfix.remove.ignore.comment.multi` - Remove unnecessary ignore comments everywhere in file
- `quickfix.remove.ignored.diagnostic` - Remove ...
- `quickfix.remove.ignored.diagnostic.multi` - Remove unnecessary ignored diagnostics everywhere in file
- `quickfix.remove.initializer` - Remove initializer
- `quickfix.remove.initializer.multi` - Remove unnecessary initializers everywhere in file
- `quickfix.remove.interpolationBraces` - Remove unnecessary interpolation braces
- `quickfix.remove.interpolationBraces.multi` - Remove unnecessary interpolation braces everywhere in file
- `quickfix.remove.invocation` - Remove unnecessary invocation of ...
- `quickfix.remove.invocation.multi` - Remove unnecessary invocations of ... in file
- `quickfix.remove.late` - Remove the 'late' keyword
- `quickfix.remove.late.multi` - Remove the 'late' keyword everywhere in file
- `quickfix.remove.leadingUnderscore` - Remove leading underscore
- `quickfix.remove.leadingUnderscore.multi` - Remove leading underscores in file
- `quickfix.remove.lexeme` - Remove the ... ...
- `quickfix.remove.lexeme.multi` - Remove ...s everywhere in file
- `quickfix.remove.library.name` - Remove the library name
- `quickfix.remove.methodDeclaration` - Remove method declaration
- `quickfix.remove.methodDeclaration.multi` - Remove unnecessary method declarations in file
- `quickfix.remove.nameFromCombinator` - Remove name from '...'
- `quickfix.remove.nameFromDeclarationClause` - ...
- `quickfix.remove.new` - Remove 'new' keyword
- `quickfix.remove.nonNullAssertion` - Remove the '!'
- `quickfix.remove.nonNullAssertion.multi` - Remove '!'s in file
- `quickfix.remove.on.clause` - Remove the invalid 'on' clause
- `quickfix.remove.on.clause.multi` - Remove all invalid 'on' clauses in file
- `quickfix.remove.operator` - Remove the operator
- `quickfix.remove.operator.multi.multi` - Remove operators in file
- `quickfix.remove.parametersInGetterDeclaration` - Remove parameters in getter declaration
- `quickfix.remove.parenthesisInGetterInvocation` - Remove parentheses in getter invocation
- `quickfix.remove.questionMark` - Remove the '?'
- `quickfix.remove.questionMark.multi` - Remove unnecessary question marks in file
- `quickfix.remove.removePrint` - Remove print statement
- `quickfix.remove.removePrint.multi` - Remove print statements in file
- `quickfix.remove.required` - Remove 'required'
- `quickfix.remove.returnedValue` - Remove invalid returned value
- `quickfix.remove.returnedValue.multi` - Remove invalid returned values in file
- `quickfix.remove.thisExpression` - Remove 'this' expression
- `quickfix.remove.thisExpression.multi` - Remove unnecessary 'this' expressions everywhere in file
- `quickfix.remove.typeAnnotation` - Remove type annotation
- `quickfix.remove.typeAnnotation.multi` - Remove unnecessary type annotations in file
- `quickfix.remove.typeArguments` - Remove type arguments
- `quickfix.remove.typeCheck` - Remove type check
- `quickfix.remove.unawaited` - Remove 'unawaited' call
- `quickfix.remove.unawaited.multi` - Remove 'unawaited' call in file
- `quickfix.remove.unexpectedUnderscores` - Remove unexpected '_' characters
- `quickfix.remove.unexpectedUnderscores.multi` - Remove unexpected '_' characters in file
- `quickfix.remove.unnecessaryCast` - Remove unnecessary cast
- `quickfix.remove.unnecessaryCast.multi` - Remove all unnecessary casts in file
- `quickfix.remove.unnecessaryConst` - Remove unnecessary 'const' keyword
- `quickfix.remove.unnecessaryConst.multi` - Remove unnecessary 'const' keywords everywhere in file
- `quickfix.remove.unnecessaryContainer` - Remove unnecessary 'Container'
- `quickfix.remove.unnecessaryContainer.multi` - Remove unnecessary 'Container's in file
- `quickfix.remove.unnecessaryFinal` - Remove unnecessary 'final'
- `quickfix.remove.unnecessaryFinal.multi` - Remove all unnecessary 'final's in file
- `quickfix.remove.unnecessaryLate` - Remove unnecessary 'late' keyword
- `quickfix.remove.unnecessaryLate.multi` - Remove unnecessary 'late' keywords everywhere in file
- `quickfix.remove.unnecessaryLibraryDirective` - Remove unnecessary library directive
- `quickfix.remove.unnecessaryNew` - Remove unnecessary 'new' keyword
- `quickfix.remove.unnecessaryNew.multi` - Remove unnecessary 'new' keywords everywhere in file
- `quickfix.remove.unnecessaryParentheses` - Remove unnecessary parentheses
- `quickfix.remove.unnecessaryParentheses.multi` - Remove all unnecessary parentheses in file
- `quickfix.remove.unnecessaryRawString` - Remove unnecessary 'r' in string
- `quickfix.remove.unnecessaryRawString.multi` - Remove unnecessary 'r' in strings in file
- `quickfix.remove.unnecessaryStringEscape` - Remove unnecessary '\\' in string
- `quickfix.remove.unnecessaryStringEscape.multi` - Remove unnecessary '\\' in strings in file
- `quickfix.remove.unnecessaryStringInterpolation` - Remove unnecessary string interpolation
- `quickfix.remove.unnecessaryStringInterpolation.multi` - Remove all unnecessary string interpolations in file
- `quickfix.remove.unnecessaryToList` - Remove unnecessary 'toList' call
- `quickfix.remove.unnecessaryToList.multi` - Remove unnecessary 'toList' calls in file
- `quickfix.remove.unnecessaryWildcardPattern` - Remove unnecessary wildcard pattern
- `quickfix.remove.unnecessaryWildcardPattern.multi` - Remove all unnecessary wildcard pattern in file
- `quickfix.remove.unusedCatchClause` - Remove unused 'catch' clause
- `quickfix.remove.unusedCatchClause.multi` - Remove unused 'catch' clauses in file
- `quickfix.remove.unusedCatchStack` - Remove unused stack trace variable
- `quickfix.remove.unusedCatchStack.multi` - Remove unused stack trace variables in file
- `quickfix.remove.unusedElement` - Remove unused element
- `quickfix.remove.unusedField` - Remove unused field
- `quickfix.remove.unusedImport` - Remove unused import
- `quickfix.remove.unusedImport.multi` - Remove all unused imports in file
- `quickfix.remove.unusedLabel` - Remove unused label
- `quickfix.remove.unusedLocalVariable` - Remove unused local variable
- `quickfix.remove.unusedParameter` - Remove the unused parameter
- `quickfix.remove.unusedParameter.multi` - Remove unused parameters everywhere in file
- `quickfix.remove.var` - Remove 'var'
- `quickfix.remove.var.keyword` - Remove 'var'
- `quickfix.removeLint` - Remove '...'
- `quickfix.removeSetting` - Remove '...'
- `quickfix.rename.methodParameter` - Rename '...' to '...'
- `quickfix.rename.toCamelCase` - Rename to '...'
- `quickfix.rename.toCamelCase.multi` - Rename to camel case everywhere in file
- `quickfix.replace.booleanWithBool` - Replace 'boolean' with 'bool'
- `quickfix.replace.booleanWithBool.multi` - Replace all 'boolean's with 'bool' in file
- `quickfix.replace.cascadeWithDot` - Replace '..' with '.'
- `quickfix.replace.cascadeWithDot.multi` - Replace unnecessary '..'s with '.'s everywhere in file
- `quickfix.replace.colonWithEquals` - Replace ':' with '='
- `quickfix.replace.colonWithEquals.multi` - Replace ':'s with '='s everywhere in file
- `quickfix.replace.colonWithIn` - Replace ':' with 'in'
- `quickfix.replace.colonWithIn.multi` - Replace ':'s with 'in's everywhere in file
- `quickfix.replace.containerWithColoredBox` - Replace with 'ColoredBox'
- `quickfix.replace.containerWithColoredBox.multi` - Replace with 'ColoredBox' everywhere in file
- `quickfix.replace.containerWithSizedBox` - Replace with 'SizedBox'
- `quickfix.replace.containerWithSizedBox.multi` - Replace with 'SizedBox' everywhere in file
- `quickfix.replace.finalWithConst` - Replace 'final' with 'const'
- `quickfix.replace.finalWithConst.multi` - Replace 'final' with 'const' where possible in file
- `quickfix.replace.finalWithVar` - Replace 'final' with 'var'
- `quickfix.replace.finalWithVar.multi` - Replace 'final' with 'var' where possible in file
- `quickfix.replace.newWithConst` - Replace 'new' with 'const'
- `quickfix.replace.newWithConst.multi` - Replace 'new' with 'const' where possible in file
- `quickfix.replace.nullCheckWithCast` - Replace null check with a cast
- `quickfix.replace.nullCheckWithCast.multi` - Replace null checks with casts in file
- `quickfix.replace.nullWithClosure` - Replace 'null' with a closure
- `quickfix.replace.nullWithClosure.multi` - Replace 'null's with closures where possible in file
- `quickfix.replace.nullWithVoid` - Replace 'Null' with 'void'
- `quickfix.replace.nullWithVoid.multi` - Replace 'Null' with 'void' everywhere in file
- `quickfix.replace.returnType` - Replace the return type with '...'
- `quickfix.replace.returnTypeFuture` - Return 'Future<...>'
- `quickfix.replace.returnTypeFuture.multi` - Return a 'Future' where required in file
- `quickfix.replace.returnTypeIterable` - Return 'Iterable<...>'
- `quickfix.replace.returnTypeStream` - Return 'Stream<...>'
- `quickfix.replace.varWithDynamic` - Replace 'var' with 'dynamic'
- `quickfix.replace.withArrow` - Replace with '=>'
- `quickfix.replace.withArrow.multi` - Replace with '=>' everywhere in file
- `quickfix.replace.withBrackets` - Replace with { }
- `quickfix.replace.withBrackets.multi` - Replace with { } everywhere in file
- `quickfix.replace.withConditionalAssignment` - Replace with ??=
- `quickfix.replace.withConditionalAssignment.multi` - Replace with ??= everywhere in file
- `quickfix.replace.withDecoratedBox` - Replace with 'DecoratedBox'
- `quickfix.replace.withDecoratedBox.multi` - Replace with 'DecoratedBox' everywhere in file
- `quickfix.replace.withEightDigitHex` - Replace with '...'
- `quickfix.replace.withEightDigitHex.multi` - Replace with hex digits everywhere in file
- `quickfix.replace.withExtensionName` - Replace with '...'
- `quickfix.replace.withIdentifier` - Replace with identifier
- `quickfix.replace.withIdentifier.multi` - Replace with identifier everywhere in file
- `quickfix.replace.withInterpolation` - Replace with interpolation
- `quickfix.replace.withInterpolation.multi` - Replace with interpolations everywhere in file
- `quickfix.replace.withIsEmpty` - Replace with 'isEmpty'
- `quickfix.replace.withIsEmpty.multi` - Replace with 'isEmpty' everywhere in file
- `quickfix.replace.withIsNaN` - Replace the condition with '.isNaN'
- `quickfix.replace.withIsNotEmpty` - Replace with 'isNotEmpty'
- `quickfix.replace.withIsNotEmpty.multi` - Replace with 'isNotEmpty' everywhere in file
- `quickfix.replace.withNotNullAware` - Replace with '...'
- `quickfix.replace.withNotNullAware.multi` - Replace with non-null-aware operator everywhere in file
- `quickfix.replace.withNotNullAwareElementOrEntry` - Remove the '?'
- `quickfix.replace.withNotNullAwareElementOrEntry.multi` - Remove the '?' everywhere in file
- `quickfix.replace.withNullAware` - Replace the '...' with a '...' in the invocation
- `quickfix.replace.withPartOfUri` - Replace with 'part of ...'
- `quickfix.replace.withTearOff` - Replace function literal with tear-off
- `quickfix.replace.withTearOff.multi` - Replace function literals with tear-offs everywhere in file
- `quickfix.replace.withUnicodeEscape` - Replace with Unicode escape
- `quickfix.replace.withVar` - Replace type annotation with 'var'
- `quickfix.replace.withVar.multi` - Replace type annotations with 'var' everywhere in file
- `quickfix.replace.withWildcard` - Replace with '_'
- `quickfix.replace.withWildcard.multi` - Replace with '_' everywhere in file
- `quickfix.replaceWithStrictCasts` - Replace with the strict-casts analysis mode
- `quickfix.replaceWithStrictRawTypes` - Replace with the strict-raw-types analysis mode
- `quickfix.sort.childPropertyLast` - Move child property to end of arguments
- `quickfix.sort.childPropertyLast.multi` - Move child properties to ends of arguments everywhere in file
- `quickfix.sort.combinators` - Sort combinators
- `quickfix.sort.combinators.multi` - Sort combinators everywhere in file
- `quickfix.sort.sortConstructorFirst` - Move before other members
- `quickfix.sort.sortConstructorFirst.multi` - Move all constructors before other members
- `quickfix.sort.sortUnnamedConstructorFirst` - Move before named constructors
- `quickfix.sort.sortUnnamedConstructorFirst.multi` - Move all unnamed constructors before named constructors
- `quickfix.split.multipleDeclarations` - Split multiple declarations into multiple lines
- `quickfix.split.multipleDeclarations.multi` - Split all multiple declarations into multiple lines
- `quickfix.surround.parentheses` - Surround with parentheses
- `quickfix.updateSdkConstraints` - Update the SDK constraints
- `quickfix.use.eqEqNull` - Use == null instead of 'is Null'
- `quickfix.use.eqEqNull.multi` - Use == null instead of 'is Null' everywhere in file
- `quickfix.use.isNotEmpty` - Use x.isNotEmpty instead of '!x.isEmpty'
- `quickfix.use.isNotEmpty.multi` - Use x.isNotEmpty instead of '!x.isEmpty' everywhere in file
- `quickfix.use.namedConstants` - Replace with a predefined named constant
- `quickfix.use.notEqNull` - Use != null instead of 'is! Null'
- `quickfix.use.notEqNull.multi` - Use != null instead of 'is! Null' everywhere in file
- `quickfix.use.rethrow` - Replace throw with rethrow
- `quickfix.use.rethrow.multi` - Replace throw with rethrow where possible in file
- `quickfix.wrap.unawaited` - Wrap in 'unawaited'
- `refactor.add.diagnosticPropertyReference` - Add a debug reference to this property
- `refactor.add.digitSeparators` - Add digit separators
- `refactor.add.returnType` - Add return type
- `refactor.add.showCombinator` - Add explicit 'show' combinator
- `refactor.add.typeAnnotation` - Add type annotation
- `refactor.assignToVariable` - Assign value to new local variable
- `refactor.convert.blockComment` - Convert to block documentation comment
- `refactor.convert.bodyToAsync` - Convert to async function body
- `refactor.convert.bodyToBlock` - Convert to block body
- `refactor.convert.bodyToExpression` - Convert to expression body
- `refactor.convert.classToEnum` - Convert class to an enum
- `refactor.convert.classToMixin` - Convert class to a mixin
- `refactor.convert.conditionalToIfElse` - Replace conditional with 'if-else'
- `refactor.convert.finalFieldToGetter` - Convert '...' to a getter
- `refactor.convert.forEachToForIndex` - Convert to for-index loop
- `refactor.convert.getterToFinalField` - Convert to final field
- `refactor.convert.ifCaseStatement` - Convert to 'if-case' statement
- `refactor.convert.ifCaseStatementChain` - Convert to 'if-case' statement chain
- `refactor.convert.ifElseToConditional` - Replace 'if-else
- `refactor.convert.isNot` - Convert to is!
- `refactor.convert.isNotEmpty` - Convert to 'isNotEmpty'
- `refactor.convert.lineComment` - Convert to line documentation comment
- `refactor.convert.packageToRelativeImport` - Convert to a relative import
- `refactor.convert.partOfToPartUri` - Convert to use a URI
- `refactor.convert.relativeToPackageImport` - Convert to 'package:' import
- `refactor.convert.switchExpression` - Convert to switch expression
- `refactor.convert.switchStatement` - Convert to switch statement
- `refactor.convert.toConstructorNormalParameter` - Convert to normal parameter
- `refactor.convert.toDoubleQuotedString` - Convert to double quoted string
- `refactor.convert.toForElement` - Convert to a 'for' element
- `refactor.convert.toGenericFunctionSyntax` - Convert into 'Function' syntax
- `refactor.convert.toIfElement` - Convert to an 'if' element
- `refactor.convert.toInitializingFormal` - Convert to initializing formal parameter
- `refactor.convert.toIntLiteral` - Convert to an int literal
- `refactor.convert.toMapLiteral` - Convert to map literal
- `refactor.convert.toMultilineString` - Convert to multiline string
- `refactor.convert.toNullAware` - Convert to use '?.'
- `refactor.convert.toSetLiteral` - Convert to set literal
- `refactor.convert.toSingleQuotedString` - Convert to single quoted string
- `refactor.convert.toSpread` - Convert to a spread
- `refactor.convert.toSuperParameters` - Convert to using super parameters
- `refactor.destructureLocalVariableAssignment` - Destructure variable assignment
- `refactor.encapsulateField` - Encapsulate field
- `refactor.exchangeOperands` - Exchange operands
- `refactor.flutter.convert.childToChildren` - Convert to children:
- `refactor.flutter.convert.toStatefulWidget` - Convert to StatefulWidget
- `refactor.flutter.convert.toStatelessWidget` - Convert to StatelessWidget
- `refactor.flutter.move.down` - Move widget down
- `refactor.flutter.move.up` - Move widget up
- `refactor.flutter.removeWidget` - Remove this widget
- `refactor.flutter.swap.withChild` - Swap with child
- `refactor.flutter.swap.withParent` - Swap with parent
- `refactor.flutter.wrap.builder` - Wrap with Builder
- `refactor.flutter.wrap.center` - Wrap with Center
- `refactor.flutter.wrap.column` - Wrap with Column
- `refactor.flutter.wrap.container` - Wrap with Container
- `refactor.flutter.wrap.expanded` - Wrap with Expanded
- `refactor.flutter.wrap.flexible` - Wrap with Flexible
- `refactor.flutter.wrap.futureBuilder` - Wrap with FutureBuilder
- `refactor.flutter.wrap.generic` - Wrap with widget...
- `refactor.flutter.wrap.padding` - Wrap with Padding
- `refactor.flutter.wrap.row` - Wrap with Row
- `refactor.flutter.wrap.sizedBox` - Wrap with SizedBox
- `refactor.flutter.wrap.streamBuilder` - Wrap with StreamBuilder
- `refactor.flutter.wrap.valueListenableBuilder` - Wrap with ValueListenableBuilder
- `refactor.inline` - Inline invocation of '...'
- `refactor.inlineElseBlock` - Join the 'else' block with inner 'if' statement
- `refactor.inlineEnclosingElseBlock` - Join 'if' statement with outer 'else' block
- `refactor.invertConditional` - Invert conditional expression
- `refactor.invertIf` - Invert 'if' statement
- `refactor.joinVariableDeclaration` - Join variable declaration
- `refactor.joinWithInnerIf` - Join 'if' statement with inner 'if' statement
- `refactor.joinWithOuterIf` - Join 'if' statement with outer 'if' statement
- `refactor.remove.async` - Remove 'async' modifier
- `refactor.remove.digitSeparators` - Remove digit separators
- `refactor.replace.withVar` - Replace type annotation with 'var'
- `refactor.shadowField` - Create a local variable that shadows the field
- `refactor.sort.child.properties.last` - Move child property to end of arguments
- `refactor.splitIfConjunction` - Split && condition
- `refactor.splitVariableDeclaration` - Split variable declaration
- `refactor.surround.block` - Surround with block
- `refactor.surround.curlyBraces` - Use curly braces
- `refactor.surround.doWhile` - Surround with 'do-while'
- `refactor.surround.forEach` - Surround with 'for'
- `refactor.surround.forIn` - Surround with 'for-in'
- `refactor.surround.if` - Surround with 'if'
- `refactor.surround.setState` - Surround with 'setState'
- `refactor.surround.tryCatch` - Surround with 'try-catch'
- `refactor.surround.tryFinally` - Surround with 'try-finally'
- `refactor.surround.while` - Surround with 'while'
