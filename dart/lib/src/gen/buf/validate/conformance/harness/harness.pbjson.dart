// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/harness/harness.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use testConformanceRequestDescriptor instead')
const TestConformanceRequest$json = {
  '1': 'TestConformanceRequest',
  '2': [
    {
      '1': 'fdset',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FileDescriptorSet',
      '10': 'fdset'
    },
    {
      '1': 'cases',
      '3': 3,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.harness.TestConformanceRequest.CasesEntry',
      '10': 'cases'
    },
  ],
  '3': [TestConformanceRequest_CasesEntry$json],
};

@$core.Deprecated('Use testConformanceRequestDescriptor instead')
const TestConformanceRequest_CasesEntry$json = {
  '1': 'CasesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `TestConformanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testConformanceRequestDescriptor = $convert.base64Decode(
    'ChZUZXN0Q29uZm9ybWFuY2VSZXF1ZXN0EjgKBWZkc2V0GAIgASgLMiIuZ29vZ2xlLnByb3RvYn'
    'VmLkZpbGVEZXNjcmlwdG9yU2V0UgVmZHNldBJZCgVjYXNlcxgDIAMoCzJDLmJ1Zi52YWxpZGF0'
    'ZS5jb25mb3JtYW5jZS5oYXJuZXNzLlRlc3RDb25mb3JtYW5jZVJlcXVlc3QuQ2FzZXNFbnRyeV'
    'IFY2FzZXMaTgoKQ2FzZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIqCgV2YWx1ZRgCIAEoCzIU'
    'Lmdvb2dsZS5wcm90b2J1Zi5BbnlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use testConformanceResponseDescriptor instead')
const TestConformanceResponse$json = {
  '1': 'TestConformanceResponse',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.harness.TestConformanceResponse.ResultsEntry',
      '10': 'results'
    },
  ],
  '3': [TestConformanceResponse_ResultsEntry$json],
};

@$core.Deprecated('Use testConformanceResponseDescriptor instead')
const TestConformanceResponse_ResultsEntry$json = {
  '1': 'ResultsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.harness.TestResult',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `TestConformanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testConformanceResponseDescriptor = $convert.base64Decode(
    'ChdUZXN0Q29uZm9ybWFuY2VSZXNwb25zZRJgCgdyZXN1bHRzGAEgAygLMkYuYnVmLnZhbGlkYX'
    'RlLmNvbmZvcm1hbmNlLmhhcm5lc3MuVGVzdENvbmZvcm1hbmNlUmVzcG9uc2UuUmVzdWx0c0Vu'
    'dHJ5UgdyZXN1bHRzGmgKDFJlc3VsdHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRJCCgV2YWx1ZR'
    'gCIAEoCzIsLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5jZS5oYXJuZXNzLlRlc3RSZXN1bHRSBXZh'
    'bHVlOgI4AQ==');

@$core.Deprecated('Use testResultDescriptor instead')
const TestResult$json = {
  '1': 'TestResult',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'success'},
    {
      '1': 'validation_error',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.Violations',
      '9': 0,
      '10': 'validationError'
    },
    {
      '1': 'compilation_error',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'compilationError'
    },
    {
      '1': 'runtime_error',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'runtimeError'
    },
    {
      '1': 'unexpected_error',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'unexpectedError'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `TestResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testResultDescriptor = $convert.base64Decode(
    'CgpUZXN0UmVzdWx0EhoKB3N1Y2Nlc3MYASABKAhIAFIHc3VjY2VzcxJFChB2YWxpZGF0aW9uX2'
    'Vycm9yGAIgASgLMhguYnVmLnZhbGlkYXRlLlZpb2xhdGlvbnNIAFIPdmFsaWRhdGlvbkVycm9y'
    'Ei0KEWNvbXBpbGF0aW9uX2Vycm9yGAMgASgJSABSEGNvbXBpbGF0aW9uRXJyb3ISJQoNcnVudG'
    'ltZV9lcnJvchgEIAEoCUgAUgxydW50aW1lRXJyb3ISKwoQdW5leHBlY3RlZF9lcnJvchgFIAEo'
    'CUgAUg91bmV4cGVjdGVkRXJyb3JCCAoGcmVzdWx0');
