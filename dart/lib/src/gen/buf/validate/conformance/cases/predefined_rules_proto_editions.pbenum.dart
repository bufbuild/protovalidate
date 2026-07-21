// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/predefined_rules_proto_editions.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PredefinedEnumRuleEdition2023_EnumEdition2023 extends $pb.ProtobufEnum {
  static const PredefinedEnumRuleEdition2023_EnumEdition2023
      ENUM_EDITION2023_ZERO_UNSPECIFIED =
      PredefinedEnumRuleEdition2023_EnumEdition2023._(
          0, _omitEnumNames ? '' : 'ENUM_EDITION2023_ZERO_UNSPECIFIED');
  static const PredefinedEnumRuleEdition2023_EnumEdition2023
      ENUM_EDITION2023_ONE = PredefinedEnumRuleEdition2023_EnumEdition2023._(
          1, _omitEnumNames ? '' : 'ENUM_EDITION2023_ONE');

  static const $core.List<PredefinedEnumRuleEdition2023_EnumEdition2023>
      values = <PredefinedEnumRuleEdition2023_EnumEdition2023>[
    ENUM_EDITION2023_ZERO_UNSPECIFIED,
    ENUM_EDITION2023_ONE,
  ];

  static final $core.List<PredefinedEnumRuleEdition2023_EnumEdition2023?>
      _byValue = $pb.ProtobufEnum.$_initByValueList(values, 1);
  static PredefinedEnumRuleEdition2023_EnumEdition2023? valueOf(
          $core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PredefinedEnumRuleEdition2023_EnumEdition2023._(
      super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
