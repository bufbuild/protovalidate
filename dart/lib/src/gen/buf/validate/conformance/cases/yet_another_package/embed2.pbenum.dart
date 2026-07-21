// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/yet_another_package/embed2.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Embed_Enumerated extends $pb.ProtobufEnum {
  static const Embed_Enumerated ENUMERATED_UNSPECIFIED =
      Embed_Enumerated._(0, _omitEnumNames ? '' : 'ENUMERATED_UNSPECIFIED');
  static const Embed_Enumerated ENUMERATED_VALUE =
      Embed_Enumerated._(1, _omitEnumNames ? '' : 'ENUMERATED_VALUE');

  static const $core.List<Embed_Enumerated> values = <Embed_Enumerated>[
    ENUMERATED_UNSPECIFIED,
    ENUMERATED_VALUE,
  ];

  static final $core.List<Embed_Enumerated?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static Embed_Enumerated? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Embed_Enumerated._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
