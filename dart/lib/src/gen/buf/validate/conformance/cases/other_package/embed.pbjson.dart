// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/other_package/embed.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use embedDescriptor instead')
const Embed$json = {
  '1': 'Embed',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'val'},
  ],
  '3': [Embed_DoubleEmbed$json],
  '4': [Embed_Enumerated$json],
};

@$core.Deprecated('Use embedDescriptor instead')
const Embed_DoubleEmbed$json = {
  '1': 'DoubleEmbed',
  '4': [Embed_DoubleEmbed_DoubleEnumerated$json],
};

@$core.Deprecated('Use embedDescriptor instead')
const Embed_DoubleEmbed_DoubleEnumerated$json = {
  '1': 'DoubleEnumerated',
  '2': [
    {'1': 'DOUBLE_ENUMERATED_UNSPECIFIED', '2': 0},
    {'1': 'DOUBLE_ENUMERATED_VALUE', '2': 1},
  ],
};

@$core.Deprecated('Use embedDescriptor instead')
const Embed_Enumerated$json = {
  '1': 'Enumerated',
  '2': [
    {'1': 'ENUMERATED_UNSPECIFIED', '2': 0},
    {'1': 'ENUMERATED_VALUE', '2': 1},
  ],
};

/// Descriptor for `Embed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List embedDescriptor = $convert.base64Decode(
    'CgVFbWJlZBIZCgN2YWwYASABKANCB7pIBCICIABSA3ZhbBphCgtEb3VibGVFbWJlZCJSChBEb3'
    'VibGVFbnVtZXJhdGVkEiEKHURPVUJMRV9FTlVNRVJBVEVEX1VOU1BFQ0lGSUVEEAASGwoXRE9V'
    'QkxFX0VOVU1FUkFURURfVkFMVUUQASI+CgpFbnVtZXJhdGVkEhoKFkVOVU1FUkFURURfVU5TUE'
    'VDSUZJRUQQABIUChBFTlVNRVJBVEVEX1ZBTFVFEAE=');
