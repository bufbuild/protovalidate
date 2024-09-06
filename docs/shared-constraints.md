# Shared Constraints

Custom constraints in `protovalidate` afford a lot of power, but can become
cumbersome and repetitive when the same kind of custom constraints are needed
across multiple fields or messages. To this end, `protovalidate` provides a
mechanism for creating reusable constraints that can be applied on multiple
fields.

Shared constraints require Protobuf extensions, which are not available in
proto3. Either proto2 or at least Protobuf 2023 Edition must be used to define
shared constraints. Shared constraints defined in proto2 or Protobuf 2023
Edition or later can be imported and utilized in proto3 files.

## Shared Field Constraints

To define a shared field rule, extend one of the standard rules messages. For
example, to define a new rule for `float` fields, extend
`buf.validate.FloatRules`, as follows:

```proto
import "buf/validate/shared/constraints.proto";
import "buf/validate/validate.proto";

extend buf.validate.FloatRules {
  float abs_range = 80048952 [(buf.validate.shared.field).cel = {
    id: "float.abs_range"
    expression: "this >= -rule && this <= rule"
    message: "float value is out of range"
  }];
}
```

> [!TIP]
> Rules can refer to their own value with the `rule` constant.

> [!WARNING]
> Be mindful that extension numbers must not conflict with any other extension
> to the same message across _all_ Protobuf files in a given process. This
> restriction also applies to users that consume Protobuf files indirectly as
> dependencies. The same extension number may be re-used across different kinds
> of rules.
>
> Extension numbers may be from 1000 to 536870911, inclusive. Values from 1000
> to 49999 are reserved for [Protobuf Global Extension Registry][1] entries, and
> values from 50000 to 536870911 are reserved for randomly-generated integers.
> If using a randomly-generated integer as a tag number, please use an
> appropriate source of randomness. [This link to random.org][2] can be used to
> generate such an appropriate number.

[1]: https://github.com/protocolbuffers/protobuf/blob/main/docs/options.md "Protobuf Global Extension Registry"
[2]: https://www.random.org/integers/?num=1&min=50000&max=536870911&format=html&col=1&base=10 "RANDOM.ORG - Integer Generator"

Similarly to the standard constraints, a rule will take effect when it is set on
the options of a field. Here is how one might use a shared rule:

```proto
message MyMessage {
  float normal_value = 1 [(buf.validate.field).float.(abs_range) = 1.0];
}
```

> [!TIP]
> Extensions are qualified by the context they are declared in. Therefore, the
> name in the parenthesis may need to be more specific if the extension appears
> in a different package or under a message. Like other type identifiers, parts
> of the path that are common with the current context can be omitted, e.g. in
> the same package the extension was defined in, the package may be entirely
> omitted. In this example, we are assuming the extension is declared in the
> same package.
