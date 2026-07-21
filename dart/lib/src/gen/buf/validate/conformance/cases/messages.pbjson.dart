// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/messages.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use testMsgDescriptor instead')
const TestMsg$json = {
  '1': 'TestMsg',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'const'},
    {
      '1': 'nested',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.TestMsg',
      '10': 'nested'
    },
  ],
};

/// Descriptor for `TestMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testMsgDescriptor = $convert.base64Decode(
    'CgdUZXN0TXNnEiAKBWNvbnN0GAEgASgJQgq6SAdyBQoDZm9vUgVjb25zdBI/CgZuZXN0ZWQYAi'
    'ABKAsyJy5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2FzZXMuVGVzdE1zZ1IGbmVzdGVk');

@$core.Deprecated('Use messageNoneDescriptor instead')
const MessageNone$json = {
  '1': 'MessageNone',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.MessageNone.NoneMsg',
      '10': 'val'
    },
  ],
  '3': [MessageNone_NoneMsg$json],
};

@$core.Deprecated('Use messageNoneDescriptor instead')
const MessageNone_NoneMsg$json = {
  '1': 'NoneMsg',
};

/// Descriptor for `MessageNone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageNoneDescriptor = $convert.base64Decode(
    'CgtNZXNzYWdlTm9uZRJFCgN2YWwYASABKAsyMy5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2'
    'FzZXMuTWVzc2FnZU5vbmUuTm9uZU1zZ1IDdmFsGgkKB05vbmVNc2c=');

@$core.Deprecated('Use messageDescriptor instead')
const Message$json = {
  '1': 'Message',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.TestMsg',
      '10': 'val'
    },
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode(
    'CgdNZXNzYWdlEjkKA3ZhbBgBIAEoCzInLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy'
    '5UZXN0TXNnUgN2YWw=');

@$core.Deprecated('Use messageCrossPackageDescriptor instead')
const MessageCrossPackage$json = {
  '1': 'MessageCrossPackage',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.other_package.Embed',
      '10': 'val'
    },
  ],
};

/// Descriptor for `MessageCrossPackage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageCrossPackageDescriptor = $convert.base64Decode(
    'ChNNZXNzYWdlQ3Jvc3NQYWNrYWdlEkUKA3ZhbBgBIAEoCzIzLmJ1Zi52YWxpZGF0ZS5jb25mb3'
    'JtYW5jZS5jYXNlcy5vdGhlcl9wYWNrYWdlLkVtYmVkUgN2YWw=');

@$core.Deprecated('Use messageSkipDescriptor instead')
const MessageSkip$json = {
  '1': 'MessageSkip',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.TestMsg',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `MessageSkip`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageSkipDescriptor = $convert.base64Decode(
    'CgtNZXNzYWdlU2tpcBJBCgN2YWwYASABKAsyJy5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2'
    'FzZXMuVGVzdE1zZ0IGukgD2AEDUgN2YWw=');

@$core.Deprecated('Use messageRequiredDescriptor instead')
const MessageRequired$json = {
  '1': 'MessageRequired',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.TestMsg',
      '8': {},
      '10': 'val'
    },
  ],
};

/// Descriptor for `MessageRequired`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageRequiredDescriptor = $convert.base64Decode(
    'Cg9NZXNzYWdlUmVxdWlyZWQSQQoDdmFsGAEgASgLMicuYnVmLnZhbGlkYXRlLmNvbmZvcm1hbm'
    'NlLmNhc2VzLlRlc3RNc2dCBrpIA8gBAVIDdmFs');

@$core.Deprecated('Use messageRequiredButOptionalDescriptor instead')
const MessageRequiredButOptional$json = {
  '1': 'MessageRequiredButOptional',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.TestMsg',
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

/// Descriptor for `MessageRequiredButOptional`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageRequiredButOptionalDescriptor =
    $convert.base64Decode(
        'ChpNZXNzYWdlUmVxdWlyZWRCdXRPcHRpb25hbBJGCgN2YWwYASABKAsyJy5idWYudmFsaWRhdG'
        'UuY29uZm9ybWFuY2UuY2FzZXMuVGVzdE1zZ0IGukgDyAEBSABSA3ZhbIgBAUIGCgRfdmFs');

@$core.Deprecated('Use messageRequiredOneofDescriptor instead')
const MessageRequiredOneof$json = {
  '1': 'MessageRequiredOneof',
  '2': [
    {
      '1': 'val',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.TestMsg',
      '8': {},
      '9': 0,
      '10': 'val'
    },
  ],
  '8': [
    {'1': 'one', '2': {}},
  ],
};

/// Descriptor for `MessageRequiredOneof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageRequiredOneofDescriptor = $convert.base64Decode(
    'ChRNZXNzYWdlUmVxdWlyZWRPbmVvZhJDCgN2YWwYASABKAsyJy5idWYudmFsaWRhdGUuY29uZm'
    '9ybWFuY2UuY2FzZXMuVGVzdE1zZ0IGukgDyAEBSABSA3ZhbEIMCgNvbmUSBbpIAggB');

@$core.Deprecated('Use messageWith3dInsideDescriptor instead')
const MessageWith3dInside$json = {
  '1': 'MessageWith3dInside',
};

/// Descriptor for `MessageWith3dInside`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageWith3dInsideDescriptor =
    $convert.base64Decode('ChNNZXNzYWdlV2l0aDNkSW5zaWRl');

@$core.Deprecated('Use messageOneofSingleFieldDescriptor instead')
const MessageOneofSingleField$json = {
  '1': 'MessageOneofSingleField',
  '2': [
    {'1': 'str_field', '3': 1, '4': 1, '5': 9, '10': 'strField'},
    {'1': 'bool_field', '3': 2, '4': 1, '5': 8, '10': 'boolField'},
  ],
  '7': {},
};

/// Descriptor for `MessageOneofSingleField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageOneofSingleFieldDescriptor =
    $convert.base64Decode(
        'ChdNZXNzYWdlT25lb2ZTaW5nbGVGaWVsZBIbCglzdHJfZmllbGQYASABKAlSCHN0ckZpZWxkEh'
        '0KCmJvb2xfZmllbGQYAiABKAhSCWJvb2xGaWVsZDoQukgNIgsKCXN0cl9maWVsZA==');

@$core.Deprecated('Use messageOneofSingleFieldRequiredDescriptor instead')
const MessageOneofSingleFieldRequired$json = {
  '1': 'MessageOneofSingleFieldRequired',
  '2': [
    {'1': 'str_field', '3': 1, '4': 1, '5': 9, '10': 'strField'},
    {'1': 'bool_field', '3': 2, '4': 1, '5': 8, '10': 'boolField'},
  ],
  '7': {},
};

/// Descriptor for `MessageOneofSingleFieldRequired`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageOneofSingleFieldRequiredDescriptor =
    $convert.base64Decode(
        'Ch9NZXNzYWdlT25lb2ZTaW5nbGVGaWVsZFJlcXVpcmVkEhsKCXN0cl9maWVsZBgBIAEoCVIIc3'
        'RyRmllbGQSHQoKYm9vbF9maWVsZBgCIAEoCFIJYm9vbEZpZWxkOhK6SA8iDQoJc3RyX2ZpZWxk'
        'EAE=');

@$core.Deprecated('Use messageOneofMultipleFieldsDescriptor instead')
const MessageOneofMultipleFields$json = {
  '1': 'MessageOneofMultipleFields',
  '2': [
    {'1': 'str_field', '3': 1, '4': 1, '5': 9, '10': 'strField'},
    {'1': 'bool_field', '3': 2, '4': 1, '5': 8, '10': 'boolField'},
  ],
  '7': {},
};

/// Descriptor for `MessageOneofMultipleFields`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageOneofMultipleFieldsDescriptor =
    $convert.base64Decode(
        'ChpNZXNzYWdlT25lb2ZNdWx0aXBsZUZpZWxkcxIbCglzdHJfZmllbGQYASABKAlSCHN0ckZpZW'
        'xkEh0KCmJvb2xfZmllbGQYAiABKAhSCWJvb2xGaWVsZDocukgZIhcKCXN0cl9maWVsZAoKYm9v'
        'bF9maWVsZA==');

@$core.Deprecated('Use messageOneofMultipleFieldsRequiredDescriptor instead')
const MessageOneofMultipleFieldsRequired$json = {
  '1': 'MessageOneofMultipleFieldsRequired',
  '2': [
    {'1': 'str_field', '3': 1, '4': 1, '5': 9, '10': 'strField'},
    {'1': 'bool_field', '3': 2, '4': 1, '5': 8, '10': 'boolField'},
  ],
  '7': {},
};

/// Descriptor for `MessageOneofMultipleFieldsRequired`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageOneofMultipleFieldsRequiredDescriptor =
    $convert.base64Decode(
        'CiJNZXNzYWdlT25lb2ZNdWx0aXBsZUZpZWxkc1JlcXVpcmVkEhsKCXN0cl9maWVsZBgBIAEoCV'
        'IIc3RyRmllbGQSHQoKYm9vbF9maWVsZBgCIAEoCFIJYm9vbEZpZWxkOh66SBsiGQoJc3RyX2Zp'
        'ZWxkCgpib29sX2ZpZWxkEAE=');

@$core.Deprecated('Use messageOneofMultipleSharedFieldsDescriptor instead')
const MessageOneofMultipleSharedFields$json = {
  '1': 'MessageOneofMultipleSharedFields',
  '2': [
    {'1': 'str_field', '3': 1, '4': 1, '5': 9, '10': 'strField'},
    {'1': 'bool_field', '3': 2, '4': 1, '5': 8, '10': 'boolField'},
    {'1': 'int_field', '3': 3, '4': 1, '5': 5, '10': 'intField'},
  ],
  '7': {},
};

/// Descriptor for `MessageOneofMultipleSharedFields`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageOneofMultipleSharedFieldsDescriptor =
    $convert.base64Decode(
        'CiBNZXNzYWdlT25lb2ZNdWx0aXBsZVNoYXJlZEZpZWxkcxIbCglzdHJfZmllbGQYASABKAlSCH'
        'N0ckZpZWxkEh0KCmJvb2xfZmllbGQYAiABKAhSCWJvb2xGaWVsZBIbCglpbnRfZmllbGQYAyAB'
        'KAVSCGludEZpZWxkOji6SDUiGQoJc3RyX2ZpZWxkCgpib29sX2ZpZWxkEAEiGAoJc3RyX2ZpZW'
        'xkCglpbnRfZmllbGQQAQ==');

@$core.Deprecated('Use messageOneofUnknownFieldNameDescriptor instead')
const MessageOneofUnknownFieldName$json = {
  '1': 'MessageOneofUnknownFieldName',
  '2': [
    {'1': 'str_field', '3': 1, '4': 1, '5': 9, '10': 'strField'},
  ],
  '7': {},
};

/// Descriptor for `MessageOneofUnknownFieldName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageOneofUnknownFieldNameDescriptor =
    $convert.base64Decode(
        'ChxNZXNzYWdlT25lb2ZVbmtub3duRmllbGROYW1lEhsKCXN0cl9maWVsZBgBIAEoCVIIc3RyRm'
        'llbGQ6CrpIByIFCgN4eHg=');

@$core.Deprecated('Use messageOneofDuplicateFieldDescriptor instead')
const MessageOneofDuplicateField$json = {
  '1': 'MessageOneofDuplicateField',
  '2': [
    {'1': 'str_field', '3': 1, '4': 1, '5': 9, '10': 'strField'},
    {'1': 'bool_field', '3': 2, '4': 1, '5': 8, '10': 'boolField'},
  ],
  '7': {},
};

/// Descriptor for `MessageOneofDuplicateField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageOneofDuplicateFieldDescriptor =
    $convert.base64Decode(
        'ChpNZXNzYWdlT25lb2ZEdXBsaWNhdGVGaWVsZBIbCglzdHJfZmllbGQYASABKAlSCHN0ckZpZW'
        'xkEh0KCmJvb2xfZmllbGQYAiABKAhSCWJvb2xGaWVsZDonukgkIiIKCXN0cl9maWVsZAoKYm9v'
        'bF9maWVsZAoJc3RyX2ZpZWxk');

@$core.Deprecated('Use messageOneofZeroFieldsDescriptor instead')
const MessageOneofZeroFields$json = {
  '1': 'MessageOneofZeroFields',
  '2': [
    {'1': 'str_field', '3': 1, '4': 1, '5': 9, '10': 'strField'},
    {'1': 'bool_field', '3': 2, '4': 1, '5': 8, '10': 'boolField'},
  ],
  '7': {},
};

/// Descriptor for `MessageOneofZeroFields`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageOneofZeroFieldsDescriptor =
    $convert.base64Decode(
        'ChZNZXNzYWdlT25lb2ZaZXJvRmllbGRzEhsKCXN0cl9maWVsZBgBIAEoCVIIc3RyRmllbGQSHQ'
        'oKYm9vbF9maWVsZBgCIAEoCFIJYm9vbEZpZWxkOgW6SAIiAA==');

@$core.Deprecated('Use messageOneofUnsatisfiableDescriptor instead')
const MessageOneofUnsatisfiable$json = {
  '1': 'MessageOneofUnsatisfiable',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 8, '10': 'a'},
    {'1': 'b', '3': 2, '4': 1, '5': 8, '10': 'b'},
    {'1': 'c', '3': 3, '4': 1, '5': 8, '10': 'c'},
  ],
  '7': {},
};

/// Descriptor for `MessageOneofUnsatisfiable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageOneofUnsatisfiableDescriptor =
    $convert.base64Decode(
        'ChlNZXNzYWdlT25lb2ZVbnNhdGlzZmlhYmxlEgwKAWEYASABKAhSAWESDAoBYhgCIAEoCFIBYh'
        'IMCgFjGAMgASgIUgFjOiG6SB4iCAoBYQoBYhABIggKAWIKAWMQASIICgFhCgFjEAE=');

@$core.Deprecated('Use messageOneofIgnoreUnpopulatedDescriptor instead')
const MessageOneofIgnoreUnpopulated$json = {
  '1': 'MessageOneofIgnoreUnpopulated',
  '2': [
    {'1': 'str_field', '3': 1, '4': 1, '5': 9, '10': 'strField'},
    {'1': 'bool_field', '3': 2, '4': 1, '5': 8, '8': {}, '10': 'boolField'},
  ],
  '7': {},
};

/// Descriptor for `MessageOneofIgnoreUnpopulated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageOneofIgnoreUnpopulatedDescriptor =
    $convert.base64Decode(
        'Ch1NZXNzYWdlT25lb2ZJZ25vcmVVbnBvcHVsYXRlZBIbCglzdHJfZmllbGQYASABKAlSCHN0ck'
        'ZpZWxkEiYKCmJvb2xfZmllbGQYAiABKAhCB7pIBGoCCAFSCWJvb2xGaWVsZDocukgZIhcKCXN0'
        'cl9maWVsZAoKYm9vbF9maWVsZA==');

@$core.Deprecated('Use messageOneofIgnoreUnpopulatedRequiredDescriptor instead')
const MessageOneofIgnoreUnpopulatedRequired$json = {
  '1': 'MessageOneofIgnoreUnpopulatedRequired',
  '2': [
    {'1': 'str_field', '3': 1, '4': 1, '5': 9, '10': 'strField'},
    {'1': 'bool_field', '3': 2, '4': 1, '5': 8, '8': {}, '10': 'boolField'},
  ],
  '7': {},
};

/// Descriptor for `MessageOneofIgnoreUnpopulatedRequired`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageOneofIgnoreUnpopulatedRequiredDescriptor =
    $convert.base64Decode(
        'CiVNZXNzYWdlT25lb2ZJZ25vcmVVbnBvcHVsYXRlZFJlcXVpcmVkEhsKCXN0cl9maWVsZBgBIA'
        'EoCVIIc3RyRmllbGQSJgoKYm9vbF9maWVsZBgCIAEoCEIHukgEagIIAVIJYm9vbEZpZWxkOh66'
        'SBsiGQoJc3RyX2ZpZWxkCgpib29sX2ZpZWxkEAE=');

@$core.Deprecated('Use messageOneofIgnoreOverrideDescriptor instead')
const MessageOneofIgnoreOverride$json = {
  '1': 'MessageOneofIgnoreOverride',
  '2': [
    {
      '1': 'msg_field',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.TestMsg',
      '8': {},
      '10': 'msgField'
    },
    {'1': 'bool_field', '3': 2, '4': 1, '5': 8, '10': 'boolField'},
  ],
  '7': {},
};

/// Descriptor for `MessageOneofIgnoreOverride`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageOneofIgnoreOverrideDescriptor = $convert.base64Decode(
    'ChpNZXNzYWdlT25lb2ZJZ25vcmVPdmVycmlkZRJMCgltc2dfZmllbGQYASABKAsyJy5idWYudm'
    'FsaWRhdGUuY29uZm9ybWFuY2UuY2FzZXMuVGVzdE1zZ0IGukgD2AEDUghtc2dGaWVsZBIdCgpi'
    'b29sX2ZpZWxkGAIgASgIUglib29sRmllbGQ6HLpIGSIXCgltc2dfZmllbGQKCmJvb2xfZmllbG'
    'Q=');
