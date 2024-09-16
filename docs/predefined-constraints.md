# Predefined Constraints

Custom constraints in `protovalidate` afford a lot of power, but can become
cumbersome and repetitive when the same kind of custom constraints are needed
across multiple fields or messages. To this end, `protovalidate` provides a
mechanism for creating reusable constraints that can be applied on multiple
fields.

Predefined constraints require Protobuf extensions, which are not available in
proto3. Either proto2 or at least Protobuf 2023 Edition must be used to define
predefined constraints. Predefined constraints defined in proto2 or Protobuf
2023 Edition or later can be imported and utilized in proto3 files.

## Predefined Field Constraints

To create a predefined field constraint, extend one of the standard rules
messages. For example, to define a new rule for `float` fields, extend
`buf.validate.FloatRules`, as follows:

```proto
import "buf/validate/validate.proto";

extend buf.validate.FloatRules {
  float abs_range = 80048952 [(buf.validate.predefined).cel = {
    id: "float.abs_range"
    expression: "this >= -rule && this <= rule"
    message: "float value is out of range"
  }];
}
```

> [!TIP]
> Constraints can refer to their own value with the `rule` constant. Rules apply
> when they are set, so a boolean constraint in the form of `is_...` should
> always check to ensure that `rule` is `true`.

> [!WARNING]
> Be mindful that extension numbers must not conflict with any other extension
> to the same message across _all_ Protobuf files in a given process. This
> restriction also applies to users that consume Protobuf files indirectly as
> dependencies. The same extension number may be re-used across different kinds
> of constraint, e.g. `1000` in `FloatRules` is distinct from `1000` in
> `Int32Rules`.
>
> Extension numbers may be from 1000 to 536870911, inclusive. Values from 1000
> to 99999 are reserved for [Protobuf Global Extension Registry][1] entries, and
> values from 100000 to 536870911 are reserved for integers that are not
> explicitly assigned. It is discouraged to use the latter range for rules that
> are defined in public schemas due to the risk of conflicts. 

[1]: https://github.com/protocolbuffers/protobuf/blob/main/docs/options.md "Protobuf Global Extension Registry"

Similarly to the standard constraints, a rule will take effect when it is set on
the options of a field. Here is how one might use a predefined constraint:

```proto
message MyMessage {
  float normal_value = 1 [(buf.validate.field).float.(abs_range) = 1.0];
}
```

> [!TIP]
> Extensions are always qualified by the package they are defined in. In this
> example, we assume that `abs_range` is defined in the same package it is used
> in, so no further qualification is needed. In other cases, you will need to
> qualify the package name of the extension, e.g.
> `(buf.validate.field).float.(foo.bar.abs_range)`
