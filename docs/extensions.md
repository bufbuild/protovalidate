# Protovalidate Extension Registry

This file contains a registry of public [predefined rules](https://protovalidate.com/schemas/predefined-rules/) for Protovalidate.

If you do not intend to publish your predefined rule, you do not need to register an extension. Simply choose an extension number from the range for private schemas (50,000 to 99,999).

If you plan to publish a public schema with predefined rules, open a [Pull Request](https://github.com/bufbuild/protovalidate/pulls) updating this file.

## Registering your extension

To reserve field numbers for your predefined rule, preventing conflicts with other schemas, register it before you publish:

1. Pick the next free number from the range for public schemas (10,000 to 49,999) for your extension
2. Open a [Pull Request](https://github.com/bufbuild/protovalidate/pulls) adding your extension to this file.

## Registered extensions

| Extends     | Number | Full name                                 | Type  | Description                                                                                                                                                                                                                 |
|:------------|-------:|:------------------------------------------|-------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| StringRules | 10,000 | `bufbuild.people.v1.long_name_component`  | bool  | Long name component ([Protovalidate example](https://github.com/bufbuild/buf-examples/blob/main/protovalidate/rules-predefined/additional-examples/long-and-short/proto/bufbuild/people/v1/predefined_string_rules.proto))  |
| StringRules | 10,001 | `bufbuild.people.v1.short_name_component` | bool  | Short name component ([Protovalidate example](https://github.com/bufbuild/buf-examples/blob/main/protovalidate/rules-predefined/additional-examples/long-and-short/proto/bufbuild/people/v1/predefined_string_rules.proto)) |
| StringRules | 10,002 | `bufbuild.people.v1.name_component`       | int32 | Rule value example ([Protovalidate example](https://github.com/bufbuild/buf-examples/blob/main/protovalidate/rules-predefined/proto/bufbuild/people/v1/predefined_string_rules.proto))                                      |

* **Extends:** The name of the rules message that is extended, such as `StringRules`, `Int32Rules`, or `RepeatedRules`.
* **Number:** The Protobuf extension number.
* **Full name:** The qualified name of the extension, composed of the package name and field name.
* **Type:** The field type of the extension, such `bool` or `int32`.
