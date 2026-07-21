# protovalidate-dart

A Dart runtime for [Protovalidate](https://protovalidate.com), validating
Protobuf messages against the standard validation rules declared with
`buf.validate` field options.

This runtime implements the **standard, CEL-free subset** of Protovalidate. It
does not evaluate custom [CEL](https://cel.dev) expressions; rules that are only
expressible through CEL are out of scope (see [Limitations](#limitations)).

## Usage

The validator reads rules and structure from a
`google.protobuf.FileDescriptorSet` and reads field values from your generated
messages by reflection. Build a descriptor set for your protos with
`buf build -o image.binpb`, then:

```dart
import 'dart:io';
import 'package:protovalidate/protovalidate.dart';
import 'package:your_app/gen/user.pb.dart';

void main() {
  final validator =
      Validator.fromBuffer(File('image.binpb').readAsBytesSync());

  final user = User()..email = 'not-an-email';

  // Returns the list of violations (empty when valid).
  final violations = validator.validate(user);
  for (final v in violations) {
    print('${v.ruleId}: ${v.message}');
  }

  // Or throw on the first invalid message.
  validator.check(user); // throws ValidationException
}
```

## Supported rules

| Target | Rules |
| --- | --- |
| field | `required`, `ignore` (`IGNORE_UNSPECIFIED` / `IGNORE_IF_ZERO_VALUE` / `IGNORE_ALWAYS`) |
| numeric | `const`, `lt`, `lte`, `gt`, `gte`, `in`, `not_in`, `finite` (float/double) |
| `bool` | `const` |
| `string` | `const`, `len`, `min_len`, `max_len`, `len_bytes`, `min_bytes`, `max_bytes`, `pattern`, `prefix`, `suffix`, `contains`, `not_contains`, `in`, `not_in`, `email`, `uri`, `uuid` |
| `bytes` | `const`, `len`, `min_len`, `max_len`, `prefix`, `suffix`, `contains`, `in`, `not_in`, `uuid` |
| `enum` | `const`, `defined_only`, `in`, `not_in` |
| repeated | `min_items`, `max_items`, `unique`, `items` |
| map | `min_pairs`, `max_pairs`, `keys`, `values` |

Nested messages are validated recursively. String lengths are counted in Unicode
code points (`len`/`min_len`/`max_len`) or UTF-8 bytes (`*_bytes`). `pattern` uses
RE2-style syntax via Dart `RegExp`.

## Limitations

Out of scope for this runtime (and recorded in
[`conformance/expected_failures.yaml`](conformance/expected_failures.yaml)):

- Custom, predefined, and message-level CEL rules (`cel`, `cel_expression`).
- Well-known-type rules (`google.protobuf.Any`, `Duration`, `Timestamp`,
  `FieldMask`, and the wrapper types).
- Message-level `oneof` rules and `OneofRules`.
- String/bytes formats beyond `email`, `uri`, and `uuid` (e.g. `hostname`, `ip*`,
  `address`, `uri_ref`, `tuuid`, `ulid`, `host_and_port`).
- Protobuf Editions edge cases (some of which `protoc-gen-dart` does not yet
  generate, such as delimited-encoded message fields).

## Development

```shell
make test-dart          # dart analyze + dart test
make conformance-dart   # run the Protovalidate conformance suite
make generate-dart      # regenerate Dart code from the .proto sources
```

`make generate-dart` requires `protoc-gen-dart` on `PATH`
(`dart pub global activate protoc_plugin`). Generated code lives in
`lib/src/gen/` and `bin/conformance_types.g.dart` and is checked in.
