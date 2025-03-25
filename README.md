![The Buf logo](https://raw.githubusercontent.com/bufbuild/protovalidate/main/.github/buf-logo.svg) 

# Protovalidate

[![CI](https://github.com/bufbuild/protovalidate/actions/workflows/ci.yaml/badge.svg?branch=main)][ci]
[![Slack](https://img.shields.io/badge/Slack-Buf-%23e01563)][slack]
[![BSR](https://img.shields.io/badge/BSR-Module-0C65EC)][buf-mod]

[Protovalidate][protovalidate] provides standard annotations to validate common constraints on messages and fields, as well as the ability to use [CEL][cel] to write custom constraints. It's the next generation of [protoc-gen-validate][protoc-gen-validate], the only widely used validation library for Protobuf.

With Protovalidate, you can annotate your Protobuf messages with both standard and custom validation rules:

```protobuf
syntax = "proto3";

package banking.v1;

import "buf/validate/validate.proto";

message MoneyTransfer {
  string to_account_id = 1 [
    // Standard rule: `to_account_id` must be a UUID
    (buf.validate.field).string.uuid = true
  ];

  string from_account_id = 2 [
    // Standard rule: `from_account_id` must be a UUID
    (buf.validate.field).string.uuid = true
  ];

  // Custom rule: `to_account_id` and `from_account_id` can't be the same.
  option (buf.validate.message).cel = {
    id: "to_account_id.not.from_account_id"
    message: "to_account_id and from_account_id should not be the same value"
    expression: "this.to_account_id != this.from_account_id"
  };
}
```

## Supported Languages

This repository is the Protovalidate core: the Protobuf definition of its API and [conformance testing utilities][conformance]. 

To start using Protovalidate in your projects, see the [developer quickstart][quickstart], [Protovalidate overview][protovalidate], or go directly to the repository for your language of choice:

- [`protovalidate-go`][pv-go] (Go)
- [`protovalidate-java`][pv-java] (Java)
- [`protovalidate-python`][pv-python] (Python)
- [`protovalidate-cc`][pv-cc] (C++)
- `protovalidate-ts` (TypeScript, coming soon!)

> [!NOTE]  
> Interested in adding support for another language? Check out our [Contributing Guidelines][contributing].

## Documentation

Comprehensive documentation for Protovalidate is available in [Buf's documentation library][protovalidate].

Highlights include:

* The [developer quickstart][quickstart]
* Comprehensive RPC how-to's for [Connect and Go][connect-go], [gRPC and Go][grpc-go], [gRPC and Java][grpc-java], and [gRPC and Python][grpc-python]
* A [migration guide for protoc-gen-validate][migration-guide] users

## Contribution

We genuinely appreciate any help! If you'd like to contribute, check out these resources:

- [Contributing Guidelines][contributing]: Guidelines to make your contribution process straightforward and meaningful
- [Conformance testing utilities](https://github.com/bufbuild/protovalidate/tree/main/docs/conformance.md): Utilities providing acceptance testing of `protovalidate` implementations

## Related Sites

- [Buf][buf]: Enterprise-grade Kafka and gRPC for the modern age
- [Common Expression Language (CEL)][cel]: The open-source technology at the core of Protovalidate

## Legal

Offered under the [Apache 2 license][license].

[buf]: https://buf.build
[cel]: https://cel.dev

[pv-go]: https://github.com/bufbuild/protovalidate-go
[pv-java]: https://github.com/bufbuild/protovalidate-java
[pv-python]: https://github.com/bufbuild/protovalidate-python
[pv-cc]: https://github.com/bufbuild/protovalidate-cc

[buf-mod]: https://buf.build/bufbuild/protovalidate
[slack]: https://buf.build/links/slack
[license]: LICENSE
[contributing]: .github/CONTRIBUTING.md

[protoc-gen-validate]: https://github.com/bufbuild/protoc-gen-validate
[conformance]: https://github.com/bufbuild/protovalidate/blob/main/docs/conformance.md
[ci]: https://github.com/bufbuild/protovalidate/actions/workflows/ci.yaml

[protovalidate]: https://buf.build/docs/protovalidate/overview/
[quickstart]: https://buf.build/docs/protovalidate/quickstart/
[connect-go]: https://buf.build/docs/protovalidate/how-to/connect-go/
[grpc-go]: https://buf.build/docs/protovalidate/how-to/grpc-go/
[grpc-java]: https://buf.build/docs/protovalidate/how-to/grpc-java/
[grpc-python]: https://buf.build/docs/protovalidate/how-to/grpc-python/
[migration-guide]: https://buf.build/docs/migration-guides/migrate-from-protoc-gen-validate/
