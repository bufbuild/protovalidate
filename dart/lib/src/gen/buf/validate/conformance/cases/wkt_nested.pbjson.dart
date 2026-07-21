// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/wkt_nested.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use wktLevelOneDescriptor instead')
const WktLevelOne$json = {
  '1': 'WktLevelOne',
  '2': [
    {
      '1': 'two',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.conformance.cases.WktLevelOne.WktLevelTwo',
      '8': {},
      '10': 'two'
    },
  ],
  '3': [WktLevelOne_WktLevelTwo$json],
};

@$core.Deprecated('Use wktLevelOneDescriptor instead')
const WktLevelOne_WktLevelTwo$json = {
  '1': 'WktLevelTwo',
  '2': [
    {
      '1': 'three',
      '3': 1,
      '4': 1,
      '5': 11,
      '6':
          '.buf.validate.conformance.cases.WktLevelOne.WktLevelTwo.WktLevelThree',
      '8': {},
      '10': 'three'
    },
  ],
  '3': [WktLevelOne_WktLevelTwo_WktLevelThree$json],
};

@$core.Deprecated('Use wktLevelOneDescriptor instead')
const WktLevelOne_WktLevelTwo_WktLevelThree$json = {
  '1': 'WktLevelThree',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'uuid'},
  ],
};

/// Descriptor for `WktLevelOne`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wktLevelOneDescriptor = $convert.base64Decode(
    'CgtXa3RMZXZlbE9uZRJRCgN0d28YASABKAsyNy5idWYudmFsaWRhdGUuY29uZm9ybWFuY2UuY2'
    'FzZXMuV2t0TGV2ZWxPbmUuV2t0TGV2ZWxUd29CBrpIA8gBAVIDdHdvGqEBCgtXa3RMZXZlbFR3'
    'bxJjCgV0aHJlZRgBIAEoCzJFLmJ1Zi52YWxpZGF0ZS5jb25mb3JtYW5jZS5jYXNlcy5Xa3RMZX'
    'ZlbE9uZS5Xa3RMZXZlbFR3by5Xa3RMZXZlbFRocmVlQga6SAPIAQFSBXRocmVlGi0KDVdrdExl'
    'dmVsVGhyZWUSHAoEdXVpZBgBIAEoCUIIukgFcgOwAQFSBHV1aWQ=');
