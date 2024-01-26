# Standard constraints

Standard constraints in `protovalidate` are field-level and message-level
options that define validation rules and constraints for individual fields
within a Protobuf message. These options ensure that the data being passed
through your gRPC services adheres to the expected format, range, or other
requirements specific to your application.

## Message-level constraints

Message-level constraints can be applied to messages.

### Extending MessageOptions

The schema extends `google.protobuf.MessageOptions` to include a new optional 
field of type `MessageConstraints`. This allows you to specify constraints for 
messages in your Protobuf schema:

```protobuf
message Example {
  option (buf.validate.message)...
}
```

### Disabled constraint

Currently, only one constraint is available on messages: `disabled`. This 
constraint prevents any validation rule from the message's oneofs and fields to 
be applied to that message, including transitive validation rules from message 
fields.

```protobuf
message Example {
  option (buf.validate.message).disabled = true;
}
```

**See more:**

- [MessageConstraints](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.MessageConstraints)

## Oneof-level constraints

Oneof-level constraints can be applied to oneof unions on a message.

### Extending OneofOptions

The schema extends `google.protobuf.OneofOptions` to include a new optional 
named field of the type `OneofConstraints`. This allows you to specify 
constraints for oneofs in your Protobuf schema:

```protobuf
message Example {
  oneof union {
    option (buf.validate.message)...
  }
}
```

### Required constraint

Currently, only one constraint is available on oneofs: `required`. This 
constraint requires that exactly one field in the oneof must be set.

```protobuf
message Example {
  oneof union {
    option (buf.validate.oneof).required = true;
  }
}
```

**See more:**

- [OneofConstraints](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.OneofConstraints)

## Field-level constraints

Field-level constraints can be applied to the fields of a message.

### Extending FieldOptions

The schema extends `google.protobuf.FieldOptions` to include a new optional
named field of type `FieldConstraints`. This allows you to specify
constraints for fields in your Protobuf schema:

```protobuf
message Example {
  int32 id = 1 [(buf.validate.field)...
}
```

### Defining FieldConstraints

The `FieldConstraints` message type enables you to manage constraints for fields
in your Protobuf messages. You can use the appropriate set of rules to ensure
proper validations for each field type:

```protobuf
message FieldConstraints {
  repeated Constraint cel = 23;
  bool skipped = 24;
  bool required = 25;
  bool ignore_empty = 26;
  oneof type {
    // Scalar Field Types
    // ...
    // Complex Field Types
    // ...
    // Well-Known Field Types
    // ...
  }
}
```

```protobuf
message Example{
  int32 a = 1 [(buf.validate.field).int32.gt = 10];
}
```

### Scalar constraints

Enforce requirements like minimum and maximum lengths or allowed patterns using
regular expressions for `string`, `bool`, and `bytes` fields.

```protobuf
message User {
  string name = 1 [(buf.validate.field).string.min_len = 1, (buf.validate.field).string.max_len = 100];
  string email = 2 [(buf.validate.field).string.email = true];
  bool verified = 3 [(buf.validate.field).bool.const = true];
  bytes password = 4 [(buf.validate.field).bytes.pattern = "^[a-zA-Z0-9]*$"];
}
```

**See more:**

- [Bool](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.BoolRules)
- [Bytes](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.BytesRules)
- [String](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.StringRules)

### Numeric constraints

Define ranges or specific allowed values for `double`, `fixed`, `float`, and
`int` fields.

```protobuf
message Product {
  int32 quantity = 1 [(buf.validate.field).int32.gte = 0, (buf.validate.field).int32.lte = 100];
  double price = 2 [(buf.validate.field).double.gte = 0.0, (buf.validate.field).double.lte = 1000.0];
}
```

**See more:**

- [Double](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.DoubleRules)
- [Float](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.FloatRules)
- Fixed
  - [Fixed32](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.Fixed32Rules)
  - [SFixed32](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.SFixed32Rules)
  - [Fixed64](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.Fixed64Rules)
  - [SFixed64](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.SFixed64Rules)
- Int
  - [Int32](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.Int32Rules)
  - [Int64](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.Int64Rules)
  - [SInt32](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.SInt32Rules)
  - [SInt64](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.SInt64Rules)

### Complex constraints

Define constraints for complex data types such as enums, maps, and repeated
fields.

```protobuf
message Order {
  enum Status {
    PENDING = 0;
    PROCESSING = 1;
    SHIPPED = 2;
    CANCELED = 3;
  }
  map<string, string> metadata = 2 [(buf.validate.field).map.no_sparse = true];
  Status status = 1 [(buf.validate.field).enum.defined_only = true];
  repeated int32 quantities = 3 [(buf.validate.field).repeated.min_items = 1];
}
```

**See more:**

- [Enum](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.EnumRules)
- [Map](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.MapRules)
- [Repeated](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.RepeatedRules)

### Well-known constraints

Apply constraints to well-known types such as `Any`, `Duration`,
and `Timestamp`.

```protobuf
message Event {
  google.protobuf.Any data = 1 [(buf.validate.field).any.required = true];
  google.protobuf.Duration duration = 2 [(buf.validate.field).duration.gte = "1s", (buf.validate.field).duration.lte = "1h"];
  google.protobuf.Timestamp timestamp = 3 [(buf.validate.field).timestamp.lte = "2021-01-01T00:00:00Z"];
}
```

**See more:**

- [Any](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.AnyRules)
- [Duration](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.DurationRules)
- [Timestamp](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.TimestampRules)

### Other constraints

`FieldConstraints` contains other constraints that can be applied to fields
including `skipped`, `required`, and `ignore_empty`. 

```protobuf
message Event {
  int64 start_time = 1 [(buf.validate.field).required = true];
  int64 end_time = 2[(buf.validate.field).ignore_empty = true];
}
```

See more:

- [field-level constraints](https://buf.build/bufbuild/protovalidate/docs/main:buf.validate#buf.validate.FieldConstraints)

## Related docs

- [Custom Constraints](custom-constraints.md)
