// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/enums.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use testEnumDescriptor instead')
const TestEnum$json = {
  '1': 'TestEnum',
  '2': [
    {'1': 'TEST_ENUM_UNSPECIFIED', '2': 0},
    {'1': 'TEST_ENUM_ONE', '2': 1},
    {'1': 'TEST_ENUM_TWO', '2': 2},
  ],
};

/// Descriptor for `TestEnum`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testEnumDescriptor = $convert.base64Decode(
    'CghUZXN0RW51bRIZChVURVNUX0VOVU1fVU5TUEVDSUZJRUQQABIRCg1URVNUX0VOVU1fT05FEA'
    'ESEQoNVEVTVF9FTlVNX1RXTxAC');

@$core.Deprecated('Use testEnumAliasDescriptor instead')
const TestEnumAlias$json = {
  '1': 'TestEnumAlias',
  '2': [
    {'1': 'TEST_ENUM_ALIAS_UNSPECIFIED', '2': 0},
    {'1': 'TEST_ENUM_ALIAS_A', '2': 1},
    {'1': 'TEST_ENUM_ALIAS_B', '2': 2},
    {'1': 'TEST_ENUM_ALIAS_C', '2': 3},
    {'1': 'TEST_ENUM_ALIAS_ALPHA', '2': 1},
    {'1': 'TEST_ENUM_ALIAS_BETA', '2': 2},
    {'1': 'TEST_ENUM_ALIAS_GAMMA', '2': 3},
  ],
  '3': {'2': true},
};

/// Descriptor for `TestEnumAlias`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testEnumAliasDescriptor = $convert.base64Decode(
    'Cg1UZXN0RW51bUFsaWFzEh8KG1RFU1RfRU5VTV9BTElBU19VTlNQRUNJRklFRBAAEhUKEVRFU1'
    'RfRU5VTV9BTElBU19BEAESFQoRVEVTVF9FTlVNX0FMSUFTX0IQAhIVChFURVNUX0VOVU1fQUxJ'
    'QVNfQxADEhkKFVRFU1RfRU5VTV9BTElBU19BTFBIQRABEhgKFFRFU1RfRU5VTV9BTElBU19CRV'
    'RBEAISGQoVVEVTVF9FTlVNX0FMSUFTX0dBTU1BEAMaAhAB');

@$core.Deprecated('Use enumNoneDescriptor instead')
const EnumNone$json = {
  '1': 'EnumNone',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnum',
      '10': 'val'
    },
  ],
};

/// Descriptor for `EnumNone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumNoneDescriptor = $convert.base64Decode(
    'CghFbnVtTm9uZRI6CgN2YWwYASABKA4yKC5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2FzZX'
    'MuVGVzdEVudW1SA3ZhbA==');

@$core.Deprecated('Use enumConstDescriptor instead')
const EnumConst$json = {
  '1': 'EnumConst',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnum',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `EnumConst`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumConstDescriptor = $convert.base64Decode(
    'CglFbnVtQ29uc3QSRAoDdmFsGAEgASgOMiguYnVmLnZhbGlkYXRlLmNvbmZvcm1hbmNlLmNhc2'
    'VzLlRlc3RFbnVtQgi6SAWCAQIIAlIDdmFs');

@$core.Deprecated('Use enumAliasConstDescriptor instead')
const EnumAliasConst$json = {
  '1': 'EnumAliasConst',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnumAlias',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `EnumAliasConst`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumAliasConstDescriptor = $convert.base64Decode(
    'Cg5FbnVtQWxpYXNDb25zdBJJCgN2YWwYASABKA4yLS5idWYudmFsaWRhdGUuY29uZm9ybWFuY2'
    'UuY2FzZXMuVGVzdEVudW1BbGlhc0IIukgFggECCAJSA3ZhbA==');

@$core.Deprecated('Use enumDefinedDescriptor instead')
const EnumDefined$json = {
  '1': 'EnumDefined',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnum',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `EnumDefined`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumDefinedDescriptor = $convert.base64Decode(
    'CgtFbnVtRGVmaW5lZBJECgN2YWwYASABKA4yKC5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2'
    'FzZXMuVGVzdEVudW1CCLpIBYIBAhABUgN2YWw=');

@$core.Deprecated('Use enumAliasDefinedDescriptor instead')
const EnumAliasDefined$json = {
  '1': 'EnumAliasDefined',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnumAlias',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `EnumAliasDefined`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumAliasDefinedDescriptor = $convert.base64Decode(
    'ChBFbnVtQWxpYXNEZWZpbmVkEkkKA3ZhbBgBIAEoDjItLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW'
    '5jZS5jYXNlcy5UZXN0RW51bUFsaWFzQgi6SAWCAQIQAVIDdmFs');

@$core.Deprecated('Use enumInDescriptor instead')
const EnumIn$json = {
  '1': 'EnumIn',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnum',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `EnumIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumInDescriptor = $convert.base64Decode(
    'CgZFbnVtSW4SRgoDdmFsGAEgASgOMiguYnVmLnZhbGlkYXRlLmNvbmZvcm1hbmNlLmNhc2VzLl'
    'Rlc3RFbnVtQgq6SAeCAQQYABgCUgN2YWw=');

@$core.Deprecated('Use enumAliasInDescriptor instead')
const EnumAliasIn$json = {
  '1': 'EnumAliasIn',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnumAlias',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `EnumAliasIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumAliasInDescriptor = $convert.base64Decode(
    'CgtFbnVtQWxpYXNJbhJLCgN2YWwYASABKA4yLS5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2'
    'FzZXMuVGVzdEVudW1BbGlhc0IKukgHggEEGAAYAlIDdmFs');

@$core.Deprecated('Use enumNotInDescriptor instead')
const EnumNotIn$json = {
  '1': 'EnumNotIn',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnum',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `EnumNotIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumNotInDescriptor = $convert.base64Decode(
    'CglFbnVtTm90SW4SRAoDdmFsGAEgASgOMiguYnVmLnZhbGlkYXRlLmNvbmZvcm1hbmNlLmNhc2'
    'VzLlRlc3RFbnVtQgi6SAWCAQIgAVIDdmFs');

@$core.Deprecated('Use enumAliasNotInDescriptor instead')
const EnumAliasNotIn$json = {
  '1': 'EnumAliasNotIn',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnumAlias',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `EnumAliasNotIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumAliasNotInDescriptor = $convert.base64Decode(
    'Cg5FbnVtQWxpYXNOb3RJbhJJCgN2YWwYASABKA4yLS5idWYudmFsaWRhdGUuY29uZm9ybWFuY2'
    'UuY2FzZXMuVGVzdEVudW1BbGlhc0IIukgFggECIAFSA3ZhbA==');

@$core.Deprecated('Use enumExternalDescriptor instead')
const EnumExternal$json = {
  '1': 'EnumExternal',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.other_package.Embed.Enumerated',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `EnumExternal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumExternalDescriptor = $convert.base64Decode(
    'CgxFbnVtRXh0ZXJuYWwSWgoDdmFsGAEgASgOMj4uYnVmLnZhbGlkYXRlLmNvbmZvcm1hbmNlLm'
    'Nhc2VzLm90aGVyX3BhY2thZ2UuRW1iZWQuRW51bWVyYXRlZEIIukgFggECEAFSA3ZhbA==');

@$core.Deprecated('Use enumExternal2Descriptor instead')
const EnumExternal2$json = {
  '1': 'EnumExternal2',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6':
          '.buf.validate.conformance.cases.other_package.Embed.DoubleEmbed.DoubleEnumerated',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `EnumExternal2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumExternal2Descriptor = $convert.base64Decode(
    'Cg1FbnVtRXh0ZXJuYWwyEmwKA3ZhbBgBIAEoDjJQLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5jZS'
    '5jYXNlcy5vdGhlcl9wYWNrYWdlLkVtYmVkLkRvdWJsZUVtYmVkLkRvdWJsZUVudW1lcmF0ZWRC'
    'CLpIBYIBAhABUgN2YWw=');

@$core.Deprecated('Use repeatedEnumDefinedDescriptor instead')
const RepeatedEnumDefined$json = {
  '1': 'RepeatedEnumDefined',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnum',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `RepeatedEnumDefined`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedEnumDefinedDescriptor = $convert.base64Decode(
    'ChNSZXBlYXRlZEVudW1EZWZpbmVkEkkKA3ZhbBgBIAMoDjIoLmJ1Zi52YWxpZGF0ZS5jb25mb3'
    'JtYW5jZS5jYXNlcy5UZXN0RW51bUINukgKkgEHIgWCAQIQAVIDdmFs');

@$core.Deprecated('Use repeatedExternalEnumDefinedDescriptor instead')
const RepeatedExternalEnumDefined$json = {
  '1': 'RepeatedExternalEnumDefined',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 14,
      '6': '.buf.validate.conformance.cases.other_package.Embed.Enumerated',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `RepeatedExternalEnumDefined`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedExternalEnumDefinedDescriptor =
    $convert.base64Decode(
        'ChtSZXBlYXRlZEV4dGVybmFsRW51bURlZmluZWQSXwoDdmFsGAEgAygOMj4uYnVmLnZhbGlkYX'
        'RlLmNvbmZvcm1hbmNlLmNhc2VzLm90aGVyX3BhY2thZ2UuRW1iZWQuRW51bWVyYXRlZEINukgK'
        'kgEHIgWCAQIQAVIDdmFs');

@$core.Deprecated('Use repeatedYetAnotherExternalEnumDefinedDescriptor instead')
const RepeatedYetAnotherExternalEnumDefined$json = {
  '1': 'RepeatedYetAnotherExternalEnumDefined',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 14,
      '6':
          '.buf.validate.conformance.cases.yet_another_package.Embed.Enumerated',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `RepeatedYetAnotherExternalEnumDefined`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedYetAnotherExternalEnumDefinedDescriptor =
    $convert.base64Decode(
        'CiVSZXBlYXRlZFlldEFub3RoZXJFeHRlcm5hbEVudW1EZWZpbmVkEmUKA3ZhbBgBIAMoDjJELm'
        'J1Zi52YWxpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy55ZXRfYW5vdGhlcl9wYWNrYWdlLkVtYmVk'
        'LkVudW1lcmF0ZWRCDbpICpIBByIFggECEAFSA3ZhbA==');

@$core.Deprecated('Use mapEnumDefinedDescriptor instead')
const MapEnumDefined$json = {
  '1': 'MapEnumDefined',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapEnumDefined.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [MapEnumDefined_ValEntry$json],
};

@$core.Deprecated('Use mapEnumDefinedDescriptor instead')
const MapEnumDefined_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnum',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `MapEnumDefined`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapEnumDefinedDescriptor = $convert.base64Decode(
    'Cg5NYXBFbnVtRGVmaW5lZBJYCgN2YWwYASADKAsyNy5idWYudmFsaWRhdGUuY29uZm9ybWFuY2'
    'UuY2FzZXMuTWFwRW51bURlZmluZWQuVmFsRW50cnlCDbpICpoBByoFggECEAFSA3ZhbBpgCghW'
    'YWxFbnRyeRIQCgNrZXkYASABKAlSA2tleRI+CgV2YWx1ZRgCIAEoDjIoLmJ1Zi52YWxpZGF0ZS'
    '5jb25mb3JtYW5jZS5jYXNlcy5UZXN0RW51bVIFdmFsdWU6AjgB');

@$core.Deprecated('Use mapExternalEnumDefinedDescriptor instead')
const MapExternalEnumDefined$json = {
  '1': 'MapExternalEnumDefined',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapExternalEnumDefined.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [MapExternalEnumDefined_ValEntry$json],
};

@$core.Deprecated('Use mapExternalEnumDefinedDescriptor instead')
const MapExternalEnumDefined_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.other_package.Embed.Enumerated',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `MapExternalEnumDefined`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapExternalEnumDefinedDescriptor = $convert.base64Decode(
    'ChZNYXBFeHRlcm5hbEVudW1EZWZpbmVkEmAKA3ZhbBgBIAMoCzI/LmJ1Zi52YWxpZGF0ZS5jb2'
    '5mb3JtYW5jZS5jYXNlcy5NYXBFeHRlcm5hbEVudW1EZWZpbmVkLlZhbEVudHJ5Qg26SAqaAQcq'
    'BYIBAhABUgN2YWwadgoIVmFsRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSVAoFdmFsdWUYAiABKA'
    '4yPi5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2FzZXMub3RoZXJfcGFja2FnZS5FbWJlZC5F'
    'bnVtZXJhdGVkUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use enumInsideOneofDescriptor instead')
const EnumInsideOneof$json = {
  '1': 'EnumInsideOneof',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnum',
      '8': {},
      '9': 0,
      '10': 'val'
    },
    {
      '1': 'val2',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnum',
      '8': {},
      '9': 1,
      '10': 'val2'
    },
  ],
  '8': [
    {'1': 'foo'},
    {'1': 'bar'},
  ],
};

/// Descriptor for `EnumInsideOneof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumInsideOneofDescriptor = $convert.base64Decode(
    'Cg9FbnVtSW5zaWRlT25lb2YSRgoDdmFsGAEgASgOMiguYnVmLnZhbGlkYXRlLmNvbmZvcm1hbm'
    'NlLmNhc2VzLlRlc3RFbnVtQgi6SAWCAQIQAUgAUgN2YWwSSgoEdmFsMhgCIAEoDjIoLmJ1Zi52'
    'YWxpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy5UZXN0RW51bUIKukgHggEEEAEgAEgBUgR2YWwyQg'
    'UKA2Zvb0IFCgNiYXI=');

@$core.Deprecated('Use enumExampleDescriptor instead')
const EnumExample$json = {
  '1': 'EnumExample',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.TestEnum',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `EnumExample`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumExampleDescriptor = $convert.base64Decode(
    'CgtFbnVtRXhhbXBsZRJECgN2YWwYASABKA4yKC5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2'
    'FzZXMuVGVzdEVudW1CCLpIBYIBAigCUgN2YWw=');
