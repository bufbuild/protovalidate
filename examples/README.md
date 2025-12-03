# Examples

This directory has examples for Protovalidate.

## Standard Rules

`rule_*.proto` are Protovalidate examples based on standard rules.

To get started, check out the following examples:

- [`option_number_range.proto`](option_number_range.proto)
- [`option_string_match_pattern.proto`](option_string_match_pattern.proto)
- [`option_repeated.proto`](option_repeated.proto)

The complete set of options can be found [here](../proto/protovalidate/buf/validate/validate.proto).

## Custom Rules

`cel_*.proto` are Protovalidate examples that validate with CEL expressions.

To get started, check out the following examples:

- [`cel_field_access.proto`](cel_field_access.proto)
- [`cel_conditional_operator.proto`](cel_conditional_operator.proto)
- [`cel_field_presence.proto`](cel_field_presence.proto)

The CEL language specification can be found [here](https://github.com/google/cel-spec/blob/master/doc/langdef.md).
