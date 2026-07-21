// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/repeated.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use anEnumDescriptor instead')
const AnEnum$json = {
  '1': 'AnEnum',
  '2': [
    {'1': 'AN_ENUM_UNSPECIFIED', '2': 0},
    {'1': 'AN_ENUM_X', '2': 1},
    {'1': 'AN_ENUM_Y', '2': 2},
  ],
};

/// Descriptor for `AnEnum`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List anEnumDescriptor = $convert.base64Decode(
    'CgZBbkVudW0SFwoTQU5fRU5VTV9VTlNQRUNJRklFRBAAEg0KCUFOX0VOVU1fWBABEg0KCUFOX0'
    'VOVU1fWRAC');

@$core.Deprecated('Use embedDescriptor instead')
const Embed$json = {
  '1': 'Embed',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `Embed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List embedDescriptor =
    $convert.base64Decode('CgVFbWJlZBIZCgN2YWwYASABKANCB7pIBCICIABSA3ZhbA==');

@$core.Deprecated('Use repeatedNoneDescriptor instead')
const RepeatedNone$json = {
  '1': 'RepeatedNone',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 3, '10': 'val'},
  ],
};

/// Descriptor for `RepeatedNone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedNoneDescriptor =
    $convert.base64Decode('CgxSZXBlYXRlZE5vbmUSEAoDdmFsGAEgAygDUgN2YWw=');

@$core.Deprecated('Use repeatedEmbedNoneDescriptor instead')
const RepeatedEmbedNone$json = {
  '1': 'RepeatedEmbedNone',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.Embed',
      '10': 'val'
    },
  ],
};

/// Descriptor for `RepeatedEmbedNone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedEmbedNoneDescriptor = $convert.base64Decode(
    'ChFSZXBlYXRlZEVtYmVkTm9uZRI3CgN2YWwYASADKAsyJS5idWYudmFsaWRhdGUuY29uZm9ybW'
    'FuY2UuY2FzZXMuRW1iZWRSA3ZhbA==');

@$core.Deprecated('Use repeatedEmbedCrossPackageNoneDescriptor instead')
const RepeatedEmbedCrossPackageNone$json = {
  '1': 'RepeatedEmbedCrossPackageNone',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.other_package.Embed',
      '10': 'val'
    },
  ],
};

/// Descriptor for `RepeatedEmbedCrossPackageNone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedEmbedCrossPackageNoneDescriptor =
    $convert.base64Decode(
        'Ch1SZXBlYXRlZEVtYmVkQ3Jvc3NQYWNrYWdlTm9uZRJFCgN2YWwYASADKAsyMy5idWYudmFsaW'
        'RhdGUuY29uZm9ybWFuY2UuY2FzZXMub3RoZXJfcGFja2FnZS5FbWJlZFIDdmFs');

@$core.Deprecated('Use repeatedMinDescriptor instead')
const RepeatedMin$json = {
  '1': 'RepeatedMin',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.Embed',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `RepeatedMin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedMinDescriptor = $convert.base64Decode(
    'CgtSZXBlYXRlZE1pbhJBCgN2YWwYASADKAsyJS5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2'
    'FzZXMuRW1iZWRCCLpIBZIBAggCUgN2YWw=');

@$core.Deprecated('Use repeatedMaxDescriptor instead')
const RepeatedMax$json = {
  '1': 'RepeatedMax',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 1, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `RepeatedMax`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedMaxDescriptor = $convert
    .base64Decode('CgtSZXBlYXRlZE1heBIaCgN2YWwYASADKAFCCLpIBZIBAhADUgN2YWw=');

@$core.Deprecated('Use repeatedMinMaxDescriptor instead')
const RepeatedMinMax$json = {
  '1': 'RepeatedMinMax',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 15, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `RepeatedMinMax`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedMinMaxDescriptor = $convert.base64Decode(
    'Cg5SZXBlYXRlZE1pbk1heBIcCgN2YWwYASADKA9CCrpIB5IBBAgCEARSA3ZhbA==');

@$core.Deprecated('Use repeatedExactDescriptor instead')
const RepeatedExact$json = {
  '1': 'RepeatedExact',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 13, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `RepeatedExact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedExactDescriptor = $convert.base64Decode(
    'Cg1SZXBlYXRlZEV4YWN0EhwKA3ZhbBgBIAMoDUIKukgHkgEECAMQA1IDdmFs');

@$core.Deprecated('Use repeatedUniqueDescriptor instead')
const RepeatedUnique$json = {
  '1': 'RepeatedUnique',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 9, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `RepeatedUnique`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedUniqueDescriptor = $convert.base64Decode(
    'Cg5SZXBlYXRlZFVuaXF1ZRIaCgN2YWwYASADKAlCCLpIBZIBAhgBUgN2YWw=');

@$core.Deprecated('Use repeatedNotUniqueDescriptor instead')
const RepeatedNotUnique$json = {
  '1': 'RepeatedNotUnique',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 9, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `RepeatedNotUnique`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedNotUniqueDescriptor = $convert.base64Decode(
    'ChFSZXBlYXRlZE5vdFVuaXF1ZRIaCgN2YWwYASADKAlCCLpIBZIBAhgAUgN2YWw=');

@$core.Deprecated('Use repeatedMultipleUniqueDescriptor instead')
const RepeatedMultipleUnique$json = {
  '1': 'RepeatedMultipleUnique',
  '2': [
    {'1': 'a', '3': 1, '4': 3, '5': 9, '8': {}, '10': 'a'},
    {'1': 'b', '3': 2, '4': 3, '5': 5, '8': {}, '10': 'b'},
  ],
};

/// Descriptor for `RepeatedMultipleUnique`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedMultipleUniqueDescriptor =
    $convert.base64Decode(
        'ChZSZXBlYXRlZE11bHRpcGxlVW5pcXVlEhYKAWEYASADKAlCCLpIBZIBAhgBUgFhEhYKAWIYAi'
        'ADKAVCCLpIBZIBAhgBUgFi');

@$core.Deprecated('Use repeatedItemRuleDescriptor instead')
const RepeatedItemRule$json = {
  '1': 'RepeatedItemRule',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 2, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `RepeatedItemRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedItemRuleDescriptor = $convert.base64Decode(
    'ChBSZXBlYXRlZEl0ZW1SdWxlEiEKA3ZhbBgBIAMoAkIPukgMkgEJIgcKBSUAAAAAUgN2YWw=');

@$core.Deprecated('Use repeatedItemPatternDescriptor instead')
const RepeatedItemPattern$json = {
  '1': 'RepeatedItemPattern',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 9, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `RepeatedItemPattern`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedItemPatternDescriptor = $convert.base64Decode(
    'ChNSZXBlYXRlZEl0ZW1QYXR0ZXJuEi0KA3ZhbBgBIAMoCUIbukgYkgEVIhNyETIPKD9pKV5bYS'
    '16MC05XSskUgN2YWw=');

@$core.Deprecated('Use repeatedEmbedSkipDescriptor instead')
const RepeatedEmbedSkip$json = {
  '1': 'RepeatedEmbedSkip',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.Embed',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `RepeatedEmbedSkip`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedEmbedSkipDescriptor = $convert.base64Decode(
    'ChFSZXBlYXRlZEVtYmVkU2tpcBJECgN2YWwYASADKAsyJS5idWYudmFsaWRhdGUuY29uZm9ybW'
    'FuY2UuY2FzZXMuRW1iZWRCC7pICJIBBSID2AEDUgN2YWw=');

@$core.Deprecated('Use repeatedItemInDescriptor instead')
const RepeatedItemIn$json = {
  '1': 'RepeatedItemIn',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 9, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `RepeatedItemIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedItemInDescriptor = $convert.base64Decode(
    'Cg5SZXBlYXRlZEl0ZW1JbhImCgN2YWwYASADKAlCFLpIEZIBDiIMcgpSA2Zvb1IDYmFyUgN2YW'
    'w=');

@$core.Deprecated('Use repeatedItemNotInDescriptor instead')
const RepeatedItemNotIn$json = {
  '1': 'RepeatedItemNotIn',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 9, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `RepeatedItemNotIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedItemNotInDescriptor = $convert.base64Decode(
    'ChFSZXBlYXRlZEl0ZW1Ob3RJbhImCgN2YWwYASADKAlCFLpIEZIBDiIMcgpaA2Zvb1oDYmFyUg'
    'N2YWw=');

@$core.Deprecated('Use repeatedEnumInDescriptor instead')
const RepeatedEnumIn$json = {
  '1': 'RepeatedEnumIn',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 14,
      '6': '.buf.validate.conformance.cases.AnEnum',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `RepeatedEnumIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedEnumInDescriptor = $convert.base64Decode(
    'Cg5SZXBlYXRlZEVudW1JbhJHCgN2YWwYASADKA4yJi5idWYudmFsaWRhdGUuY29uZm9ybWFuY2'
    'UuY2FzZXMuQW5FbnVtQg26SAqSAQciBYIBAhgAUgN2YWw=');

@$core.Deprecated('Use repeatedEnumNotInDescriptor instead')
const RepeatedEnumNotIn$json = {
  '1': 'RepeatedEnumNotIn',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 14,
      '6': '.buf.validate.conformance.cases.AnEnum',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `RepeatedEnumNotIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedEnumNotInDescriptor = $convert.base64Decode(
    'ChFSZXBlYXRlZEVudW1Ob3RJbhJHCgN2YWwYASADKA4yJi5idWYudmFsaWRhdGUuY29uZm9ybW'
    'FuY2UuY2FzZXMuQW5FbnVtQg26SAqSAQciBYIBAiAAUgN2YWw=');

@$core.Deprecated('Use repeatedEmbeddedEnumInDescriptor instead')
const RepeatedEmbeddedEnumIn$json = {
  '1': 'RepeatedEmbeddedEnumIn',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 14,
      '6':
          '.buf.validate.conformance.cases.RepeatedEmbeddedEnumIn.AnotherInEnum',
      '8': {},
      '10': 'val'
    },
  ],
  '4': [RepeatedEmbeddedEnumIn_AnotherInEnum$json],
};

@$core.Deprecated('Use repeatedEmbeddedEnumInDescriptor instead')
const RepeatedEmbeddedEnumIn_AnotherInEnum$json = {
  '1': 'AnotherInEnum',
  '2': [
    {'1': 'ANOTHER_IN_ENUM_UNSPECIFIED', '2': 0},
    {'1': 'ANOTHER_IN_ENUM_A', '2': 1},
    {'1': 'ANOTHER_IN_ENUM_B', '2': 2},
  ],
};

/// Descriptor for `RepeatedEmbeddedEnumIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedEmbeddedEnumInDescriptor = $convert.base64Decode(
    'ChZSZXBlYXRlZEVtYmVkZGVkRW51bUluEmUKA3ZhbBgBIAMoDjJELmJ1Zi52YWxpZGF0ZS5jb2'
    '5mb3JtYW5jZS5jYXNlcy5SZXBlYXRlZEVtYmVkZGVkRW51bUluLkFub3RoZXJJbkVudW1CDbpI'
    'CpIBByIFggECGABSA3ZhbCJeCg1Bbm90aGVySW5FbnVtEh8KG0FOT1RIRVJfSU5fRU5VTV9VTl'
    'NQRUNJRklFRBAAEhUKEUFOT1RIRVJfSU5fRU5VTV9BEAESFQoRQU5PVEhFUl9JTl9FTlVNX0IQ'
    'Ag==');

@$core.Deprecated('Use repeatedEmbeddedEnumNotInDescriptor instead')
const RepeatedEmbeddedEnumNotIn$json = {
  '1': 'RepeatedEmbeddedEnumNotIn',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 14,
      '6':
          '.buf.validate.conformance.cases.RepeatedEmbeddedEnumNotIn.AnotherNotInEnum',
      '8': {},
      '10': 'val'
    },
  ],
  '4': [RepeatedEmbeddedEnumNotIn_AnotherNotInEnum$json],
};

@$core.Deprecated('Use repeatedEmbeddedEnumNotInDescriptor instead')
const RepeatedEmbeddedEnumNotIn_AnotherNotInEnum$json = {
  '1': 'AnotherNotInEnum',
  '2': [
    {'1': 'ANOTHER_NOT_IN_ENUM_UNSPECIFIED', '2': 0},
    {'1': 'ANOTHER_NOT_IN_ENUM_A', '2': 1},
    {'1': 'ANOTHER_NOT_IN_ENUM_B', '2': 2},
  ],
};

/// Descriptor for `RepeatedEmbeddedEnumNotIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedEmbeddedEnumNotInDescriptor = $convert.base64Decode(
    'ChlSZXBlYXRlZEVtYmVkZGVkRW51bU5vdEluEmsKA3ZhbBgBIAMoDjJKLmJ1Zi52YWxpZGF0ZS'
    '5jb25mb3JtYW5jZS5jYXNlcy5SZXBlYXRlZEVtYmVkZGVkRW51bU5vdEluLkFub3RoZXJOb3RJ'
    'bkVudW1CDbpICpIBByIFggECIABSA3ZhbCJtChBBbm90aGVyTm90SW5FbnVtEiMKH0FOT1RIRV'
    'JfTk9UX0lOX0VOVU1fVU5TUEVDSUZJRUQQABIZChVBTk9USEVSX05PVF9JTl9FTlVNX0EQARIZ'
    'ChVBTk9USEVSX05PVF9JTl9FTlVNX0IQAg==');

@$core.Deprecated('Use repeatedAnyInDescriptor instead')
const RepeatedAnyIn$json = {
  '1': 'RepeatedAnyIn',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `RepeatedAnyIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedAnyInDescriptor = $convert.base64Decode(
    'Cg1SZXBlYXRlZEFueUluEmEKA3ZhbBgBIAMoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlCObpINp'
    'IBMyIxogEuEix0eXBlLmdvb2dsZWFwaXMuY29tL2dvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblID'
    'dmFs');

@$core.Deprecated('Use repeatedAnyNotInDescriptor instead')
const RepeatedAnyNotIn$json = {
  '1': 'RepeatedAnyNotIn',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `RepeatedAnyNotIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedAnyNotInDescriptor = $convert.base64Decode(
    'ChBSZXBlYXRlZEFueU5vdEluEmIKA3ZhbBgBIAMoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlCOr'
    'pIN5IBNCIyogEvGi10eXBlLmdvb2dsZWFwaXMuY29tL2dvb2dsZS5wcm90b2J1Zi5UaW1lc3Rh'
    'bXBSA3ZhbA==');

@$core.Deprecated('Use repeatedMinAndItemLenDescriptor instead')
const RepeatedMinAndItemLen$json = {
  '1': 'RepeatedMinAndItemLen',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 9, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `RepeatedMinAndItemLen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedMinAndItemLenDescriptor = $convert.base64Decode(
    'ChVSZXBlYXRlZE1pbkFuZEl0ZW1MZW4SIQoDdmFsGAEgAygJQg+6SAySAQkIASIFcgOYAQNSA3'
    'ZhbA==');

@$core.Deprecated('Use repeatedMinAndMaxItemLenDescriptor instead')
const RepeatedMinAndMaxItemLen$json = {
  '1': 'RepeatedMinAndMaxItemLen',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 9, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `RepeatedMinAndMaxItemLen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedMinAndMaxItemLenDescriptor =
    $convert.base64Decode(
        'ChhSZXBlYXRlZE1pbkFuZE1heEl0ZW1MZW4SHAoDdmFsGAEgAygJQgq6SAeSAQQIARADUgN2YW'
        'w=');

@$core.Deprecated('Use repeatedDurationDescriptor instead')
const RepeatedDuration$json = {
  '1': 'RepeatedDuration',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `RepeatedDuration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedDurationDescriptor = $convert.base64Decode(
    'ChBSZXBlYXRlZER1cmF0aW9uEj4KA3ZhbBgBIAMoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdG'
    'lvbkIRukgOkgELIgmqAQYyBBDAhD1SA3ZhbA==');

@$core.Deprecated('Use repeatedExactIgnoreDescriptor instead')
const RepeatedExactIgnore$json = {
  '1': 'RepeatedExactIgnore',
  '2': [
    {'1': 'val', '3': 1, '4': 3, '5': 13, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `RepeatedExactIgnore`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedExactIgnoreDescriptor = $convert.base64Decode(
    'ChNSZXBlYXRlZEV4YWN0SWdub3JlEh8KA3ZhbBgBIAMoDUINukgK2AEBkgEECAMQA1IDdmFs');
