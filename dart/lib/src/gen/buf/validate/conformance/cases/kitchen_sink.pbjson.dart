// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/kitchen_sink.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use complexTestEnumDescriptor instead')
const ComplexTestEnum$json = {
  '1': 'ComplexTestEnum',
  '2': [
    {'1': 'COMPLEX_TEST_ENUM_UNSPECIFIED', '2': 0},
    {'1': 'COMPLEX_TEST_ENUM_ONE', '2': 1},
    {'1': 'COMPLEX_TEST_ENUM_TWO', '2': 2},
  ],
};

/// Descriptor for `ComplexTestEnum`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List complexTestEnumDescriptor = $convert.base64Decode(
    'Cg9Db21wbGV4VGVzdEVudW0SIQodQ09NUExFWF9URVNUX0VOVU1fVU5TUEVDSUZJRUQQABIZCh'
    'VDT01QTEVYX1RFU1RfRU5VTV9PTkUQARIZChVDT01QTEVYX1RFU1RfRU5VTV9UV08QAg==');

@$core.Deprecated('Use complexTestMsgDescriptor instead')
const ComplexTestMsg$json = {
  '1': 'ComplexTestMsg',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'const'},
    {
      '1': 'nested',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.ComplexTestMsg',
      '10': 'nested'
    },
    {'1': 'int_const', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'intConst'},
    {'1': 'bool_const', '3': 4, '4': 1, '5': 8, '8': {}, '10': 'boolConst'},
    {
      '1': 'float_val',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '8': {},
      '10': 'floatVal'
    },
    {
      '1': 'dur_val',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '8': {},
      '10': 'durVal'
    },
    {
      '1': 'ts_val',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '10': 'tsVal'
    },
    {
      '1': 'another',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.ComplexTestMsg',
      '10': 'another'
    },
    {'1': 'float_const', '3': 9, '4': 1, '5': 2, '8': {}, '10': 'floatConst'},
    {'1': 'double_in', '3': 10, '4': 1, '5': 1, '8': {}, '10': 'doubleIn'},
    {
      '1': 'enum_const',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.conformance.cases.ComplexTestEnum',
      '8': {},
      '10': 'enumConst'
    },
    {
      '1': 'any_val',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '8': {},
      '10': 'anyVal'
    },
    {
      '1': 'rep_ts_val',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '10': 'repTsVal'
    },
    {
      '1': 'map_val',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.conformance.cases.ComplexTestMsg.MapValEntry',
      '8': {},
      '10': 'mapVal'
    },
    {'1': 'bytes_val', '3': 15, '4': 1, '5': 12, '8': {}, '10': 'bytesVal'},
    {'1': 'x', '3': 16, '4': 1, '5': 9, '9': 0, '10': 'x'},
    {'1': 'y', '3': 17, '4': 1, '5': 5, '9': 0, '10': 'y'},
  ],
  '3': [ComplexTestMsg_MapValEntry$json],
  '8': [
    {'1': 'o', '2': {}},
  ],
};

@$core.Deprecated('Use complexTestMsgDescriptor instead')
const ComplexTestMsg_MapValEntry$json = {
  '1': 'MapValEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 17, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ComplexTestMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List complexTestMsgDescriptor = $convert.base64Decode(
    'Cg5Db21wbGV4VGVzdE1zZxIhCgVjb25zdBgBIAEoCUILukgIcgYKBGFiY2RSBWNvbnN0EkYKBm'
    '5lc3RlZBgCIAEoCzIuLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy5Db21wbGV4VGVz'
    'dE1zZ1IGbmVzdGVkEiQKCWludF9jb25zdBgDIAEoBUIHukgEGgIIBVIIaW50Q29uc3QSJgoKYm'
    '9vbF9jb25zdBgEIAEoCEIHukgEagIIAFIJYm9vbENvbnN0EkQKCWZsb2F0X3ZhbBgFIAEoCzIb'
    'Lmdvb2dsZS5wcm90b2J1Zi5GbG9hdFZhbHVlQgq6SAcKBSUAAAAAUghmbG9hdFZhbBJBCgdkdX'
    'JfdmFsGAYgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uQg26SArIAQGqAQQaAggRUgZk'
    'dXJWYWwSPQoGdHNfdmFsGAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIKukgHsg'
    'EEKgIIB1IFdHNWYWwSSAoHYW5vdGhlchgIIAEoCzIuLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5j'
    'ZS5jYXNlcy5Db21wbGV4VGVzdE1zZ1IHYW5vdGhlchIrCgtmbG9hdF9jb25zdBgJIAEoAkIKuk'
    'gHCgUVAAAAQVIKZmxvYXRDb25zdBI0Cglkb3VibGVfaW4YCiABKAFCF7pIFBISMbTIdr6fjHxA'
    'MQAAAAAAwF5AUghkb3VibGVJbhJYCgplbnVtX2NvbnN0GAsgASgOMi8uYnVmLnZhbGlkYXRlLm'
    'NvbmZvcm1hbmNlLmNhc2VzLkNvbXBsZXhUZXN0RW51bUIIukgFggECCAJSCWVudW1Db25zdBJj'
    'CgdhbnlfdmFsGAwgASgLMhQuZ29vZ2xlLnByb3RvYnVmLkFueUI0ukgxogEuEix0eXBlLmdvb2'
    'dsZWFwaXMuY29tL2dvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblIGYW55VmFsEksKCnJlcF90c192'
    'YWwYDSADKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQhG6SA6SAQsiCbIBBjIEEMCEPV'
    'IIcmVwVHNWYWwSYQoHbWFwX3ZhbBgOIAMoCzI6LmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5jZS5j'
    'YXNlcy5Db21wbGV4VGVzdE1zZy5NYXBWYWxFbnRyeUIMukgJmgEGIgQ6AhAAUgZtYXBWYWwSJg'
    'oJYnl0ZXNfdmFsGA8gASgMQgm6SAZ6BAoCAJlSCGJ5dGVzVmFsEg4KAXgYECABKAlIAFIBeBIO'
    'CgF5GBEgASgFSABSAXkaOQoLTWFwVmFsRW50cnkSEAoDa2V5GAEgASgRUgNrZXkSFAoFdmFsdW'
    'UYAiABKAlSBXZhbHVlOgI4AUIKCgFvEgW6SAIIAQ==');

@$core.Deprecated('Use kitchenSinkMessageDescriptor instead')
const KitchenSinkMessage$json = {
  '1': 'KitchenSinkMessage',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.ComplexTestMsg',
      '10': 'val'
    },
  ],
};

/// Descriptor for `KitchenSinkMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kitchenSinkMessageDescriptor = $convert.base64Decode(
    'ChJLaXRjaGVuU2lua01lc3NhZ2USQAoDdmFsGAEgASgLMi4uYnVmLnZhbGlkYXRlLmNvbmZvcm'
    '1hbmNlLmNhc2VzLkNvbXBsZXhUZXN0TXNnUgN2YWw=');
