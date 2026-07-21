// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/oneofs.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use testOneofMsgDescriptor instead')
const TestOneofMsg$json = {
  '1': 'TestOneofMsg',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 8, '8': {}, '10': 'val'},
  ],
};

/// Descriptor for `TestOneofMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testOneofMsgDescriptor = $convert
    .base64Decode('CgxUZXN0T25lb2ZNc2cSGQoDdmFsGAEgASgIQge6SARqAggBUgN2YWw=');

@$core.Deprecated('Use oneofNoneDescriptor instead')
const OneofNone$json = {
  '1': 'OneofNone',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'y'},
  ],
  '8': [
    {'1': 'o'},
  ],
};

/// Descriptor for `OneofNone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneofNoneDescriptor = $convert.base64Decode(
    'CglPbmVvZk5vbmUSDgoBeBgBIAEoCUgAUgF4Eg4KAXkYAiABKAVIAFIBeUIDCgFv');

@$core.Deprecated('Use oneofDescriptor instead')
const Oneof$json = {
  '1': 'Oneof',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 9, '8': {}, '9': 0, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 5, '8': {}, '9': 0, '10': 'y'},
    {
      '1': 'z',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.TestOneofMsg',
      '9': 0,
      '10': 'z'
    },
  ],
  '8': [
    {'1': 'o'},
  ],
};

/// Descriptor for `Oneof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneofDescriptor = $convert.base64Decode(
    'CgVPbmVvZhIaCgF4GAEgASgJQgq6SAdyBToDZm9vSABSAXgSFwoBeRgCIAEoBUIHukgEGgIgAE'
    'gAUgF5EjwKAXoYAyABKAsyLC5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2FzZXMuVGVzdE9u'
    'ZW9mTXNnSABSAXpCAwoBbw==');

@$core.Deprecated('Use oneofRequiredDescriptor instead')
const OneofRequired$json = {
  '1': 'OneofRequired',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'y'},
    {
      '1': 'name_with_underscores',
      '3': 3,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'nameWithUnderscores'
    },
    {
      '1': 'under_and_1_number',
      '3': 4,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'underAnd1Number'
    },
  ],
  '8': [
    {'1': 'o', '2': {}},
  ],
};

/// Descriptor for `OneofRequired`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneofRequiredDescriptor = $convert.base64Decode(
    'Cg1PbmVvZlJlcXVpcmVkEg4KAXgYASABKAlIAFIBeBIOCgF5GAIgASgFSABSAXkSNAoVbmFtZV'
    '93aXRoX3VuZGVyc2NvcmVzGAMgASgFSABSE25hbWVXaXRoVW5kZXJzY29yZXMSLQoSdW5kZXJf'
    'YW5kXzFfbnVtYmVyGAQgASgFSABSD3VuZGVyQW5kMU51bWJlckIKCgFvEgW6SAIIAQ==');

@$core.Deprecated('Use oneofRequiredWithRequiredFieldDescriptor instead')
const OneofRequiredWithRequiredField$json = {
  '1': 'OneofRequiredWithRequiredField',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 9, '8': {}, '9': 0, '10': 'a'},
    {'1': 'b', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'b'},
  ],
  '8': [
    {'1': 'o', '2': {}},
  ],
};

/// Descriptor for `OneofRequiredWithRequiredField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneofRequiredWithRequiredFieldDescriptor =
    $convert.base64Decode(
        'Ch5PbmVvZlJlcXVpcmVkV2l0aFJlcXVpcmVkRmllbGQSFgoBYRgBIAEoCUIGukgDyAEBSABSAW'
        'ESDgoBYhgCIAEoCUgAUgFiQgoKAW8SBbpIAggB');
