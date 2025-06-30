![The Buf logo](https://raw.githubusercontent.com/bufbuild/protovalidate/main/.github/buf-logo.svg)

# Protovalidate

[![CI](https://github.com/bufbuild/protovalidate/actions/workflows/ci.yaml/badge.svg?branch=main)][ci]
[![Slack](https://img.shields.io/badge/Slack-Buf-%23e01563)][slack]
[![BSR](https://img.shields.io/badge/BSR-Module-0C65EC)][buf-mod]

[Protovalidate][protovalidate] is the semantic validation library for Protobuf. It provides standard annotations to validate common rules on messages and fields, as well as the ability to use [CEL][cel] to write custom rules. It's the next generation of [protoc-gen-validate][protoc-gen-validate].

With Protovalidate, you can annotate your Protobuf messages with both standard and custom validation rules:

```protobuf
syntax = "proto3";

package acme.user.v1;

import "buf/validate/validate.proto";

message User {
  string id = 1 [(buf.validate.field).string.uuid = true];
  uint32 age = 2 [(buf.validate.field).uint32.lte = 150]; // We can only hope.
  string email = 3 [(buf.validate.field).string.email = true];
  string first_name = 4 [(buf.validate.field).string.max_len = 64];
  string last_name = 5 [(buf.validate.field).string.max_len = 64];

  option (buf.validate.message).cel = {
    id: "first_name_requires_last_name"
    message: "last_name must be present if first_name is present"
    expression: "!has(this.first_name) || has(this.last_name)"
  };
}
```

## Supported languages

To start using Protovalidate in your projects, see the [developer quickstart][quickstart], [Protovalidate overview][protovalidate], or go directly to the repository for your language of choice:

- [`protovalidate-go`][pv-go] (Go)
- [`protovalidate-java`][pv-java] (Java)
- [`protovalidate-python`][pv-python] (Python)
- [`protovalidate-cc`][pv-cc] (C++)
- [`protovalidate-es`][pv-es] (TypeScript and JavaScript)

## Documentation

Comprehensive documentation for Protovalidate is available in [Buf's documentation library][protovalidate].

Highlights include:

* The [developer quickstart][quickstart]
* Comprehensive RPC quickstarts for [Connect and Go][connect-go], [gRPC and Go][grpc-go], [gRPC and Java][grpc-java], and [gRPC and Python][grpc-python]
* A [migration guide for protoc-gen-validate][migration-guide] users

## Contributing

We genuinely appreciate any help! If you'd like to contribute, check out these resources:

- [Contributing Guidelines][contributing]: Guidelines to make your contribution process straightforward and meaningful
- [Conformance testing utilities](https://github.com/bufbuild/protovalidate/tree/main/docs/conformance.md): Utilities providing acceptance testing of `protovalidate` implementations

## Legal

Offered under the [Apache 2 license][license].

[buf]: https://buf.build
[cel]: https://cel.dev

[pv-go]: https://github.com/bufbuild/protovalidate-go
[pv-java]: https://github.com/bufbuild/protovalidate-java
[pv-python]: https://github.com/bufbuild/protovalidate-python
[pv-cc]: https://github.com/bufbuild/protovalidate-cc
[pv-es]: https://github.com/bufbuild/protovalidate-es

[buf-mod]: https://buf.build/bufbuild/protovalidate
[slack]: https://buf.build/links/slack
[license]: LICENSE
[contributing]: .github/CONTRIBUTING.md

[protoc-gen-validate]: https://github.com/bufbuild/protoc-gen-validate
[conformance]: https://github.com/bufbuild/protovalidate/blob/main/docs/conformance.md
[ci]: https://github.com/bufbuild/protovalidate/actions/workflows/ci.yaml

[protovalidate]: https://buf.build/docs/protovalidate/
[quickstart]: https://buf.build/docs/protovalidate/quickstart/
[connect-go]: https://buf.build/docs/protovalidate/quickstart/connect-go/
[grpc-go]: https://buf.build/docs/protovalidate/quickstart/grpc-go/
[grpc-java]: https://buf.build/docs/protovalidate/quickstart/grpc-java/
[grpc-python]: https://buf.build/docs/protovalidate/quickstart/grpc-python/
[migration-guide]: https://buf.build/docs/migration-guides/migrate-from-protoc-gen-validate/
