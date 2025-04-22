![The Buf logo](https://raw.githubusercontent.com/bufbuild/protovalidate/main/.github/buf-logo.svg)

# Conformance test harness

The `protovalidate` conformance tests provide a rigorous set of tests to ensure
the correct behavior of any `protovalidate` implementation. It is expected that
all implementations in this project satisfy all conformance tests.

## Usage

The conformance test harness can be built using make:

```shell
# builds the conformance test harness into .tmp/bin
make conformance

# run the conformance tests against an executor
.tmp/bin/protovalidate-conformance my-executor
```

## Flags

You can customize the behavior of the tests using the following flags:

| Flag                   | Description                                                                                         | Default Value |
|------------------------|-----------------------------------------------------------------------------------------------------|---------------|
| `--suite <regex>`      | Filter suites using the provided regular expression.                                                | None          |
| `--case <regex>`       | Filter cases using the provided regular expression.                                                 | None          |
| `--timeout <duration>` | Set a per-suite timeout.                                                                            | 5 seconds     |
| `--verbose`, `-v`      | Enable verbose output.                                                                              | `false`       |
| `--strict_message`     | Require that violation messages match the expected message exactly.                                 | `false`       |
| `--strict_error`       | Require that compile-time errors are distinguished from runtime errors.                             | `false`       |
| `--proto`              | Return results as binary serialized message `buf.validate.conformance.harness.ResultSet` to stdout. | `false`       |
| `--dump`               | Output the expected results, without a command.                                                     | `false`       |
| `--expected_failures`  | `.yaml` file containing list of expected failures                                                   | None          |

## Components

### Harness

This binary is the `protovalidate` _conformance test harness_. The harness is
responsible for building the test suites, shepherding them to an executor, and
collating the results.

### Executor

Each target library should provide a _conformance test executor_, an executable
responsible for reading a
Protobuf-serialized [`TestConformanceRequest`][harness-proto] over
`stdin`, executing the provided test case validations, and respond with a
Protobuf-serialized [`TestConformanceResponse`][harness-proto] over `stdout`.

It is recommended that the executor should be as type-agnostic as possible,
preferably constructing the descriptors at runtime from the provided
`FileDescriptorSet` instead of using a local resolver.

For a reference implementation, see [Go's conformance test executor][pv-go].

### Test suites & cases

The test messages are defined in [`.proto` files][cases-proto]. These are
utilized to make concrete message _test cases_ which are organized into groups
known as [_test suites_][suites]. Which tests are passed to the executor can be
controlled through the `--suite` and `--case` flags mentioned above.

### Expected Failures

The conformance test harness can be configured to expect certain failures. This
is useful for testing the behavior of a library when it encounters an invalid
message. To use this feature, pass the `--expected_failures` flag with a path to
a `.yaml` file containing a list of expected failures. The format of the file is
as follows:

```yaml
<test_suite>:
  - <test_case>
```

For example, if we wanted to test the behavior of a library when it encounters
an invalid recursive message, we could create a file
called `expected_failures.yaml` with the following contents:

```yaml
standard_rules/map:
  - recursive/invalid
standard_rules/well_known_types/duration:
  - gte_lte/invalid/above
  - lte/invalid
  - not in/valid
standard_rules/well_known_types/timestamp:
  - gte_lte/invalid/above
  - lte/invalid
```

Then we could run the conformance tests with the following command:

```shell
.tmp/bin/protovalidate-conformance \
  --expected_failures=expected_failures.yaml \
  my-executor
```

[harness-proto]: /proto/protovalidate-testing/buf/validate/conformance/harness/harness.proto
[cases-proto]: /proto/protovalidate-testing/buf/validate/conformance/cases
[suites]: /tools/protovalidate-conformance/internal/cases
[pv-go]: https://github.com/bufbuild/protovalidate-go/tree/main/internal/cmd/protovalidate-conformance-go
