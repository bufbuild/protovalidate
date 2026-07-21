// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/custom_rules/custom_rules.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Enum extends $pb.ProtobufEnum {
  static const Enum ENUM_UNSPECIFIED =
      Enum._(0, _omitEnumNames ? '' : 'ENUM_UNSPECIFIED');
  static const Enum ENUM_ONE = Enum._(1, _omitEnumNames ? '' : 'ENUM_ONE');

  static const $core.List<Enum> values = <Enum>[
    ENUM_UNSPECIFIED,
    ENUM_ONE,
  ];

  static final $core.List<Enum?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static Enum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Enum._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
