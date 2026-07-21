// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/custom_rules/custom_rules.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use enumDescriptor instead')
const Enum$json = {
  '1': 'Enum',
  '2': [
    {'1': 'ENUM_UNSPECIFIED', '2': 0},
    {'1': 'ENUM_ONE', '2': 1},
  ],
};

/// Descriptor for `Enum`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List enumDescriptor = $convert
    .base64Decode('CgRFbnVtEhQKEEVOVU1fVU5TUEVDSUZJRUQQABIMCghFTlVNX09ORRAB');

@$core.Deprecated('Use noExpressionsDescriptor instead')
const NoExpressions$json = {
  '1': 'NoExpressions',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
    {
      '1': 'b',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.custom_rules.Enum',
      '10': 'b'
    },
    {
      '1': 'c',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.custom_rules.NoExpressions.Nested',
      '10': 'c'
    },
  ],
  '3': [NoExpressions_Nested$json],
};

@$core.Deprecated('Use noExpressionsDescriptor instead')
const NoExpressions_Nested$json = {
  '1': 'Nested',
};

/// Descriptor for `NoExpressions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noExpressionsDescriptor = $convert.base64Decode(
    'Cg1Ob0V4cHJlc3Npb25zEgwKAWEYASABKAVSAWESPwoBYhgCIAEoDjIxLmJ1Zi52YWxpZGF0ZS'
    '5jb25mb3JtYW5jZS5jYXNlcy5jdXN0b21fcnVsZXMuRW51bVIBYhJPCgFjGAMgASgLMkEuYnVm'
    'LnZhbGlkYXRlLmNvbmZvcm1hbmNlLmNhc2VzLmN1c3RvbV9ydWxlcy5Ob0V4cHJlc3Npb25zLk'
    '5lc3RlZFIBYxoICgZOZXN0ZWQ=');

@$core.Deprecated('Use messageExpressionsDescriptor instead')
const MessageExpressions$json = {
  '1': 'MessageExpressions',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
    {'1': 'b', '3': 2, '4': 1, '5': 5, '10': 'b'},
    {
      '1': 'c',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.custom_rules.Enum',
      '10': 'c'
    },
    {
      '1': 'd',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.custom_rules.Enum',
      '10': 'd'
    },
    {
      '1': 'e',
      '3': 5,
      '4': 1,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.MessageExpressions.Nested',
      '10': 'e'
    },
    {
      '1': 'f',
      '3': 6,
      '4': 1,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.MessageExpressions.Nested',
      '10': 'f'
    },
  ],
  '3': [MessageExpressions_Nested$json],
  '7': {},
};

@$core.Deprecated('Use messageExpressionsDescriptor instead')
const MessageExpressions_Nested$json = {
  '1': 'Nested',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
    {'1': 'b', '3': 2, '4': 1, '5': 5, '10': 'b'},
  ],
  '7': {},
};

/// Descriptor for `MessageExpressions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageExpressionsDescriptor = $convert.base64Decode(
    'ChJNZXNzYWdlRXhwcmVzc2lvbnMSDAoBYRgBIAEoBVIBYRIMCgFiGAIgASgFUgFiEj8KAWMYAy'
    'ABKA4yMS5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2FzZXMuY3VzdG9tX3J1bGVzLkVudW1S'
    'AWMSPwoBZBgEIAEoDjIxLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy5jdXN0b21fcn'
    'VsZXMuRW51bVIBZBJUCgFlGAUgASgLMkYuYnVmLnZhbGlkYXRlLmNvbmZvcm1hbmNlLmNhc2Vz'
    'LmN1c3RvbV9ydWxlcy5NZXNzYWdlRXhwcmVzc2lvbnMuTmVzdGVkUgFlElQKAWYYBiABKAsyRi'
    '5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2FzZXMuY3VzdG9tX3J1bGVzLk1lc3NhZ2VFeHBy'
    'ZXNzaW9ucy5OZXN0ZWRSAWYaeAoGTmVzdGVkEgwKAWEYASABKAVSAWESDAoBYhgCIAEoBVIBYj'
    'pSukhPGk0KGW1lc3NhZ2VfZXhwcmVzc2lvbl9uZXN0ZWQaMHRoaXMuYSA+IHRoaXMuYiA/ICcn'
    'OiAnYSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBiJzrQAbpIzAEaQwoZbWVzc2FnZV9leHByZXNzaW'
    '9uX3NjYWxhchIVYSBtdXN0IGJlIGxlc3MgdGhhbiBiGg90aGlzLmEgPCB0aGlzLmIaPwoXbWVz'
    'c2FnZV9leHByZXNzaW9uX2VudW0SEmMgbXVzdCBub3QgZXF1YWwgZBoQdGhpcy5jICE9IHRoaX'
    'MuZBpEChhtZXNzYWdlX2V4cHJlc3Npb25fZW1iZWQSEmUuYSBtdXN0IGVxdWFsIGYuYRoUdGhp'
    'cy5lLmEgPT0gdGhpcy5mLmE=');

@$core.Deprecated('Use messageExpressionOnlyDescriptor instead')
const MessageExpressionOnly$json = {
  '1': 'MessageExpressionOnly',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
  ],
  '7': {},
};

/// Descriptor for `MessageExpressionOnly`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageExpressionOnlyDescriptor = $convert.base64Decode(
    'ChVNZXNzYWdlRXhwcmVzc2lvbk9ubHkSDAoBYRgBIAEoBVIBYToPukgMKgp0aGlzLmEgPiAw');

@$core.Deprecated('Use missingFieldDescriptor instead')
const MissingField$json = {
  '1': 'MissingField',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
  ],
  '7': {},
};

/// Descriptor for `MissingField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List missingFieldDescriptor = $convert.base64Decode(
    'CgxNaXNzaW5nRmllbGQSDAoBYRgBIAEoBVIBYTo0ukgxGi8KDW1pc3NpbmdfZmllbGQSEmIgbX'
    'VzdCBiZSBwb3NpdGl2ZRoKdGhpcy5iID4gMA==');

@$core.Deprecated('Use incorrectTypeDescriptor instead')
const IncorrectType$json = {
  '1': 'IncorrectType',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
  ],
  '7': {},
};

/// Descriptor for `IncorrectType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List incorrectTypeDescriptor = $convert.base64Decode(
    'Cg1JbmNvcnJlY3RUeXBlEgwKAWEYASABKAVSAWE6SLpIRRpDCg5pbmNvcnJlY3RfdHlwZRIXYS'
    'BtdXN0IHN0YXJ0IHdpdGggJ2ZvbycaGHRoaXMuYS5zdGFydHNXaXRoKCdmb28nKQ==');

@$core.Deprecated('Use dynRuntimeErrorDescriptor instead')
const DynRuntimeError$json = {
  '1': 'DynRuntimeError',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
  ],
  '7': {},
};

/// Descriptor for `DynRuntimeError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynRuntimeErrorDescriptor = $convert.base64Decode(
    'Cg9EeW5SdW50aW1lRXJyb3ISDAoBYRgBIAEoBVIBYTpcukhZGlcKD2R5bl9ydW50aW1lX2Vych'
    'IuZHluYW1pYyB0eXBlIHRyaWVzIHRvIHVzZSBhIG5vbi1leGlzdGVudCBmaWVsZBoUZHluKHRo'
    'aXMpLmIgPT0gJ2Zvbyc=');

@$core.Deprecated('Use nowEqualsNowDescriptor instead')
const NowEqualsNow$json = {
  '1': 'NowEqualsNow',
  '7': {},
};

/// Descriptor for `NowEqualsNow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nowEqualsNowDescriptor = $convert.base64Decode(
    'CgxOb3dFcXVhbHNOb3c6TLpISRpHCg5ub3dfZXF1YWxzX25vdxIpbm93IHNob3VsZCBlcXVhbC'
    'Bub3cgd2l0aGluIGFuIGV4cHJlc3Npb24aCm5vdyA9PSBub3c=');

@$core.Deprecated('Use fieldExpressionOnlyDescriptor instead')
const FieldExpressionOnly$json = {
  '1': 'FieldExpressionOnly',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `FieldExpressionOnly`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionOnlyDescriptor = $convert.base64Decode(
    'ChNGaWVsZEV4cHJlc3Npb25Pbmx5EiEKA3ZhbBgBIAEoBUIPukgM6gEJdGhpcyA+IDQyUgN2YW'
    'w=');

@$core.Deprecated('Use fieldExpressionMultipleScalarDescriptor instead')
const FieldExpressionMultipleScalar$json = {
  '1': 'FieldExpressionMultipleScalar',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `FieldExpressionMultipleScalar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMultipleScalarDescriptor = $convert.base64Decode(
    'Ch1GaWVsZEV4cHJlc3Npb25NdWx0aXBsZVNjYWxhchK9AgoDdmFsGAEgASgFQqoCukimAroBXw'
    'oiZmllbGRfZXhwcmVzc2lvbi5tdWx0aXBsZS5zY2FsYXIuMRIvdGVzdCBtZXNzYWdlIGZpZWxk'
    'X2V4cHJlc3Npb24ubXVsdGlwbGUuc2NhbGFyLjEaCHRoaXMgPiAwugFfCiJmaWVsZF9leHByZX'
    'NzaW9uLm11bHRpcGxlLnNjYWxhci4yEi90ZXN0IG1lc3NhZ2UgZmllbGRfZXhwcmVzc2lvbi5t'
    'dWx0aXBsZS5zY2FsYXIuMhoIdGhpcyA+IDG6AV8KImZpZWxkX2V4cHJlc3Npb24ubXVsdGlwbG'
    'Uuc2NhbGFyLjMSL3Rlc3QgbWVzc2FnZSBmaWVsZF9leHByZXNzaW9uLm11bHRpcGxlLnNjYWxh'
    'ci4zGgh0aGlzID4gMlIDdmFs');

@$core.Deprecated('Use fieldExpressionNestedScalarDescriptor instead')
const FieldExpressionNestedScalar$json = {
  '1': 'FieldExpressionNestedScalar',
  '2': [
    {
      '1': 'nested',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.custom_rules.FieldExpressionScalar',
      '10': 'nested'
    },
  ],
};

/// Descriptor for `FieldExpressionNestedScalar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionNestedScalarDescriptor =
    $convert.base64Decode(
        'ChtGaWVsZEV4cHJlc3Npb25OZXN0ZWRTY2FsYXISWgoGbmVzdGVkGAEgASgLMkIuYnVmLnZhbG'
        'lkYXRlLmNvbmZvcm1hbmNlLmNhc2VzLmN1c3RvbV9ydWxlcy5GaWVsZEV4cHJlc3Npb25TY2Fs'
        'YXJSBm5lc3RlZA==');

@$core.Deprecated('Use fieldExpressionOptionalScalarDescriptor instead')
const FieldExpressionOptionalScalar$json = {
  '1': 'FieldExpressionOptionalScalar',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 5,
      '8': {},
      '9': 0,
      '10': 'val',
      '17': true
    },
  ],
  '8': [
    {'1': '_val'},
  ],
};

/// Descriptor for `FieldExpressionOptionalScalar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionOptionalScalarDescriptor =
    $convert.base64Decode(
        'Ch1GaWVsZEV4cHJlc3Npb25PcHRpb25hbFNjYWxhchJ5CgN2YWwYASABKAVCYrpIX7oBXAogZm'
        'llbGRfZXhwcmVzc2lvbi5vcHRpb25hbC5zY2FsYXISLXRlc3QgbWVzc2FnZSBmaWVsZF9leHBy'
        'ZXNzaW9uLm9wdGlvbmFsLnNjYWxhchoJdGhpcyA9PSAxSABSA3ZhbIgBAUIGCgRfdmFs');

@$core.Deprecated('Use fieldExpressionScalarDescriptor instead')
const FieldExpressionScalar$json = {
  '1': 'FieldExpressionScalar',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `FieldExpressionScalar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionScalarDescriptor = $convert.base64Decode(
    'ChVGaWVsZEV4cHJlc3Npb25TY2FsYXISYgoDdmFsGAEgASgFQlC6SE26AUoKF2ZpZWxkX2V4cH'
    'Jlc3Npb24uc2NhbGFyEiR0ZXN0IG1lc3NhZ2UgZmllbGRfZXhwcmVzc2lvbi5zY2FsYXIaCXRo'
    'aXMgPT0gMVIDdmFs');

@$core.Deprecated('Use fieldExpressionEnumDescriptor instead')
const FieldExpressionEnum$json = {
  '1': 'FieldExpressionEnum',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.custom_rules.Enum',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `FieldExpressionEnum`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionEnumDescriptor = $convert.base64Decode(
    'ChNGaWVsZEV4cHJlc3Npb25FbnVtEpEBCgN2YWwYASABKA4yMS5idWYudmFsaWRhdGUuY29uZm'
    '9ybWFuY2UuY2FzZXMuY3VzdG9tX3J1bGVzLkVudW1CTLpISboBRgoVZmllbGRfZXhwcmVzc2lv'
    'bi5lbnVtEiJ0ZXN0IG1lc3NhZ2UgZmllbGRfZXhwcmVzc2lvbi5lbnVtGgl0aGlzID09IDFSA3'
    'ZhbA==');

@$core.Deprecated('Use fieldExpressionMessageDescriptor instead')
const FieldExpressionMessage$json = {
  '1': 'FieldExpressionMessage',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMessage.Msg',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [FieldExpressionMessage_Msg$json],
};

@$core.Deprecated('Use fieldExpressionMessageDescriptor instead')
const FieldExpressionMessage_Msg$json = {
  '1': 'Msg',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
  ],
};

/// Descriptor for `FieldExpressionMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMessageDescriptor = $convert.base64Decode(
    'ChZGaWVsZEV4cHJlc3Npb25NZXNzYWdlEq8BCgN2YWwYASABKAsyRy5idWYudmFsaWRhdGUuY2'
    '9uZm9ybWFuY2UuY2FzZXMuY3VzdG9tX3J1bGVzLkZpZWxkRXhwcmVzc2lvbk1lc3NhZ2UuTXNn'
    'QlS6SFG6AU4KGGZpZWxkX2V4cHJlc3Npb24ubWVzc2FnZRIldGVzdCBtZXNzYWdlIGZpZWxkX2'
    'V4cHJlc3Npb24ubWVzc2FnZRoLdGhpcy5hID09IDFSA3ZhbBoTCgNNc2cSDAoBYRgBIAEoBVIB'
    'YQ==');

@$core.Deprecated('Use fieldExpressionMapInt32Descriptor instead')
const FieldExpressionMapInt32$json = {
  '1': 'FieldExpressionMapInt32',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapInt32.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [FieldExpressionMapInt32_ValEntry$json],
};

@$core.Deprecated('Use fieldExpressionMapInt32Descriptor instead')
const FieldExpressionMapInt32_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FieldExpressionMapInt32`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMapInt32Descriptor = $convert.base64Decode(
    'ChdGaWVsZEV4cHJlc3Npb25NYXBJbnQzMhK7AQoDdmFsGAEgAygLMk0uYnVmLnZhbGlkYXRlLm'
    'NvbmZvcm1hbmNlLmNhc2VzLmN1c3RvbV9ydWxlcy5GaWVsZEV4cHJlc3Npb25NYXBJbnQzMi5W'
    'YWxFbnRyeUJaukhXugFUChpmaWVsZF9leHByZXNzaW9uLm1hcC5pbnQzMhIbYWxsIG1hcCB2YW'
    'x1ZXMgbXVzdCBlcXVhbCAxGhl0aGlzLmFsbChrLCB0aGlzW2tdID09IDEpUgN2YWwaNgoIVmFs'
    'RW50cnkSEAoDa2V5GAEgASgFUgNrZXkSFAoFdmFsdWUYAiABKAVSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use fieldExpressionMapInt64Descriptor instead')
const FieldExpressionMapInt64$json = {
  '1': 'FieldExpressionMapInt64',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapInt64.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [FieldExpressionMapInt64_ValEntry$json],
};

@$core.Deprecated('Use fieldExpressionMapInt64Descriptor instead')
const FieldExpressionMapInt64_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 3, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FieldExpressionMapInt64`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMapInt64Descriptor = $convert.base64Decode(
    'ChdGaWVsZEV4cHJlc3Npb25NYXBJbnQ2NBK7AQoDdmFsGAEgAygLMk0uYnVmLnZhbGlkYXRlLm'
    'NvbmZvcm1hbmNlLmNhc2VzLmN1c3RvbV9ydWxlcy5GaWVsZEV4cHJlc3Npb25NYXBJbnQ2NC5W'
    'YWxFbnRyeUJaukhXugFUChpmaWVsZF9leHByZXNzaW9uLm1hcC5pbnQ2NBIbYWxsIG1hcCB2YW'
    'x1ZXMgbXVzdCBlcXVhbCAxGhl0aGlzLmFsbChrLCB0aGlzW2tdID09IDEpUgN2YWwaNgoIVmFs'
    'RW50cnkSEAoDa2V5GAEgASgDUgNrZXkSFAoFdmFsdWUYAiABKANSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use fieldExpressionMapUint32Descriptor instead')
const FieldExpressionMapUint32$json = {
  '1': 'FieldExpressionMapUint32',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapUint32.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [FieldExpressionMapUint32_ValEntry$json],
};

@$core.Deprecated('Use fieldExpressionMapUint32Descriptor instead')
const FieldExpressionMapUint32_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 13, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FieldExpressionMapUint32`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMapUint32Descriptor = $convert.base64Decode(
    'ChhGaWVsZEV4cHJlc3Npb25NYXBVaW50MzISwwEKA3ZhbBgBIAMoCzJOLmJ1Zi52YWxpZGF0ZS'
    '5jb25mb3JtYW5jZS5jYXNlcy5jdXN0b21fcnVsZXMuRmllbGRFeHByZXNzaW9uTWFwVWludDMy'
    'LlZhbEVudHJ5QmG6SF66AVsKG2ZpZWxkX2V4cHJlc3Npb24ubWFwLnVpbnQzMhIbYWxsIG1hcC'
    'B2YWx1ZXMgbXVzdCBlcXVhbCAxGh90aGlzLmFsbChrLCB0aGlzW2tdID09IHVpbnQoMSkpUgN2'
    'YWwaNgoIVmFsRW50cnkSEAoDa2V5GAEgASgNUgNrZXkSFAoFdmFsdWUYAiABKA1SBXZhbHVlOg'
    'I4AQ==');

@$core.Deprecated('Use fieldExpressionMapUint64Descriptor instead')
const FieldExpressionMapUint64$json = {
  '1': 'FieldExpressionMapUint64',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapUint64.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [FieldExpressionMapUint64_ValEntry$json],
};

@$core.Deprecated('Use fieldExpressionMapUint64Descriptor instead')
const FieldExpressionMapUint64_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 4, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FieldExpressionMapUint64`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMapUint64Descriptor = $convert.base64Decode(
    'ChhGaWVsZEV4cHJlc3Npb25NYXBVaW50NjQSwwEKA3ZhbBgBIAMoCzJOLmJ1Zi52YWxpZGF0ZS'
    '5jb25mb3JtYW5jZS5jYXNlcy5jdXN0b21fcnVsZXMuRmllbGRFeHByZXNzaW9uTWFwVWludDY0'
    'LlZhbEVudHJ5QmG6SF66AVsKG2ZpZWxkX2V4cHJlc3Npb24ubWFwLnVpbnQ2NBIbYWxsIG1hcC'
    'B2YWx1ZXMgbXVzdCBlcXVhbCAxGh90aGlzLmFsbChrLCB0aGlzW2tdID09IHVpbnQoMSkpUgN2'
    'YWwaNgoIVmFsRW50cnkSEAoDa2V5GAEgASgEUgNrZXkSFAoFdmFsdWUYAiABKARSBXZhbHVlOg'
    'I4AQ==');

@$core.Deprecated('Use fieldExpressionMapBoolDescriptor instead')
const FieldExpressionMapBool$json = {
  '1': 'FieldExpressionMapBool',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapBool.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [FieldExpressionMapBool_ValEntry$json],
};

@$core.Deprecated('Use fieldExpressionMapBoolDescriptor instead')
const FieldExpressionMapBool_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 8, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FieldExpressionMapBool`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMapBoolDescriptor = $convert.base64Decode(
    'ChZGaWVsZEV4cHJlc3Npb25NYXBCb29sEsEBCgN2YWwYASADKAsyTC5idWYudmFsaWRhdGUuY2'
    '9uZm9ybWFuY2UuY2FzZXMuY3VzdG9tX3J1bGVzLkZpZWxkRXhwcmVzc2lvbk1hcEJvb2wuVmFs'
    'RW50cnlCYbpIXroBWwoZZmllbGRfZXhwcmVzc2lvbi5tYXAuYm9vbBIfYWxsIG1hcCB2YWx1ZX'
    'MgbXVzdCBlcXVhbCBmYWxzZRoddGhpcy5hbGwoaywgdGhpc1trXSA9PSBmYWxzZSlSA3ZhbBo2'
    'CghWYWxFbnRyeRIQCgNrZXkYASABKAhSA2tleRIUCgV2YWx1ZRgCIAEoCFIFdmFsdWU6AjgB');

@$core.Deprecated('Use fieldExpressionMapStringDescriptor instead')
const FieldExpressionMapString$json = {
  '1': 'FieldExpressionMapString',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapString.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [FieldExpressionMapString_ValEntry$json],
};

@$core.Deprecated('Use fieldExpressionMapStringDescriptor instead')
const FieldExpressionMapString_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FieldExpressionMapString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMapStringDescriptor = $convert.base64Decode(
    'ChhGaWVsZEV4cHJlc3Npb25NYXBTdHJpbmcSxQEKA3ZhbBgBIAMoCzJOLmJ1Zi52YWxpZGF0ZS'
    '5jb25mb3JtYW5jZS5jYXNlcy5jdXN0b21fcnVsZXMuRmllbGRFeHByZXNzaW9uTWFwU3RyaW5n'
    'LlZhbEVudHJ5QmO6SGC6AV0KG2ZpZWxkX2V4cHJlc3Npb24ubWFwLnN0cmluZxIfYWxsIG1hcC'
    'B2YWx1ZXMgbXVzdCBlcXVhbCAnZm9vJxoddGhpcy5hbGwoaywgdGhpc1trXSA9PSAnZm9vJylS'
    'A3ZhbBo2CghWYWxFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdW'
    'U6AjgB');

@$core.Deprecated('Use fieldExpressionMapEnumDescriptor instead')
const FieldExpressionMapEnum$json = {
  '1': 'FieldExpressionMapEnum',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapEnum.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [FieldExpressionMapEnum_ValEntry$json],
};

@$core.Deprecated('Use fieldExpressionMapEnumDescriptor instead')
const FieldExpressionMapEnum_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.custom_rules.Enum',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `FieldExpressionMapEnum`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMapEnumDescriptor = $convert.base64Decode(
    'ChZGaWVsZEV4cHJlc3Npb25NYXBFbnVtEsQBCgN2YWwYASADKAsyTC5idWYudmFsaWRhdGUuY2'
    '9uZm9ybWFuY2UuY2FzZXMuY3VzdG9tX3J1bGVzLkZpZWxkRXhwcmVzc2lvbk1hcEVudW0uVmFs'
    'RW50cnlCZLpIYboBXgoZZmllbGRfZXhwcmVzc2lvbi5tYXAuZW51bRImdGVzdCBtZXNzYWdlIG'
    'ZpZWxkX2V4cHJlc3Npb24ubWFwLmVudW0aGXRoaXMuYWxsKGssIHRoaXNba10gPT0gMSlSA3Zh'
    'bBppCghWYWxFbnRyeRIQCgNrZXkYASABKAVSA2tleRJHCgV2YWx1ZRgCIAEoDjIxLmJ1Zi52YW'
    'xpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy5jdXN0b21fcnVsZXMuRW51bVIFdmFsdWU6AjgB');

@$core.Deprecated('Use fieldExpressionMapMessageDescriptor instead')
const FieldExpressionMapMessage$json = {
  '1': 'FieldExpressionMapMessage',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapMessage.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [
    FieldExpressionMapMessage_ValEntry$json,
    FieldExpressionMapMessage_Msg$json
  ],
};

@$core.Deprecated('Use fieldExpressionMapMessageDescriptor instead')
const FieldExpressionMapMessage_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapMessage.Msg',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use fieldExpressionMapMessageDescriptor instead')
const FieldExpressionMapMessage_Msg$json = {
  '1': 'Msg',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
  ],
};

/// Descriptor for `FieldExpressionMapMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMapMessageDescriptor = $convert.base64Decode(
    'ChlGaWVsZEV4cHJlc3Npb25NYXBNZXNzYWdlEs8BCgN2YWwYASADKAsyTy5idWYudmFsaWRhdG'
    'UuY29uZm9ybWFuY2UuY2FzZXMuY3VzdG9tX3J1bGVzLkZpZWxkRXhwcmVzc2lvbk1hcE1lc3Nh'
    'Z2UuVmFsRW50cnlCbLpIaboBZgocZmllbGRfZXhwcmVzc2lvbi5tYXAubWVzc2FnZRIpdGVzdC'
    'BtZXNzYWdlIGZpZWxkX2V4cHJlc3Npb24ubWFwLm1lc3NhZ2UaG3RoaXMuYWxsKGssIHRoaXNb'
    'a10uYSA9PSAxKVIDdmFsGoIBCghWYWxFbnRyeRIQCgNrZXkYASABKAVSA2tleRJgCgV2YWx1ZR'
    'gCIAEoCzJKLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy5jdXN0b21fcnVsZXMuRmll'
    'bGRFeHByZXNzaW9uTWFwTWVzc2FnZS5Nc2dSBXZhbHVlOgI4ARoTCgNNc2cSDAoBYRgBIAEoBV'
    'IBYQ==');

@$core.Deprecated('Use fieldExpressionMapKeysDescriptor instead')
const FieldExpressionMapKeys$json = {
  '1': 'FieldExpressionMapKeys',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapKeys.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [FieldExpressionMapKeys_ValEntry$json],
};

@$core.Deprecated('Use fieldExpressionMapKeysDescriptor instead')
const FieldExpressionMapKeys_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FieldExpressionMapKeys`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMapKeysDescriptor = $convert.base64Decode(
    'ChZGaWVsZEV4cHJlc3Npb25NYXBLZXlzEsYBCgN2YWwYASADKAsyTC5idWYudmFsaWRhdGUuY2'
    '9uZm9ybWFuY2UuY2FzZXMuY3VzdG9tX3J1bGVzLkZpZWxkRXhwcmVzc2lvbk1hcEtleXMuVmFs'
    'RW50cnlCZrpIY5oBYCJeugFbChlmaWVsZF9leHByZXNzaW9uLm1hcC5rZXlzEiZ0ZXN0IG1lc3'
    'NhZ2UgZmllbGRfZXhwcmVzc2lvbi5tYXAua2V5cxoWdGhpcyA9PSA0IHx8IHRoaXMgPT0gOFID'
    'dmFsGjYKCFZhbEVudHJ5EhAKA2tleRgBIAEoBVIDa2V5EhQKBXZhbHVlGAIgASgFUgV2YWx1ZT'
    'oCOAE=');

@$core.Deprecated('Use fieldExpressionMapScalarValuesDescriptor instead')
const FieldExpressionMapScalarValues$json = {
  '1': 'FieldExpressionMapScalarValues',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapScalarValues.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [FieldExpressionMapScalarValues_ValEntry$json],
};

@$core.Deprecated('Use fieldExpressionMapScalarValuesDescriptor instead')
const FieldExpressionMapScalarValues_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FieldExpressionMapScalarValues`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMapScalarValuesDescriptor = $convert.base64Decode(
    'Ch5GaWVsZEV4cHJlc3Npb25NYXBTY2FsYXJWYWx1ZXMS0wEKA3ZhbBgBIAMoCzJULmJ1Zi52YW'
    'xpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy5jdXN0b21fcnVsZXMuRmllbGRFeHByZXNzaW9uTWFw'
    'U2NhbGFyVmFsdWVzLlZhbEVudHJ5Qmu6SGiaAWUqY7oBYAoiZmllbGRfZXhwcmVzc2lvbi5tYX'
    'Auc2NhbGFyLnZhbHVlcxIvdGVzdCBtZXNzYWdlIGZpZWxkX2V4cHJlc3Npb24ubWFwLnNjYWxh'
    'ci52YWx1ZXMaCXRoaXMgPT0gMVIDdmFsGjYKCFZhbEVudHJ5EhAKA2tleRgBIAEoBVIDa2V5Eh'
    'QKBXZhbHVlGAIgASgFUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use fieldExpressionMapEnumValuesDescriptor instead')
const FieldExpressionMapEnumValues$json = {
  '1': 'FieldExpressionMapEnumValues',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapEnumValues.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [FieldExpressionMapEnumValues_ValEntry$json],
};

@$core.Deprecated('Use fieldExpressionMapEnumValuesDescriptor instead')
const FieldExpressionMapEnumValues_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.custom_rules.Enum',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `FieldExpressionMapEnumValues`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMapEnumValuesDescriptor = $convert.base64Decode(
    'ChxGaWVsZEV4cHJlc3Npb25NYXBFbnVtVmFsdWVzEs0BCgN2YWwYASADKAsyUi5idWYudmFsaW'
    'RhdGUuY29uZm9ybWFuY2UuY2FzZXMuY3VzdG9tX3J1bGVzLkZpZWxkRXhwcmVzc2lvbk1hcEVu'
    'dW1WYWx1ZXMuVmFsRW50cnlCZ7pIZJoBYSpfugFcCiBmaWVsZF9leHByZXNzaW9uLm1hcC5lbn'
    'VtLnZhbHVlcxItdGVzdCBtZXNzYWdlIGZpZWxkX2V4cHJlc3Npb24ubWFwLmVudW0udmFsdWVz'
    'Ggl0aGlzID09IDFSA3ZhbBppCghWYWxFbnRyeRIQCgNrZXkYASABKAVSA2tleRJHCgV2YWx1ZR'
    'gCIAEoDjIxLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy5jdXN0b21fcnVsZXMuRW51'
    'bVIFdmFsdWU6AjgB');

@$core.Deprecated('Use fieldExpressionMapMessageValuesDescriptor instead')
const FieldExpressionMapMessageValues$json = {
  '1': 'FieldExpressionMapMessageValues',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapMessageValues.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [
    FieldExpressionMapMessageValues_ValEntry$json,
    FieldExpressionMapMessageValues_Msg$json
  ],
};

@$core.Deprecated('Use fieldExpressionMapMessageValuesDescriptor instead')
const FieldExpressionMapMessageValues_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionMapMessageValues.Msg',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use fieldExpressionMapMessageValuesDescriptor instead')
const FieldExpressionMapMessageValues_Msg$json = {
  '1': 'Msg',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
  ],
};

/// Descriptor for `FieldExpressionMapMessageValues`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionMapMessageValuesDescriptor = $convert.base64Decode(
    'Ch9GaWVsZEV4cHJlc3Npb25NYXBNZXNzYWdlVmFsdWVzEtgBCgN2YWwYASADKAsyVS5idWYudm'
    'FsaWRhdGUuY29uZm9ybWFuY2UuY2FzZXMuY3VzdG9tX3J1bGVzLkZpZWxkRXhwcmVzc2lvbk1h'
    'cE1lc3NhZ2VWYWx1ZXMuVmFsRW50cnlCb7pIbJoBaSpnugFkCiNmaWVsZF9leHByZXNzaW9uLm'
    '1hcC5tZXNzYWdlLnZhbHVlcxIwdGVzdCBtZXNzYWdlIGZpZWxkX2V4cHJlc3Npb24ubWFwLm1l'
    'c3NhZ2UudmFsdWVzGgt0aGlzLmEgPT0gMVIDdmFsGogBCghWYWxFbnRyeRIQCgNrZXkYASABKA'
    'VSA2tleRJmCgV2YWx1ZRgCIAEoCzJQLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy5j'
    'dXN0b21fcnVsZXMuRmllbGRFeHByZXNzaW9uTWFwTWVzc2FnZVZhbHVlcy5Nc2dSBXZhbHVlOg'
    'I4ARoTCgNNc2cSDAoBYRgBIAEoBVIBYQ==');

@$core.Deprecated('Use fieldExpressionRepeatedScalarDescriptor instead')
const FieldExpressionRepeatedScalar$json = {
  '1': 'FieldExpressionRepeatedScalar',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 5, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `FieldExpressionRepeatedScalar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionRepeatedScalarDescriptor =
    $convert.base64Decode(
        'Ch1GaWVsZEV4cHJlc3Npb25SZXBlYXRlZFNjYWxhchJ+CgN2YWwYASADKAVCbLpIaboBZgogZm'
        'llbGRfZXhwcmVzc2lvbi5yZXBlYXRlZC5zY2FsYXISLXRlc3QgbWVzc2FnZSBmaWVsZF9leHBy'
        'ZXNzaW9uLnJlcGVhdGVkLnNjYWxhchoTdGhpcy5hbGwoZSwgZSA9PSAxKVIDdmFs');

@$core.Deprecated('Use fieldExpressionRepeatedEnumDescriptor instead')
const FieldExpressionRepeatedEnum$json = {
  '1': 'FieldExpressionRepeatedEnum',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 14,
      '6': '.buf.validate.conformance.cases.custom_rules.Enum',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `FieldExpressionRepeatedEnum`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionRepeatedEnumDescriptor = $convert.base64Decode(
    'ChtGaWVsZEV4cHJlc3Npb25SZXBlYXRlZEVudW0SrQEKA3ZhbBgBIAMoDjIxLmJ1Zi52YWxpZG'
    'F0ZS5jb25mb3JtYW5jZS5jYXNlcy5jdXN0b21fcnVsZXMuRW51bUJoukhlugFiCh5maWVsZF9l'
    'eHByZXNzaW9uLnJlcGVhdGVkLmVudW0SK3Rlc3QgbWVzc2FnZSBmaWVsZF9leHByZXNzaW9uLn'
    'JlcGVhdGVkLmVudW0aE3RoaXMuYWxsKGUsIGUgPT0gMSlSA3ZhbA==');

@$core.Deprecated('Use fieldExpressionRepeatedMessageDescriptor instead')
const FieldExpressionRepeatedMessage$json = {
  '1': 'FieldExpressionRepeatedMessage',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionRepeatedMessage.Msg',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [FieldExpressionRepeatedMessage_Msg$json],
};

@$core.Deprecated('Use fieldExpressionRepeatedMessageDescriptor instead')
const FieldExpressionRepeatedMessage_Msg$json = {
  '1': 'Msg',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
  ],
};

/// Descriptor for `FieldExpressionRepeatedMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionRepeatedMessageDescriptor = $convert.base64Decode(
    'Ch5GaWVsZEV4cHJlc3Npb25SZXBlYXRlZE1lc3NhZ2US0wEKA3ZhbBgBIAMoCzJPLmJ1Zi52YW'
    'xpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy5jdXN0b21fcnVsZXMuRmllbGRFeHByZXNzaW9uUmVw'
    'ZWF0ZWRNZXNzYWdlLk1zZ0JwukhtugFqCiFmaWVsZF9leHByZXNzaW9uLnJlcGVhdGVkLm1lc3'
    'NhZ2USLnRlc3QgbWVzc2FnZSBmaWVsZF9leHByZXNzaW9uLnJlcGVhdGVkLm1lc3NhZ2UaFXRo'
    'aXMuYWxsKGUsIGUuYSA9PSAxKVIDdmFsGhMKA01zZxIMCgFhGAEgASgFUgFh');

@$core.Deprecated('Use fieldExpressionRepeatedScalarItemsDescriptor instead')
const FieldExpressionRepeatedScalarItems$json = {
  '1': 'FieldExpressionRepeatedScalarItems',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 5, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `FieldExpressionRepeatedScalarItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionRepeatedScalarItemsDescriptor =
    $convert.base64Decode(
        'CiJGaWVsZEV4cHJlc3Npb25SZXBlYXRlZFNjYWxhckl0ZW1zEoUBCgN2YWwYASADKAVCc7pIcJ'
        'IBbSJrugFoCiZmaWVsZF9leHByZXNzaW9uLnJlcGVhdGVkLnNjYWxhci5pdGVtcxIzdGVzdCBt'
        'ZXNzYWdlIGZpZWxkX2V4cHJlc3Npb24ucmVwZWF0ZWQuc2NhbGFyLml0ZW1zGgl0aGlzID09ID'
        'FSA3ZhbA==');

@$core.Deprecated('Use fieldExpressionRepeatedEnumItemsDescriptor instead')
const FieldExpressionRepeatedEnumItems$json = {
  '1': 'FieldExpressionRepeatedEnumItems',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 14,
      '6': '.buf.validate.conformance.cases.custom_rules.Enum',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `FieldExpressionRepeatedEnumItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionRepeatedEnumItemsDescriptor =
    $convert.base64Decode(
        'CiBGaWVsZEV4cHJlc3Npb25SZXBlYXRlZEVudW1JdGVtcxK0AQoDdmFsGAEgAygOMjEuYnVmLn'
        'ZhbGlkYXRlLmNvbmZvcm1hbmNlLmNhc2VzLmN1c3RvbV9ydWxlcy5FbnVtQm+6SGySAWkiZ7oB'
        'ZAokZmllbGRfZXhwcmVzc2lvbi5yZXBlYXRlZC5lbnVtLml0ZW1zEjF0ZXN0IG1lc3NhZ2UgZm'
        'llbGRfZXhwcmVzc2lvbi5yZXBlYXRlZC5lbnVtLml0ZW1zGgl0aGlzID09IDFSA3ZhbA==');

@$core.Deprecated('Use fieldExpressionRepeatedMessageItemsDescriptor instead')
const FieldExpressionRepeatedMessageItems$json = {
  '1': 'FieldExpressionRepeatedMessageItems',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.custom_rules.FieldExpressionRepeatedMessageItems.Msg',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [FieldExpressionRepeatedMessageItems_Msg$json],
};

@$core.Deprecated('Use fieldExpressionRepeatedMessageItemsDescriptor instead')
const FieldExpressionRepeatedMessageItems_Msg$json = {
  '1': 'Msg',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
  ],
};

/// Descriptor for `FieldExpressionRepeatedMessageItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExpressionRepeatedMessageItemsDescriptor = $convert.base64Decode(
    'CiNGaWVsZEV4cHJlc3Npb25SZXBlYXRlZE1lc3NhZ2VJdGVtcxLfAQoDdmFsGAEgAygLMlQuYn'
    'VmLnZhbGlkYXRlLmNvbmZvcm1hbmNlLmNhc2VzLmN1c3RvbV9ydWxlcy5GaWVsZEV4cHJlc3Np'
    'b25SZXBlYXRlZE1lc3NhZ2VJdGVtcy5Nc2dCd7pIdJIBcSJvugFsCidmaWVsZF9leHByZXNzaW'
    '9uLnJlcGVhdGVkLm1lc3NhZ2UuaXRlbXMSNHRlc3QgbWVzc2FnZSBmaWVsZF9leHByZXNzaW9u'
    'LnJlcGVhdGVkLm1lc3NhZ2UuaXRlbXMaC3RoaXMuYSA9PSAxUgN2YWwaEwoDTXNnEgwKAWEYAS'
    'ABKAVSAWE=');
