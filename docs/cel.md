![The Buf logo](https://raw.githubusercontent.com/bufbuild/protovalidate/main/.github/buf-logo.svg) 

# Common Expression Language (CEL)

[Common Expression Language (CEL)](https://github.com/google/cel-spec) is a lightweight, high-performance expression language designed to be embedded within applications. All of Protovalidate's [standard rules][standard-rules] are written in CEL, and it's how Protovalidate allows you to write your own [custom][custom-rules] or [predefined][predefined-rules] rules.

## Learn more about CEL in Protovalidate

Learn more about using CEL at [protovalidate.com][protovalidate]:

- Write [custom rules][custom-rules] for messages or fields.
- Create reusable [predefined rules][predefined-rules].
- Explore the reference documentation for [Protovalidate's CEL extensions][cel-extensions].
- See [the inner workings][advanced-cel] of how CEL and Protovalidate work together.

## Learn more about CEL

Protovalidate CEL expressions can use the entire CEL standard library, including:

- CEL's standard functions, as detailed in the [list of standard definitions](https://github.com/google/cel-spec/blob/master/doc/langdef.md#list-of-standard-definitions)
- CEL's standard [macros](https://github.com/google/cel-spec/blob/v0.8.0/doc/langdef.md#macros)
- CEL's [extended string function library](https://pkg.go.dev/github.com/google/cel-go/ext#Strings)

[protovalidate]: .https://protovalidate.com/
[cel]: https://cel.dev
[standard-rules]: .https://protovalidate.com/schemas/standard-rules/
[custom-rules]: .https://protovalidate.com/schemas/custom-rules/
[predefined-rules]: .https://protovalidate.com/schemas/predefined-rules/
[cel-extensions]: .https://protovalidate.com/reference/cel_extensions/
[advanced-cel]: .https://protovalidate.com/cel/
