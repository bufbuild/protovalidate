# Shared Constraints

Custom constraints in `protovalidate` afford a lot of power, but can become
cumbersome and repetitive when you want to apply the same kind of custom
constraint across multiple fields or messages. To this end, `protovalidate`
provides a mechanism for creating reusable constraints that can be applied on
multiple fields.

Shared constraints require Protobuf extensions, which are not available in
proto3. You will need to use either proto2 or at least Protobuf 2023 Edition to
define your shared constraints. Shared constraints defined in proto2 or Protobuf
2023 Edition or later can be imported and utilized in proto3 files.

## Shared Field Constraints

To define a shared field rule, you can extend one of the standard rules
messages. For example, to define a new rule for `float` fields, you can
extend `buf.validate.FloatRules`, as follows:

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
> Be mindful that your chosen extension number must not conflict with any other
> extension to the same rules message across _all_ Protobuf files in a given
> process. This restriction also applies to users that consume your Protobuf
> files. You may re-use the same extension number across different kinds of
> rules.
>
> Extension numbers may be from 1000 to 536870911, inclusive. Values from 1000
> to 50000 are reserved for [Protobuf Global Extension Registry][1] entries, and
> values from 50000 to 536870911 are reserved for randomly-generated integers.
> If you are using a randomly-generated integer as a tag number, please use an
> appropriate source of randomness. You can use [this link to random.org][2] to
> generate such an appropriate number.

[1]: https://github.com/protocolbuffers/protobuf/blob/main/docs/options.md "Protobuf Global Extension Registry"
[2]: https://www.random.org/integers/?num=1&min=50000&max=536870911&format=html&col=1&base=10 "RANDOM.ORG - Integer Generator"
