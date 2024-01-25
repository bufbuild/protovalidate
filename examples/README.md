# Examples

This directory has examples for protovalidate.

## Standard Constraints

`rule_*.proto` has protovalidate examples based on options.

To get started, checkout the following examples:

- [`option_number_range.proto`](option_number_range.proto)
- [`option_string_match_pattern.proto`](option_string_match_pattern.proto)
- [`option_repeated.proto`](option_repeated.proto)

The complete set of options can be found [here](../proto/protovalidate/buf/validate/validate.proto).

## Custom Constraints

`cel_*.proto` has protovalidate examples that validate with CEL expressions.

To get started, checkout the following examples:

- [`cel_field_access.proto`](cel_field_access.proto)
- [`cel_conditional_operator.proto`](cel_conditional_operator.proto)
- [`cel_field_presence.proto`](cel_field_presence.proto)

The language specification can be found [here](https://github.com/google/cel-spec/blob/master/doc/langdef.md).
