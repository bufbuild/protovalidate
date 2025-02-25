# Common Expression Language (CEL)

The [Common Expression Language (CEL)](https://github.com/google/cel-spec) is
utilized by `protovalidate` for the formulation of validation rules, serving
both as the basis for the standard constraints as well as custom constraints.

[CEL](https://github.com/google/cel-spec/blob/master/doc/langdef.md) features a
user-friendly syntax, reminiscent of the expressions found in C, C++, Java,
JavaScript, and Go.

## Usage in `protovalidate`

The CEL expressions within protovalidate can expect to have access to the
following features of the CEL language:

- CEL's standard functions, as detailed in the [list of standard definitions](https://github.com/google/cel-spec/blob/master/doc/langdef.md#list-of-standard-definitions)
- CEL's standard [macros](https://github.com/google/cel-spec/blob/v0.8.0/doc/langdef.md#macros)
- CEL's [extended string function library](https://pkg.go.dev/github.com/google/cel-go/ext#Strings)
- `protovalidate`'s [custom functions and overloads][cel-extensions]

`protovalidate` seeks to be as portable as possible. As such, providing further
functionality beyond what's captured here is not recommended and not supported 
by the library or implementations.

## Custom variables, functions, and overloads

This documentation has moved to [CEL extensions][cel-extensions] within [Buf Docs][buf-docs].

[buf-docs]: https://buf.build/docs
[cel-extensions]: https://buf.build/docs/reference/protovalidate/cel_extensions/
