// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/harness/results.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use resultOptionsDescriptor instead')
const ResultOptions$json = {
  '1': 'ResultOptions',
  '2': [
    {'1': 'suite_filter', '3': 1, '4': 1, '5': 9, '10': 'suiteFilter'},
    {'1': 'case_filter', '3': 2, '4': 1, '5': 9, '10': 'caseFilter'},
    {'1': 'verbose', '3': 3, '4': 1, '5': 8, '10': 'verbose'},
    {'1': 'strict_message', '3': 5, '4': 1, '5': 8, '10': 'strictMessage'},
    {'1': 'strict_error', '3': 6, '4': 1, '5': 8, '10': 'strictError'},
  ],
  '9': [
    {'1': 4, '2': 5},
  ],
  '10': ['strict'],
};

/// Descriptor for `ResultOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultOptionsDescriptor = $convert.base64Decode(
    'Cg1SZXN1bHRPcHRpb25zEiEKDHN1aXRlX2ZpbHRlchgBIAEoCVILc3VpdGVGaWx0ZXISHwoLY2'
    'FzZV9maWx0ZXIYAiABKAlSCmNhc2VGaWx0ZXISGAoHdmVyYm9zZRgDIAEoCFIHdmVyYm9zZRIl'
    'Cg5zdHJpY3RfbWVzc2FnZRgFIAEoCFINc3RyaWN0TWVzc2FnZRIhCgxzdHJpY3RfZXJyb3IYBi'
    'ABKAhSC3N0cmljdEVycm9ySgQIBBAFUgZzdHJpY3Q=');

@$core.Deprecated('Use resultSetDescriptor instead')
const ResultSet$json = {
  '1': 'ResultSet',
  '2': [
    {'1': 'successes', '3': 1, '4': 1, '5': 5, '10': 'successes'},
    {'1': 'failures', '3': 2, '4': 1, '5': 5, '10': 'failures'},
    {
      '1': 'suites',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.harness.SuiteResults',
      '10': 'suites'
    },
    {
      '1': 'options',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.harness.ResultOptions',
      '10': 'options'
    },
    {
      '1': 'expected_failures',
      '3': 5,
      '4': 1,
      '5': 5,
      '10': 'expectedFailures'
    },
  ],
};

/// Descriptor for `ResultSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultSetDescriptor = $convert.base64Decode(
    'CglSZXN1bHRTZXQSHAoJc3VjY2Vzc2VzGAEgASgFUglzdWNjZXNzZXMSGgoIZmFpbHVyZXMYAi'
    'ABKAVSCGZhaWx1cmVzEkYKBnN1aXRlcxgDIAMoCzIuLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5j'
    'ZS5oYXJuZXNzLlN1aXRlUmVzdWx0c1IGc3VpdGVzEkkKB29wdGlvbnMYBCABKAsyLy5idWYudm'
    'FsaWRhdGUuY29uZm9ybWFuY2UuaGFybmVzcy5SZXN1bHRPcHRpb25zUgdvcHRpb25zEisKEWV4'
    'cGVjdGVkX2ZhaWx1cmVzGAUgASgFUhBleHBlY3RlZEZhaWx1cmVz');

@$core.Deprecated('Use suiteResultsDescriptor instead')
const SuiteResults$json = {
  '1': 'SuiteResults',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'successes', '3': 2, '4': 1, '5': 5, '10': 'successes'},
    {'1': 'failures', '3': 3, '4': 1, '5': 5, '10': 'failures'},
    {
      '1': 'cases',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.harness.CaseResult',
      '10': 'cases'
    },
    {
      '1': 'fdset',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FileDescriptorSet',
      '10': 'fdset'
    },
    {
      '1': 'expected_failures',
      '3': 6,
      '4': 1,
      '5': 5,
      '10': 'expectedFailures'
    },
  ],
};

/// Descriptor for `SuiteResults`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List suiteResultsDescriptor = $convert.base64Decode(
    'CgxTdWl0ZVJlc3VsdHMSEgoEbmFtZRgBIAEoCVIEbmFtZRIcCglzdWNjZXNzZXMYAiABKAVSCX'
    'N1Y2Nlc3NlcxIaCghmYWlsdXJlcxgDIAEoBVIIZmFpbHVyZXMSQgoFY2FzZXMYBCADKAsyLC5i'
    'dWYudmFsaWRhdGUuY29uZm9ybWFuY2UuaGFybmVzcy5DYXNlUmVzdWx0UgVjYXNlcxI4CgVmZH'
    'NldBgFIAEoCzIiLmdvb2dsZS5wcm90b2J1Zi5GaWxlRGVzY3JpcHRvclNldFIFZmRzZXQSKwoR'
    'ZXhwZWN0ZWRfZmFpbHVyZXMYBiABKAVSEGV4cGVjdGVkRmFpbHVyZXM=');

@$core.Deprecated('Use caseResultDescriptor instead')
const CaseResult$json = {
  '1': 'CaseResult',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
    {
      '1': 'wanted',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.harness.TestResult',
      '10': 'wanted'
    },
    {
      '1': 'got',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.harness.TestResult',
      '10': 'got'
    },
    {
      '1': 'input',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'input'
    },
    {'1': 'expected_failure', '3': 6, '4': 1, '5': 8, '10': 'expectedFailure'},
  ],
};

/// Descriptor for `CaseResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List caseResultDescriptor = $convert.base64Decode(
    'CgpDYXNlUmVzdWx0EhIKBG5hbWUYASABKAlSBG5hbWUSGAoHc3VjY2VzcxgCIAEoCFIHc3VjY2'
    'VzcxJECgZ3YW50ZWQYAyABKAsyLC5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuaGFybmVzcy5U'
    'ZXN0UmVzdWx0UgZ3YW50ZWQSPgoDZ290GAQgASgLMiwuYnVmLnZhbGlkYXRlLmNvbmZvcm1hbm'
    'NlLmhhcm5lc3MuVGVzdFJlc3VsdFIDZ290EioKBWlucHV0GAUgASgLMhQuZ29vZ2xlLnByb3Rv'
    'YnVmLkFueVIFaW5wdXQSKQoQZXhwZWN0ZWRfZmFpbHVyZRgGIAEoCFIPZXhwZWN0ZWRGYWlsdX'
    'Jl');
