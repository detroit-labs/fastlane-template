# Enabled Rules
These are the rules that are enabled by default.
You have to explicitly disable them in your configuration file.

## Block Based KVO (block_based_kvo)
Prefer the new block based KVO API with keypaths when using Swift 3.2 or later.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#block-based-kvo),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/BlockBasedKVORule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Class Delegate Protocol (class_delegate_protocol)
Delegate protocols should be class-only so they can be weakly referenced.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#class-delegate-protocol),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/ClassDelegateProtocolRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Closing Brace Spacing (closing_brace)
Closing brace with closing parenthesis should not have any whitespaces in the middle.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#closing-brace-spacing),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ClosingBraceRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Closure Parameter Position (closure_parameter_position)
Closure parameters should be on the same line as opening brace.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#closure-parameter-position),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ClosureParameterPositionRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Colon (colon)
Colons should be next to the identifier when specifying a type and next to the key in dictionary literals.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#colon),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ColonRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/ColonConfiguration.swift)

## Comma Spacing (comma)
There should be no space before and one after any comma.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#comma-spacing),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/CommaRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Compiler Protocol Init (compiler_protocol_init)
The initializers declared in compiler protocols such as `ExpressibleByArrayLiteral` shouldn't be called directly.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#compiler-protocol-init),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/CompilerProtocolInitRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Control Statement (control_statement)
`if`, `for`, `guard`, `switch`, `while`, and `catch` statements shouldn't unnecessarily wrap their conditionals or arguments in parentheses.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#control-statement),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ControlStatementRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Custom Rules (custom_rules)
Create custom rules by providing a regex string. Optionally specify what syntax kinds to match against, the severity level, and what message to display.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#custom-rules),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/CustomRules.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/CustomRulesConfiguration.swift)

## Cyclomatic Complexity (cyclomatic_complexity)
Complexity of function bodies should be limited.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#cyclomatic-complexity),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Metrics/CyclomaticComplexityRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/CyclomaticComplexityConfiguration.swift)

## Deployment Target (deployment_target)
Availability checks or attributes shouldn't be using older versions that are satisfied by the deployment target.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#deployment-target),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/DeploymentTargetRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/DeploymentTargetConfiguration.swift)

## Discarded Notification Center Observer (discarded_notification_center_observer)
When registering for a notification using a block, the opaque observer that is returned should be stored so it can be removed later.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#discarded-notification-center-observer),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/DiscardedNotificationCenterObserverRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Discouraged Direct Initialization (discouraged_direct_init)
Discouraged direct initialization of types that can be harmful.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#discouraged-direct-initialization),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/DiscouragedDirectInitRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/DiscouragedDirectInitConfiguration.swift)

## Duplicate Enum Cases (duplicate_enum_cases)
Enum can't contain multiple cases with the same name.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#duplicate-enum-cases),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/DuplicateEnumCasesRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Duplicate Imports (duplicate_imports)
Imports should be unique.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#duplicate-imports),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/DuplicateImportsRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Dynamic Inline (dynamic_inline)
Avoid using 'dynamic' and '@inline(__always)' together.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#dynamic-inline),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/DynamicInlineRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Empty Enum Arguments (empty_enum_arguments)
Arguments can be omitted when matching enums with associated types if they are not used.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#empty-enum-arguments),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/EmptyEnumArgumentsRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Empty Parameters (empty_parameters)
Prefer `() -> ` over `Void -> `.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#empty-parameters),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/EmptyParametersRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Empty Parentheses with Trailing Closure (empty_parentheses_with_trailing_closure)
When using trailing closures, empty parentheses should be avoided after the method call.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#empty-parentheses-with-trailing-closure),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/EmptyParenthesesWithTrailingClosureRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## File Line Length (file_length)
Files should not span too many lines.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#file-line-length),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Metrics/FileLengthRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/FileLengthRuleConfiguration.swift)

## For Where (for_where)
`where` clauses are preferred over a single `if` inside a `for`.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#for-where),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ForWhereRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Force Cast (force_cast)
Force casts should be avoided.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#force-cast),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ForceCastRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Force Try (force_try)
Force tries should be avoided.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#force-try),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ForceTryRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Function Body Length (function_body_length)
Functions bodies should not span too many lines.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#function-body-length),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Metrics/FunctionBodyLengthRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityLevelsConfiguration.swift)

## Function Parameter Count (function_parameter_count)
Number of function parameters should be low.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#function-parameter-count),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Metrics/FunctionParameterCountRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/FunctionParameterCountConfiguration.swift)

## Generic Type Name (generic_type_name)
Generic type name should only contain alphanumeric characters, start with an uppercase character and span between 1 and 20 characters in length.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#generic-type-name),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/GenericTypeNameRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/NameConfiguration.swift)

## Identifier Name (identifier_name)
Identifier names should only contain alphanumeric characters and start with a lowercase character or should only contain capital letters. In an exception to the above, variable names may start with a capital letter when they are declared static and immutable. Variable names should not be too long or too short.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#identifier-name),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/IdentifierNameRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/NameConfiguration.swift)

## Implicit Getter (implicit_getter)
Computed read-only properties and subscripts should avoid using the get keyword.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#implicit-getter),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ImplicitGetterRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Inert Defer (inert_defer)
If defer is at the end of its parent scope, it will be executed right where it is anyway.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#inert-defer),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/InertDeferRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Is Disjoint (is_disjoint)
Prefer using `Set.isDisjoint(with:)` over `Set.intersection(_:).isEmpty`.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#is-disjoint),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/IsDisjointRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Large Tuple (large_tuple)
Tuples shouldn't have too many members. Create a custom type instead.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#large-tuple),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Metrics/LargeTupleRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityLevelsConfiguration.swift)

## Leading Whitespace (leading_whitespace)
Files should not contain leading whitespace.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#leading-whitespace),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/LeadingWhitespaceRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Legacy CGGeometry Functions (legacy_cggeometry_functions)
Struct extension properties and methods are preferred over legacy functions

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#legacy-cggeometry-functions),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/LegacyCGGeometryFunctionsRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Legacy Constant (legacy_constant)
Struct-scoped constants are preferred over legacy global constants.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#legacy-constant),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/LegacyConstantRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Legacy Constructor (legacy_constructor)
Swift constructors are preferred over legacy convenience functions.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#legacy-constructor),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/LegacyConstructorRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Legacy Hashing (legacy_hashing)
Prefer using the `hash(into:)` function instead of overriding `hashValue`

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#legacy-hashing),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/LegacyHashingRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Legacy NSGeometry Functions (legacy_nsgeometry_functions)
Struct extension properties and methods are preferred over legacy functions

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#legacy-nsgeometry-functions),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/LegacyNSGeometryFunctionsRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Line Length (line_length)
Lines should not span too many characters.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#line-length),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Metrics/LineLengthRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/LineLengthConfiguration.swift)

## Mark (mark)
MARK comment should be in valid format. e.g. '// MARK: ...' or '// MARK: - ...'

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#mark),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/MarkRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Multiple Closures with Trailing Closure (multiple_closures_with_trailing_closure)
Trailing closure syntax should not be used when passing more than one closure argument.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#multiple-closures-with-trailing-closure),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/MultipleClosuresWithTrailingClosureRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Nesting (nesting)
Types should be nested at most 1 level deep, and statements should be nested at most 5 levels deep.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#nesting),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Metrics/NestingRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/NestingConfiguration.swift)

## No Fallthrough Only (no_fallthrough_only)
Fallthroughs can only be used if the `case` contains at least one other statement.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#no-fallthrough-only),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/NoFallthroughOnlyRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Notification Center Detachment (notification_center_detachment)
An object should only remove itself as an observer in `deinit`.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#notification-center-detachment),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/NotificationCenterDetachmentRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## NSObject Prefer isEqual (nsobject_prefer_isequal)
NSObject subclasses should implement isEqual instead of ==.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#nsobject-prefer-isequal),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/NSObjectPreferIsEqualRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Opening Brace Spacing (opening_brace)
Opening braces should be preceded by a single space and on the same line as the declaration.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#opening-brace-spacing),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/OpeningBraceRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Operator Function Whitespace (operator_whitespace)
Operators should be surrounded by a single whitespace when defining them.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#operator-function-whitespace),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/OperatorFunctionWhitespaceRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Private over fileprivate (private_over_fileprivate)
Prefer `private` over `fileprivate` declarations.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#private-over-fileprivate),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/PrivateOverFilePrivateRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/PrivateOverFilePrivateRuleConfiguration.swift)

## Private Unit Test (private_unit_test)
Unit tests marked private are silently skipped.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#private-unit-test),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/PrivateUnitTestRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/PrivateUnitTestConfiguration.swift)

## Protocol Property Accessors Order (protocol_property_accessors_order)
When declaring properties in protocols, the order of accessors should be `get set`.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#protocol-property-accessors-order),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ProtocolPropertyAccessorsOrderRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Reduce Boolean (reduce_boolean)
Prefer using `.allSatisfy()` or `.contains()` over `reduce(true)` or `reduce(false)`

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#reduce-boolean),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Performance/ReduceBooleanRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Redundant Discardable Let (redundant_discardable_let)
Prefer `_ = foo()` over `let _ = foo()` when discarding a result from a function.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#redundant-discardable-let),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/RedundantDiscardableLetRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Redundant @objc Attribute (redundant_objc_attribute)
Objective-C attribute (@objc) is redundant in declaration.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#redundant-objc-attribute),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/RedundantObjcAttributeRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Redundant Optional Initialization (redundant_optional_initialization)
Initializing an optional variable with nil is redundant.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#redundant-optional-initialization),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/RedundantOptionalInitializationRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Redundant Set Access Control Rule (redundant_set_access_control)
Property setter access level shouldn't be explicit if it's the same as the variable access level.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#redundant-set-access-control-rule),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/RedundantSetAccessControlRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Redundant String Enum Value (redundant_string_enum_value)
String enum values can be omitted when they are equal to the enumcase name.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#redundant-string-enum-value),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/RedundantStringEnumValueRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Redundant Void Return (redundant_void_return)
Returning Void in a function declaration is redundant.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#redundant-void-return),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/RedundantVoidReturnRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Returning Whitespace (return_arrow_whitespace)
Return arrow and return type should be separated by a single space or on a separate line.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#returning-whitespace),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ReturnArrowWhitespaceRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Shorthand Operator (shorthand_operator)
Prefer shorthand operators (+=, -=, *=, /=) over doing the operation and assigning.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#shorthand-operator),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ShorthandOperatorRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Statement Position (statement_position)
Else and catch should be on the same line, one space after the previous declaration.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#statement-position),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/StatementPositionRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/StatementConfiguration.swift)

## Superfluous Disable Command (superfluous_disable_command)
SwiftLint 'disable' commands are superfluous when the disabled rule would not have triggered a violation in the disabled region. Use " - " if you wish to document a command.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#superfluous-disable-command),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/SuperfluousDisableCommandRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Switch and Case Statement Alignment (switch_case_alignment)
Case statements should vertically align with their enclosing switch statement, or indented if configured otherwise.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#switch-and-case-statement-alignment),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/SwitchCaseAlignmentRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SwitchCaseAlignmentConfiguration.swift)

## Syntactic Sugar (syntactic_sugar)
Shorthand syntactic sugar should be used, i.e. [Int] instead of Array<Int>.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#syntactic-sugar),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/SyntacticSugarRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Todo (todo)
TODOs and FIXMEs should be resolved.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#todo),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/TodoRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Trailing Comma (trailing_comma)
Trailing commas in arrays and dictionaries should be avoided/enforced.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#trailing-comma),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/TrailingCommaRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/TrailingCommaConfiguration.swift)

## Trailing Newline (trailing_newline)
Files should have a single trailing newline.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#trailing-newline),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/TrailingNewlineRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Trailing Semicolon (trailing_semicolon)
Lines should not have trailing semicolons.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#trailing-semicolon),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/TrailingSemicolonRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Trailing Whitespace (trailing_whitespace)
Lines should not have trailing whitespace.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#trailing-whitespace),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/TrailingWhitespaceRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/TrailingWhitespaceConfiguration.swift)

## Type Body Length (type_body_length)
Type bodies should not span too many lines.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#type-body-length),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Metrics/TypeBodyLengthRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityLevelsConfiguration.swift)

## Type Name (type_name)
Type name should only contain alphanumeric characters, start with an uppercase character and span between 3 and 40 characters in length.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#type-name),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/TypeNameRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/NameConfiguration.swift)

## Unneeded Break in Switch (unneeded_break_in_switch)
Avoid using unneeded break statements.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#unneeded-break-in-switch),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/UnneededBreakInSwitchRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Unused Capture List (unused_capture_list)
Unused reference in a capture list should be removed.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#unused-capture-list),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/UnusedCaptureListRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Unused Closure Parameter (unused_closure_parameter)
Unused parameter in a closure should be replaced with _.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#unused-closure-parameter),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/UnusedClosureParameterRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Unused Control Flow Label (unused_control_flow_label)
Unused control flow label should be removed.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#unused-control-flow-label),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/UnusedControlFlowLabelRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Unused Enumerated (unused_enumerated)
When the index or the item is not used, `.enumerated()` can be removed.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#unused-enumerated),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/UnusedEnumeratedRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Unused Optional Binding (unused_optional_binding)
Prefer `!= nil` over `let _ =`

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#unused-optional-binding),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/UnusedOptionalBindingRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/UnusedOptionalBindingConfiguration.swift)

## Unused Setter Value (unused_setter_value)
Setter value is not used.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#unused-setter-value),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/UnusedSetterValueRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Valid IBInspectable (valid_ibinspectable)
@IBInspectable should be applied to variables only, have its type explicit and be of a supported type

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#valid-ibinspectable),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/ValidIBInspectableRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Vertical Parameter Alignment (vertical_parameter_alignment)
Function parameters should be aligned vertically if they're in multiple lines in a declaration.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#vertical-parameter-alignment),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/VerticalParameterAlignmentRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Vertical Whitespace (vertical_whitespace)
Limit vertical whitespace to a single empty line.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#vertical-whitespace),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/VerticalWhitespaceRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/VerticalWhitespaceConfiguration.swift)

## Void Return (void_return)
Prefer `-> Void` over `-> ()`.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#void-return),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/VoidReturnRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Weak Delegate (weak_delegate)
Delegates should be weak to avoid reference cycles.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#weak-delegate),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/WeakDelegateRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## XCTFail Message (xctfail_message)
An XCTFail call should include a description of the assertion.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#xctfail-message),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/XCTFailMessageRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)
