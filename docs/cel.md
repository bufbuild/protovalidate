![The Buf logo](https://raw.githubusercontent.com/bufbuild/protovalidate/main/.github/buf-logo.svg) 

# Common Expression Language (CEL)

[Common Expression Language (CEL)](https://github.com/google/cel-spec) is a lightweight, high-performance expression language designed to be embedded within applications. All of Protovalidate's [standard rules][standard-rules] are written in CEL, and it's how Protovalidate allows you to write your own [custom][custom-rules] or [predefined][predefined-rules] rules.

## Learn more about CEL in Protovalidate

Learn more about using CEL in [Protovalidate's documentation][protovalidate]:

- Write [custom rules][custom-rules] for messages or fields.
- Create reusable [predefined rules][predefined-rules].
- Explore the reference documentation for [Protovalidate's CEL extensions][cel-extensions].
- See [the inner workings][advanced-cel] of how CEL and Protovalidate work together.

## Learn more about CEL

Protovalidate CEL expressions can use the entire CEL standard library, including:

- CEL's standard functions, as detailed in the [list of standard definitions](https://github.com/google/cel-spec/blob/master/doc/langdef.md#list-of-standard-definitions)
- CEL's standard [macros](https://github.com/google/cel-spec/blob/v0.8.0/doc/langdef.md#macros)
- CEL's [extended string function library](https://pkg.go.dev/github.com/google/cel-go/ext#Strings)

[protovalidate]: https://buf.build/docs/protovalidate/
[cel]: https://cel.dev
[standard-rules]: https://buf.build/docs/protovalidate/schemas/standard-rules/
[custom-rules]: https://buf.build/docs/protovalidate/schemas/custom-rules/
[predefined-rules]: https://buf.build/docs/protovalidate/schemas/predefined-rules/
[cel-extensions]: https://buf.build/docs/reference/protovalidate/cel_extensions/
[advanced-cel]: https://buf.build/docs/protovalidate/cel/
