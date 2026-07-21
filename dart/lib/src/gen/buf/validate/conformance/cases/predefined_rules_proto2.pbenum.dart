// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/predefined_rules_proto2.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PredefinedEnumRuleProto2_EnumProto2 extends $pb.ProtobufEnum {
  static const PredefinedEnumRuleProto2_EnumProto2
      ENUM_PROTO2_ZERO_UNSPECIFIED = PredefinedEnumRuleProto2_EnumProto2._(
          0, _omitEnumNames ? '' : 'ENUM_PROTO2_ZERO_UNSPECIFIED');
  static const PredefinedEnumRuleProto2_EnumProto2 ENUM_PROTO2_ONE =
      PredefinedEnumRuleProto2_EnumProto2._(
          1, _omitEnumNames ? '' : 'ENUM_PROTO2_ONE');

  static const $core.List<PredefinedEnumRuleProto2_EnumProto2> values =
      <PredefinedEnumRuleProto2_EnumProto2>[
    ENUM_PROTO2_ZERO_UNSPECIFIED,
    ENUM_PROTO2_ONE,
  ];

  static final $core.List<PredefinedEnumRuleProto2_EnumProto2?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static PredefinedEnumRuleProto2_EnumProto2? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PredefinedEnumRuleProto2_EnumProto2._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
