# Errors

## Validation Errors

A validation error collects constraint violations encountered during validation.
A violation represents a single violation of a constraint. It contains a machine
readable field path, the constraint ID and a human-readable error diagostic for
the violation. A validation error contains one or more violations.

## Compilation Errors

Since the constraints are interpreted at runtime, compilation errors occur
during this period. These errors are most commonly due to syntax errors or
incorrect usage of the Common Expression Language (CEL) in defining the
constraints. Compilation errors might also arise from referencing a non-existent
field or incorrect usage of the `protovalidate` API.

## Runtime Errors

Although CEL expressions are type-checked, it is still possible for unexpected
types or invalid field accesses to result in runtime errors. For instance,
attempting to access a field that doesn't exist on a given message, or applying
a numeric operation to a string, can lead to such errors.

Another source of runtime errors is the violation of constraints. For example,
if a message fails to fulfill the requirements of the constraint
validation, `protovalidate` will return a `Violations` message, which is a type
of runtime error.

## Next steps

- [Standard constraints](standard-constraints.md)
- [Custom constraints](custom-constraints.md)
