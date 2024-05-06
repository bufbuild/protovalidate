![The Buf logo](https://raw.githubusercontent.com/bufbuild/protovalidate/main/.github/buf-logo.svg)

# protovalidate

[![CI](https://github.com/bufbuild/protovalidate/actions/workflows/ci.yaml/badge.svg?branch=main)][ci]
[![Slack](https://img.shields.io/badge/Slack-Buf-%23e01563)][slack]
[![BSR](https://img.shields.io/badge/BSR-Module-0C65EC)][buf-mod]

`protovalidate` is a series of libraries designed to validate Protobuf messages at
runtime based on user-defined validation rules. Powered by Google's Common
Expression Language ([CEL][cel-spec]), it provides a
flexible and efficient foundation for defining and evaluating custom validation
rules. The primary goal of `protovalidate` is to help developers ensure data
consistency and integrity across the network without requiring generated code.

> [!NOTE]
> `protovalidate` is the spiritual successor to [protoc-gen-validate][pgv].
>
> We recommend that new and existing projects transition to using `protovalidate` instead of `protoc-gen-validate`.
>
> Read [our blog post][announce] if you want to learn more about the limitations of `protoc-gen-validate` and
> how we have designed `protovalidate` to be better.

## What is this repository?

This repository is the core of the `protovalidate` project. It contains:

- [The API definition][validate-proto]: used to describe validation constraints
- [Documentation][docs]: how to apply `protovalidate` effectively
- [Migration tooling][migrate]: incrementally migrate from `protoc-gen-validate`
- [Examples][examples]: example `.proto` files using `protovalidate`
- [Conformance testing utilities][conformance]: for acceptance testing of `protovalidate` implementations

### Implementations

Runtime implementations of `protovalidate` can be found in their own repositories:

- Go: [`protovalidate-go`][pv-go] (beta release)
- C++: [`protovalidate-cc`][pv-cc] (beta release)
- Java: [`protovalidate-java`][pv-java] (beta release)
- Python: [`protovalidate-python`][pv-python] (beta release)
- TypeScript: `protovalidate-ts` (coming soon)

Interested in adding support for another language? Check out our
[Contributing Guidelines][contributing].

## Usage

### Import protovalidate

To define constraints within your Protobuf messages,
import `buf/validate/validate.proto` into your `.proto` files:

```protobuf
syntax = "proto3";

package my.package;

import "buf/validate/validate.proto";
```

#### Build with [`buf`][buf]

Add a dependency on [`buf.build/bufbuild/protovalidate`][buf-mod] to your
module's [`buf.yaml`][buf-deps]:

```yaml
version: v1
# <snip>
deps:
  - buf.build/bufbuild/protovalidate
# <snip>
```

After modifying your `buf.yaml`, don't forget to run `buf mod update` to ensure
your dependencies are up-to-date.

#### Build with `protoc`

Add an import path (`-I` flag) pointing to the contents of the `proto/protovalidate`
directory to your invocation of `protoc`:

```shell
protoc \
  -I ./vendor/protovalidate/proto/protovalidate \
  # <snip>
```

### Implementing validation constraints

Validation constraints can be enforced using the `buf.validate` Protobuf package. The rules are specified directly in the `.proto` files.

Let's consider a few examples:

1. **Scalar field validation:** For a basic `User` message, we can enforce constraints such as a minimum length for the user's name.

   ```protobuf
   syntax = "proto3";

   import "buf/validate/validate.proto";

   message User {
     // User's name, must be at least 1 character long.
     string name = 1 [(buf.validate.field).string.min_len = 1];
   }
   ```

2. **Map field validation:** For a `Product` message with a map of item quantities, we can ensure that all quantities are positive.

   ```protobuf
   syntax = "proto3";

   import "buf/validate/validate.proto";

   message Product {
     // Map of item quantities, all quantities must be positive.
     map<string, int32> item_quantities = 1 [(buf.validate.field).map.values.int32.gt = 0];
   }
   ```

3. **Well-known type (WKT) validation:** For the `User` message, we can add a constraint to ensure the `created_at` timestamp is in the past.

   ```protobuf
   syntax = "proto3";

   import "google/protobuf/timestamp.proto";
   import "buf/validate/validate.proto";

   message User {
     // User's creation date must be in the past.
     google.protobuf.Timestamp created_at = 1 [(buf.validate.field).timestamp.lt_now = true];
   }
   ```

For more advanced or custom constraints, `protovalidate` allows for CEL expressions that can incorporate information across fields.

1. **Field-level expressions:** We can enforce that a products' `price`, sent as a string, includes a currency symbol like "$" or "£". We want to ensure that the price is positive and the currency symbol is valid.

   ```protobuf
   syntax = "proto3";

   import "buf/validate/validate.proto";

   message Product {
     string price = 1 [(buf.validate.field).cel = {
       id: "product.price",
       message: "Price must be positive and include a valid currency symbol ($ or £)",
       expression: "(this.startsWith('$') || this.startsWith('£')) && double(this.substring(1)) > 0"
     }];
   }
   ```

2. **Message-level expressions:** For a `Transaction` message, we can use a message-level CEL expression to ensure that the `delivery_date` is always after the `purchase_date`.

   ```protobuf
   syntax = "proto3";

   import "google/protobuf/timestamp.proto";
   import "buf/validate/validate.proto";

   message Transaction {
     google.protobuf.Timestamp purchase_date = 1;
     google.protobuf.Timestamp delivery_date = 2;

     option (buf.validate.message).cel = {
       id: "transaction.delivery_date",
       message: "Delivery date must be after purchase date",
       expression: "this.delivery_date > this.purchase_date"
     };
   }
   ```

3. **Producing an error message in the expression:** We can produce custom error messages directly in the CEL expressions. In this example, if the `age` is less than 18, the CEL expression will evaluate to the error message string.

   ```protobuf
   syntax = "proto3";

   import "buf/validate/validate.proto";

   message User {
     int32 age = 1 [(buf.validate.field).cel = {
       id: "user.age",
       expression: "this < 18 ? 'User must be at least 18 years old': ''"
     }];
   }
   ```

Check out [`examples`][examples] for examples on both standard constraints and custom CEL constraints.

### Validate Messages

Once the messages are annotated with constraints, use one of the [supported language libraries](#implementations) to validate; no additional code generation necessary.

## Documentation

`protovalidate` provides a robust framework for validating Protobuf messages by
enforcing standard and custom constraints on various data types, and offering
detailed error information when validation violations occur. For a detailed
overview of all its components, the supported constraints, and how to use them
effectively, please refer to our [comprehensive documentation](docs/README.md).
The key components include:

- [**Standard Constraints**](https://github.com/bufbuild/protovalidate/blob/main/docs/standard-constraints.md): `protovalidate`
  supports a wide range of standard
  constraints for all field types as well as special functionality for the
  Protobuf Well-Known-Types. You can apply these constraints to your Protobuf
  messages to ensure they meet certain common conditions.

- [**Custom Constraints**](https://github.com/bufbuild/protovalidate/blob/main/docs/custom-constraints.md): With Google's Common
  Expression Language (CEL),
  `protovalidate` allows you to create complex, custom constraints to
  handle unique validation scenarios that aren't covered by the standard
  constraints at both the field and message level.

- [**Error Handling**](https://github.com/bufbuild/protovalidate/blob/main/docs/README.md#errors): When a violation
  occurs, `protovalidate`provides
  detailed error information to help you quickly identify the source and fix for
  an issue.

### protoc-gen-validate

`protovalidate` is the spiritual successor to [`protoc-gen-validate`][pgv], offering
all of the same functionality present in the original plugin, without the need
for custom code generation, and the new ability to describe complex constraints in CEL.

`protovalidate`'s constraints very closely emulate those
in `protoc-gen-validate` to ensure an easy transition for developers. To
migrate from `protoc-gen-validate` to `protovalidate`, use the
provided [migration tool][migration-tool] to
incrementally upgrade your `.proto` files.

## Ecosystem

- [Buf][buf]
- [CEL Specification][cel-spec]

## Legal

Offered under the [Apache 2 license][license].

[announce]: https://buf.build/blog/protoc-gen-validate-v1-and-v2/
[buf-deps]: https://buf.build/docs/configuration/v1/buf-yaml/#deps
[buf-mod]: https://buf.build/bufbuild/protovalidate
[buf]: https://buf.build
[cel-spec]: https://github.com/google/cel-spec
[ci]: https://github.com/bufbuild/protovalidate/actions/workflows/ci.yaml
[conformance]: https://github.com/bufbuild/protovalidate/blob/main/docs/conformance.md
[contributing]: https://github.com/bufbuild/protovalidate/blob/main/.github/CONTRIBUTING.md
[docs]: https://github.com/bufbuild/protovalidate/blob/main/docs
[examples]: https://github.com/bufbuild/protovalidate/tree/main/examples
[file-bug]: https://github.com/bufbuild/protovalidate/issues/new?assignees=&labels=Bug&template=bug_report.md&title=%5BBUG%5D
[file-feature-request]: https://github.com/bufbuild/protovalidate/issues/new?assignees=&labels=Feature&template=feature_request.md&title=%5BFeature+Request%5D
[license]: https://github.com/bufbuild/protovalidate/blob/main/LICENSE
[migrate]: https://github.com/bufbuild/protovalidate/blob/main/docs/migrate.md
[migration-tool]: https://github.com/bufbuild/protovalidate/blob/main/tools/protovalidate-migrate
[pgv]: https://github.com/bufbuild/protoc-gen-validate
[pv-go]: https://github.com/bufbuild/protovalidate-go
[pv-cc]: https://github.com/bufbuild/protovalidate-cc
[pv-java]: https://github.com/bufbuild/protovalidate-java
[pv-python]: https://github.com/bufbuild/protovalidate-python
[slack]: https://buf.build/links/slack
[validate-proto]: https://buf.build/bufbuild/protovalidate/docs/main:buf.validate
