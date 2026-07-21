// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/maps.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use mapNoneDescriptor instead')
const MapNone$json = {
  '1': 'MapNone',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapNone.ValEntry',
      '10': 'val'
    },
  ],
  '3': [MapNone_ValEntry$json],
};

@$core.Deprecated('Use mapNoneDescriptor instead')
const MapNone_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MapNone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapNoneDescriptor = $convert.base64Decode(
    'CgdNYXBOb25lEkIKA3ZhbBgBIAMoCzIwLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy'
    '5NYXBOb25lLlZhbEVudHJ5UgN2YWwaNgoIVmFsRW50cnkSEAoDa2V5GAEgASgNUgNrZXkSFAoF'
    'dmFsdWUYAiABKAhSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use mapMinDescriptor instead')
const MapMin$json = {
  '1': 'MapMin',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapMin.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [MapMin_ValEntry$json],
};

@$core.Deprecated('Use mapMinDescriptor instead')
const MapMin_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 2, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MapMin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapMinDescriptor = $convert.base64Decode(
    'CgZNYXBNaW4SSwoDdmFsGAEgAygLMi8uYnVmLnZhbGlkYXRlLmNvbmZvcm1hbmNlLmNhc2VzLk'
    '1hcE1pbi5WYWxFbnRyeUIIukgFmgECCAJSA3ZhbBo2CghWYWxFbnRyeRIQCgNrZXkYASABKAVS'
    'A2tleRIUCgV2YWx1ZRgCIAEoAlIFdmFsdWU6AjgB');

@$core.Deprecated('Use mapMaxDescriptor instead')
const MapMax$json = {
  '1': 'MapMax',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapMax.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [MapMax_ValEntry$json],
};

@$core.Deprecated('Use mapMaxDescriptor instead')
const MapMax_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 3, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MapMax`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapMaxDescriptor = $convert.base64Decode(
    'CgZNYXBNYXgSSwoDdmFsGAEgAygLMi8uYnVmLnZhbGlkYXRlLmNvbmZvcm1hbmNlLmNhc2VzLk'
    '1hcE1heC5WYWxFbnRyeUIIukgFmgECEANSA3ZhbBo2CghWYWxFbnRyeRIQCgNrZXkYASABKANS'
    'A2tleRIUCgV2YWx1ZRgCIAEoAVIFdmFsdWU6AjgB');

@$core.Deprecated('Use mapMinMaxDescriptor instead')
const MapMinMax$json = {
  '1': 'MapMinMax',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapMinMax.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [MapMinMax_ValEntry$json],
};

@$core.Deprecated('Use mapMinMaxDescriptor instead')
const MapMinMax_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MapMinMax`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapMinMaxDescriptor = $convert.base64Decode(
    'CglNYXBNaW5NYXgSUAoDdmFsGAEgAygLMjIuYnVmLnZhbGlkYXRlLmNvbmZvcm1hbmNlLmNhc2'
    'VzLk1hcE1pbk1heC5WYWxFbnRyeUIKukgHmgEECAIQBFIDdmFsGjYKCFZhbEVudHJ5EhAKA2tl'
    'eRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgIUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use mapExactDescriptor instead')
const MapExact$json = {
  '1': 'MapExact',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapExact.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [MapExact_ValEntry$json],
};

@$core.Deprecated('Use mapExactDescriptor instead')
const MapExact_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MapExact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapExactDescriptor = $convert.base64Decode(
    'CghNYXBFeGFjdBJPCgN2YWwYASADKAsyMS5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2FzZX'
    'MuTWFwRXhhY3QuVmFsRW50cnlCCrpIB5oBBAgDEANSA3ZhbBo2CghWYWxFbnRyeRIQCgNrZXkY'
    'ASABKARSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use mapKeysDescriptor instead')
const MapKeys$json = {
  '1': 'MapKeys',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapKeys.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [MapKeys_ValEntry$json],
};

@$core.Deprecated('Use mapKeysDescriptor instead')
const MapKeys_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 18, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MapKeys`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapKeysDescriptor = $convert.base64Decode(
    'CgdNYXBLZXlzElAKA3ZhbBgBIAMoCzIwLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy'
    '5NYXBLZXlzLlZhbEVudHJ5Qgy6SAmaAQYiBEICEABSA3ZhbBo2CghWYWxFbnRyeRIQCgNrZXkY'
    'ASABKBJSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use mapValuesDescriptor instead')
const MapValues$json = {
  '1': 'MapValues',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapValues.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [MapValues_ValEntry$json],
};

@$core.Deprecated('Use mapValuesDescriptor instead')
const MapValues_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MapValues`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapValuesDescriptor = $convert.base64Decode(
    'CglNYXBWYWx1ZXMSUgoDdmFsGAEgAygLMjIuYnVmLnZhbGlkYXRlLmNvbmZvcm1hbmNlLmNhc2'
    'VzLk1hcFZhbHVlcy5WYWxFbnRyeUIMukgJmgEGKgRyAhADUgN2YWwaNgoIVmFsRW50cnkSEAoD'
    'a2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use mapKeysPatternDescriptor instead')
const MapKeysPattern$json = {
  '1': 'MapKeysPattern',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapKeysPattern.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [MapKeysPattern_ValEntry$json],
};

@$core.Deprecated('Use mapKeysPatternDescriptor instead')
const MapKeysPattern_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MapKeysPattern`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapKeysPatternDescriptor = $convert.base64Decode(
    'Cg5NYXBLZXlzUGF0dGVybhJmCgN2YWwYASADKAsyNy5idWYudmFsaWRhdGUuY29uZm9ybWFuY2'
    'UuY2FzZXMuTWFwS2V5c1BhdHRlcm4uVmFsRW50cnlCG7pIGJoBFSITchEyDyg/aSleW2EtejAt'
    'OV0rJFIDdmFsGjYKCFZhbEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUg'
    'V2YWx1ZToCOAE=');

@$core.Deprecated('Use mapValuesPatternDescriptor instead')
const MapValuesPattern$json = {
  '1': 'MapValuesPattern',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapValuesPattern.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [MapValuesPattern_ValEntry$json],
};

@$core.Deprecated('Use mapValuesPatternDescriptor instead')
const MapValuesPattern_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MapValuesPattern`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapValuesPatternDescriptor = $convert.base64Decode(
    'ChBNYXBWYWx1ZXNQYXR0ZXJuEmgKA3ZhbBgBIAMoCzI5LmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW'
    '5jZS5jYXNlcy5NYXBWYWx1ZXNQYXR0ZXJuLlZhbEVudHJ5Qhu6SBiaARUqE3IRMg8oP2kpXlth'
    'LXowLTldKyRSA3ZhbBo2CghWYWxFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIA'
    'EoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use mapRecursiveDescriptor instead')
const MapRecursive$json = {
  '1': 'MapRecursive',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapRecursive.ValEntry',
      '10': 'val'
    },
  ],
  '3': [MapRecursive_ValEntry$json, MapRecursive_Msg$json],
};

@$core.Deprecated('Use mapRecursiveDescriptor instead')
const MapRecursive_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapRecursive.Msg',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use mapRecursiveDescriptor instead')
const MapRecursive_Msg$json = {
  '1': 'Msg',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `MapRecursive`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapRecursiveDescriptor = $convert.base64Decode(
    'CgxNYXBSZWN1cnNpdmUSRwoDdmFsGAEgAygLMjUuYnVmLnZhbGlkYXRlLmNvbmZvcm1hbmNlLm'
    'Nhc2VzLk1hcFJlY3Vyc2l2ZS5WYWxFbnRyeVIDdmFsGmgKCFZhbEVudHJ5EhAKA2tleRgBIAEo'
    'DVIDa2V5EkYKBXZhbHVlGAIgASgLMjAuYnVmLnZhbGlkYXRlLmNvbmZvcm1hbmNlLmNhc2VzLk'
    '1hcFJlY3Vyc2l2ZS5Nc2dSBXZhbHVlOgI4ARogCgNNc2cSGQoDdmFsGAEgASgJQge6SARyAhAD'
    'UgN2YWw=');

@$core.Deprecated('Use mapExactIgnoreDescriptor instead')
const MapExactIgnore$json = {
  '1': 'MapExactIgnore',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MapExactIgnore.ValEntry',
      '8': {},
      '10': 'val'
    },
  ],
  '3': [MapExactIgnore_ValEntry$json],
};

@$core.Deprecated('Use mapExactIgnoreDescriptor instead')
const MapExactIgnore_ValEntry$json = {
  '1': 'ValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MapExactIgnore`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapExactIgnoreDescriptor = $convert.base64Decode(
    'Cg5NYXBFeGFjdElnbm9yZRJYCgN2YWwYASADKAsyNy5idWYudmFsaWRhdGUuY29uZm9ybWFuY2'
    'UuY2FzZXMuTWFwRXhhY3RJZ25vcmUuVmFsRW50cnlCDbpICtgBAZoBBAgDEANSA3ZhbBo2CghW'
    'YWxFbnRyeRIQCgNrZXkYASABKARSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use multipleMapsDescriptor instead')
const MultipleMaps$json = {
  '1': 'MultipleMaps',
  '2': [
    {
      '1': 'first',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MultipleMaps.FirstEntry',
      '8': {},
      '10': 'first'
    },
    {
      '1': 'second',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MultipleMaps.SecondEntry',
      '8': {},
      '10': 'second'
    },
    {
      '1': 'third',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MultipleMaps.ThirdEntry',
      '8': {},
      '10': 'third'
    },
  ],
  '3': [
    MultipleMaps_FirstEntry$json,
    MultipleMaps_SecondEntry$json,
    MultipleMaps_ThirdEntry$json
  ],
};

@$core.Deprecated('Use multipleMapsDescriptor instead')
const MultipleMaps_FirstEntry$json = {
  '1': 'FirstEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use multipleMapsDescriptor instead')
const MultipleMaps_SecondEntry$json = {
  '1': 'SecondEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use multipleMapsDescriptor instead')
const MultipleMaps_ThirdEntry$json = {
  '1': 'ThirdEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MultipleMaps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multipleMapsDescriptor = $convert.base64Decode(
    'CgxNdWx0aXBsZU1hcHMSWwoFZmlyc3QYASADKAsyNy5idWYudmFsaWRhdGUuY29uZm9ybWFuY2'
    'UuY2FzZXMuTXVsdGlwbGVNYXBzLkZpcnN0RW50cnlCDLpICZoBBiIEKgIgAFIFZmlyc3QSXgoG'
    'c2Vjb25kGAIgAygLMjguYnVmLnZhbGlkYXRlLmNvbmZvcm1hbmNlLmNhc2VzLk11bHRpcGxlTW'
    'Fwcy5TZWNvbmRFbnRyeUIMukgJmgEGIgQaAhAAUgZzZWNvbmQSWwoFdGhpcmQYAyADKAsyNy5i'
    'dWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2FzZXMuTXVsdGlwbGVNYXBzLlRoaXJkRW50cnlCDL'
    'pICZoBBiIEGgIgAFIFdGhpcmQaOAoKRmlyc3RFbnRyeRIQCgNrZXkYASABKA1SA2tleRIUCgV2'
    'YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGjkKC1NlY29uZEVudHJ5EhAKA2tleRgBIAEoBVIDa2V5Eh'
    'QKBXZhbHVlGAIgASgIUgV2YWx1ZToCOAEaOAoKVGhpcmRFbnRyeRIQCgNrZXkYASABKAVSA2tl'
    'eRIUCgV2YWx1ZRgCIAEoCFIFdmFsdWU6AjgB');
