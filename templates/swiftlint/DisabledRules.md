# Disabled Rules
These are the rules that are disabled by default.
You have to explicitly enable them in your configuration file.

## AnyObject Protocol (anyobject_protocol)
Prefer using `AnyObject` over `class` for class-only protocols.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#anyobject-protocol),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/AnyObjectProtocolRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Array Init (array_init)
Prefer using `Array(seq)` over `seq.map { $0 }` to convert a sequence into an Array.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#array-init),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/ArrayInitRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Attributes (attributes)
Attributes should be on their own lines in functions and types, but on the same line as variables and imports.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#attributes),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/AttributesRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/AttributesConfiguration.swift)

## Closure Body Length (closure_body_length)
Closure bodies should not span too many lines.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#closure-body-length),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Metrics/ClosureBodyLengthRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityLevelsConfiguration.swift)

## Closure End Indentation (closure_end_indentation)
Closure end should have the same indentation as the line that started it.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#closure-end-indentation),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ClosureEndIndentationRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Closure Spacing (closure_spacing)
Closure expressions should have a single space inside each brace.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#closure-spacing),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ClosureSpacingRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Collection Element Alignment (collection_alignment)
All elements in a collection literal should be vertically aligned

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#collection-element-alignment),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/CollectionAlignmentRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/CollectionAlignmentConfiguration.swift)

## Conditional Returns on Newline (conditional_returns_on_newline)
Conditional statements should always return on the next line

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#conditional-returns-on-newline),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ConditionalReturnsOnNewlineRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/ConditionalReturnsOnNewlineConfiguration.swift)

## Contains over first not nil (contains_over_first_not_nil)
Prefer `contains` over `first(where:) != nil` and `firstIndex(where:) != nil`.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#contains-over-first-not-nil),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Performance/ContainsOverFirstNotNilRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Convenience Type (convenience_type)
Types used for hosting only static members should be implemented as a caseless enum to avoid instantiation.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#convenience-type),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ConvenienceTypeRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Discouraged Object Literal (discouraged_object_literal)
Prefer initializers over object literals.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#discouraged-object-literal),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/DiscouragedObjectLiteralRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/ObjectLiteralConfiguration.swift)

## Discouraged Optional Boolean (discouraged_optional_boolean)
Prefer non-optional booleans over optional booleans.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#discouraged-optional-boolean),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/DiscouragedOptionalBooleanRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Discouraged Optional Collection (discouraged_optional_collection)
Prefer empty collection over optional collection.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#discouraged-optional-collection),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/DiscouragedOptionalCollectionRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Empty Count (empty_count)
Prefer checking `isEmpty` over comparing `count` to zero.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#empty-count),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Performance/EmptyCountRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Empty String (empty_string)
Prefer checking `isEmpty` over comparing `string` to an empty string literal.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#empty-string),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Performance/EmptyStringRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Empty XCTest Method (empty_xctest_method)
Empty XCTest method should be avoided.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#empty-xctest-method),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/EmptyXCTestMethodRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Explicit ACL (explicit_acl)
All declarations should specify Access Control Level keywords explicitly.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#explicit-acl),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ExplicitACLRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Explicit Enum Raw Value (explicit_enum_raw_value)
Enums should be explicitly assigned their raw values.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#explicit-enum-raw-value),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ExplicitEnumRawValueRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Explicit Init (explicit_init)
Explicitly calling .init() should be avoided.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#explicit-init),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ExplicitInitRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Explicit Self (explicit_self)
Instance variables and functions should be explicitly accessed with 'self.'.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#explicit-self),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ExplicitSelfRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Explicit Top Level ACL (explicit_top_level_acl)
Top-level declarations should specify Access Control Level keywords explicitly.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#explicit-top-level-acl),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ExplicitTopLevelACLRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Explicit Type Interface (explicit_type_interface)
Properties should have a type interface

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#explicit-type-interface),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ExplicitTypeInterfaceRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/ExplicitTypeInterfaceConfiguration.swift)

## Extension Access Modifier (extension_access_modifier)
Prefer to use extension access modifiers

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#extension-access-modifier),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ExtensionAccessModifierRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Fallthrough (fallthrough)
Fallthrough should be avoided.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#fallthrough),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/FallthroughRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Fatal Error Message (fatal_error_message)
A fatalError call should have a message.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#fatal-error-message),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/FatalErrorMessageRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## File Header (file_header)
Header comments should be consistent with project patterns. The SWIFTLINT_CURRENT_FILENAME placeholder can optionally be used in the required and forbidden patterns. It will be replaced by the real file name.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#file-header),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/FileHeaderRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/FileHeaderConfiguration.swift)

## File Name (file_name)
File name should match a type or extension declared in the file (if any).

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#file-name),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/FileNameRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/FileNameConfiguration.swift)

## File Types Order (file_types_order)
Specifies how the types within a file should be ordered.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#file-types-order),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/FileTypesOrderRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/FileTypesOrderConfiguration.swift)

## First Where (first_where)
Prefer using `.first(where:)` over `.filter { }.first` in collections.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#first-where),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Performance/FirstWhereRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Force Unwrapping (force_unwrapping)
Force unwrapping should be avoided.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#force-unwrapping),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ForceUnwrappingRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Function Default Parameter at End (function_default_parameter_at_end)
Prefer to locate parameters with defaults toward the end of the parameter list.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#function-default-parameter-at-end),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/FunctionDefaultParameterAtEndRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Identical Operands (identical_operands)
Comparing two identical operands is likely a mistake.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#identical-operands),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/IdenticalOperandsRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Implicit Return (implicit_return)
Prefer implicit returns in closures.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#implicit-return),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ImplicitReturnRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Implicitly Unwrapped Optional (implicitly_unwrapped_optional)
Implicitly unwrapped optionals should be avoided when possible.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#implicitly-unwrapped-optional),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ImplicitlyUnwrappedOptionalRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/ImplicitlyUnwrappedOptionalConfiguration.swift)

## Joined Default Parameter (joined_default_parameter)
Discouraged explicit usage of the default separator.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#joined-default-parameter),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/JoinedDefaultParameterRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Last Where (last_where)
Prefer using `.last(where:)` over `.filter { }.last` in collections.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#last-where),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Performance/LastWhereRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Legacy Multiple (legacy_multiple)
Prefer using the `isMultiple(of:)` function instead of using the remainder operator (`%`).

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#legacy-multiple),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/LegacyMultipleRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Legacy Random (legacy_random)
Prefer using `type.random(in:)` over legacy functions.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#legacy-random),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/LegacyRandomRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Variable Declaration Whitespace (let_var_whitespace)
Let and var should be separated from other statements by a blank line.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#variable-declaration-whitespace),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/LetVarWhitespaceRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Literal Expression End Indentation (literal_expression_end_indentation)
Array and dictionary literal end should have the same indentation as the line that started it.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#literal-expression-end-indentation),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/LiteralExpressionEndIdentationRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Lower ACL than parent (lower_acl_than_parent)
Ensure definitions have a lower access control level than their enclosing parent

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#lower-acl-than-parent),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/LowerACLThanParentRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Missing Docs (missing_docs)
Declarations should be documented.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#missing-docs),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/MissingDocsRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/MissingDocsRuleConfiguration.swift)

## Modifier Order (modifier_order)
Modifier order should be consistent.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#modifier-order),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/ModifierOrderRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/ModifierOrderConfiguration.swift)

## Multiline Arguments (multiline_arguments)
Arguments should be either on the same line, or one per line.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#multiline-arguments),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/MultilineArgumentsRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/MultilineArgumentsConfiguration.swift)

## Multiline Arguments Brackets (multiline_arguments_brackets)
Multiline arguments should have their surrounding brackets in a new line.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#multiline-arguments-brackets),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/MultilineArgumentsBracketsRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Multiline Function Chains (multiline_function_chains)
Chained function calls should be either on the same line, or one per line.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#multiline-function-chains),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/MultilineFunctionChainsRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Multiline Literal Brackets (multiline_literal_brackets)
Multiline literals should have their surrounding brackets in a new line.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#multiline-literal-brackets),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/MultilineLiteralBracketsRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Multiline Parameters (multiline_parameters)
Functions and methods parameters should be either on the same line, or one per line.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#multiline-parameters),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/MultilineParametersRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Multiline Parameters Brackets (multiline_parameters_brackets)
Multiline parameters should have their surrounding brackets in a new line.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#multiline-parameters-brackets),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/MultilineParametersBracketsRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Nimble Operator (nimble_operator)
Prefer Nimble operator overloads over free matcher functions.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#nimble-operator),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/NimbleOperatorRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## No Extension Access Modifier (no_extension_access_modifier)
Prefer not to use extension access modifiers

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#no-extension-access-modifier),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/NoExtensionAccessModifierRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## No Grouping Extension (no_grouping_extension)
Extensions shouldn't be used to group code within the same source file.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#no-grouping-extension),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/NoGroupingExtensionRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## NSLocalizedString Key (nslocalizedstring_key)
Static strings should be used as key in NSLocalizedString in order to genstrings work.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#nslocalizedstring-key),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/NSLocalizedStringKeyRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## NSLocalizedString Require Bundle (nslocalizedstring_require_bundle)
Calls to NSLocalizedString should specify the bundle which contains the strings file.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#nslocalizedstring-require-bundle),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/NSLocalizedStringRequireBundleRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Number Separator (number_separator)
Underscores should be used as thousand separator in large decimal numbers.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#number-separator),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/NumberSeparatorRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/NumberSeparatorConfiguration.swift)

## Object Literal (object_literal)
Prefer object literals over image and color inits.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#object-literal),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ObjectLiteralRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/ObjectLiteralConfiguration.swift)

## Operator Usage Whitespace (operator_usage_whitespace)
Operators should be surrounded by a single whitespace when they are being used.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#operator-usage-whitespace),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/OperatorUsageWhitespaceRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Overridden methods call super (overridden_super_call)
Some overridden methods should always call super

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#overridden-methods-call-super),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/OverriddenSuperCallRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/OverridenSuperCallConfiguration.swift)

## Override in Extension (override_in_extension)
Extensions shouldn't override declarations.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#override-in-extension),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/OverrideInExtensionRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Pattern Matching Keywords (pattern_matching_keywords)
Combine multiple pattern matching bindings by moving keywords out of tuples.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#pattern-matching-keywords),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/PatternMatchingKeywordsRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Prefixed Top-Level Constant (prefixed_toplevel_constant)
Top-level constants should be prefixed by `k`.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#prefixed-top-level-constant),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/PrefixedTopLevelConstantRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/PrefixedConstantRuleConfiguration.swift)

## Private Actions (private_action)
IBActions should be private.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#private-actions),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/PrivateActionRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Private Outlets (private_outlet)
IBOutlets should be private to avoid leaking UIKit to higher layers.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#private-outlets),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/PrivateOutletRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/PrivateOutletRuleConfiguration.swift)

## Prohibited Interface Builder (prohibited_interface_builder)
Creating views using Interface Builder should be avoided.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#prohibited-interface-builder),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/ProhibitedInterfaceBuilderRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Prohibited calls to super (prohibited_super_call)
Some methods should not call super

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#prohibited-calls-to-super),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/ProhibitedSuperRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/ProhibitedSuperConfiguration.swift)

## Quick Discouraged Call (quick_discouraged_call)
Discouraged call inside 'describe' and/or 'context' block.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#quick-discouraged-call),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/QuickDiscouragedCallRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Quick Discouraged Focused Test (quick_discouraged_focused_test)
Discouraged focused test. Other tests won't run while this one is focused.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#quick-discouraged-focused-test),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/QuickDiscouragedFocusedTestRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Quick Discouraged Pending Test (quick_discouraged_pending_test)
Discouraged pending test. This test won't run while it's marked as pending.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#quick-discouraged-pending-test),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/QuickDiscouragedPendingTestRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Reduce Into (reduce_into)
Prefer `reduce(into:_:)` over `reduce(_:_:)` for copy-on-write types

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#reduce-into),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Performance/ReduceIntoRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Redundant Nil Coalescing (redundant_nil_coalescing)
nil coalescing operator is only evaluated if the lhs is nil, coalescing operator with nil as rhs is redundant

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#redundant-nil-coalescing),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/RedundantNilCoalescingRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Redundant Type Annotation (redundant_type_annotation)
Variables should not have redundant type annotation

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#redundant-type-annotation),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/RedundantTypeAnnotationRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Required Deinit (required_deinit)
Classes should have an explicit deinit method.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#required-deinit),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/RequiredDeinitRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Required Enum Case (required_enum_case)
Enums conforming to a specified protocol must implement a specific case(s).

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#required-enum-case),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/RequiredEnumCaseRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/RequiredEnumCaseRuleConfiguration.swift)

## Single Test Class (single_test_class)
Test files should contain a single QuickSpec or XCTestCase class.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#single-test-class),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/SingleTestClassRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Min or Max over Sorted First or Last (sorted_first_last)
Prefer using `min()` or `max()` over `sorted().first` or `sorted().last`

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#min-or-max-over-sorted-first-or-last),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Performance/SortedFirstLastRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Sorted Imports (sorted_imports)
Imports should be sorted.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#sorted-imports),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/SortedImportsRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Static Operator (static_operator)
Operators should be declared as static functions, not free functions.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#static-operator),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/StaticOperatorRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Strict fileprivate (strict_fileprivate)
`fileprivate` should be avoided.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#strict-fileprivate),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/StrictFilePrivateRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Strong IBOutlet (strong_iboutlet)
@IBOutlets shouldn't be declared as weak.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#strong-iboutlet),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/StrongIBOutletRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Switch Case on Newline (switch_case_on_newline)
Cases inside a switch should always be on a newline

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#switch-case-on-newline),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/SwitchCaseOnNewlineRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Toggle Bool (toggle_bool)
Prefer `someBool.toggle()` over `someBool = !someBool`.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#toggle-bool),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/ToggleBoolRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Trailing Closure (trailing_closure)
Trailing closure syntax should be used whenever possible.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#trailing-closure),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/TrailingClosureRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/TrailingClosureConfiguration.swift)

## Type Contents Order (type_contents_order)
Specifies the order of subtypes, properties, methods & more within a type.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#type-contents-order),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/TypeContentsOrderRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/TypeContentsOrderConfiguration.swift)

## Unavailable Function (unavailable_function)
Unimplemented functions should be marked as unavailable.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#unavailable-function),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/UnavailableFunctionRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Unneeded Parentheses in Closure Argument (unneeded_parentheses_in_closure_argument)
Parentheses are not needed when declaring closure arguments.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#unneeded-parentheses-in-closure-argument),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/UnneededParenthesesInClosureArgumentRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Unowned Variable Capture (unowned_variable_capture)
Prefer capturing references as weak to avoid potential crashes.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#unowned-variable-capture),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/UnownedVariableCaptureRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Untyped Error in Catch (untyped_error_in_catch)
Catch statements should not declare error variables without type casting.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#untyped-error-in-catch),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/UntypedErrorInCatchRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Unused Declaration (unused_declaration)
Declarations should be referenced at least once within all files linted.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#unused-declaration),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/UnusedDeclarationRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/UnusedDeclarationConfiguration.swift)

## Unused Import (unused_import)
All imported modules should be required to make the file compile.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#unused-import),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/UnusedImportRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Vertical Parameter Alignment On Call (vertical_parameter_alignment_on_call)
Function parameters should be aligned vertically if they're in multiple lines in a method call.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#vertical-parameter-alignment-on-call),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/VerticalParameterAlignmentOnCallRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Vertical Whitespace Between Cases (vertical_whitespace_between_cases)
Include a single empty line between switch cases.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#vertical-whitespace-between-cases),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/VerticalWhitespaceBetweenCasesRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Vertical Whitespace before Closing Braces (vertical_whitespace_closing_braces)
Don't include vertical whitespace (empty line) before closing braces.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#vertical-whitespace-before-closing-braces),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/VerticalWhitespaceClosingBracesRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Vertical Whitespace after Opening Braces (vertical_whitespace_opening_braces)
Don't include vertical whitespace (empty line) after opening braces.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#vertical-whitespace-after-opening-braces),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Style/VerticalWhitespaceOpeningBracesRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## XCTest Specific Matcher (xct_specific_matcher)
Prefer specific XCTest matchers over `XCTAssertEqual` and `XCTAssertNotEqual`

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#xctest-specific-matcher),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Idiomatic/XCTSpecificMatcherRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)

## Yoda condition rule (yoda_condition)
The variable should be placed on the left, the constant on the right of a comparison operator.

[Rule](https://github.com/realm/SwiftLint/blob/master/Rules.md#yoda-condition-rule),
[Implementation](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/Lint/YodaConditionRule.swift),
[Configuration](https://github.com/realm/SwiftLint/blob/master/Source/SwiftLintFramework/Rules/RuleConfigurations/SeverityConfiguration.swift)
