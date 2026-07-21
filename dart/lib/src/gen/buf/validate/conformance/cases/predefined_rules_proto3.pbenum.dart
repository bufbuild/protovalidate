// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/predefined_rules_proto3.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PredefinedEnumRuleProto3_EnumProto3 extends $pb.ProtobufEnum {
  static const PredefinedEnumRuleProto3_EnumProto3
      ENUM_PROTO3_ZERO_UNSPECIFIED = PredefinedEnumRuleProto3_EnumProto3._(
          0, _omitEnumNames ? '' : 'ENUM_PROTO3_ZERO_UNSPECIFIED');
  static const PredefinedEnumRuleProto3_EnumProto3 ENUM_PROTO3_ONE =
      PredefinedEnumRuleProto3_EnumProto3._(
          1, _omitEnumNames ? '' : 'ENUM_PROTO3_ONE');

  static const $core.List<PredefinedEnumRuleProto3_EnumProto3> values =
      <PredefinedEnumRuleProto3_EnumProto3>[
    ENUM_PROTO3_ZERO_UNSPECIFIED,
    ENUM_PROTO3_ONE,
  ];

  static final $core.List<PredefinedEnumRuleProto3_EnumProto3?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static PredefinedEnumRuleProto3_EnumProto3? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PredefinedEnumRuleProto3_EnumProto3._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
