// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/repeated.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AnEnum extends $pb.ProtobufEnum {
  static const AnEnum AN_ENUM_UNSPECIFIED =
      AnEnum._(0, _omitEnumNames ? '' : 'AN_ENUM_UNSPECIFIED');
  static const AnEnum AN_ENUM_X =
      AnEnum._(1, _omitEnumNames ? '' : 'AN_ENUM_X');
  static const AnEnum AN_ENUM_Y =
      AnEnum._(2, _omitEnumNames ? '' : 'AN_ENUM_Y');

  static const $core.List<AnEnum> values = <AnEnum>[
    AN_ENUM_UNSPECIFIED,
    AN_ENUM_X,
    AN_ENUM_Y,
  ];

  static final $core.List<AnEnum?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static AnEnum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AnEnum._(super.value, super.name);
}

class RepeatedEmbeddedEnumIn_AnotherInEnum extends $pb.ProtobufEnum {
  static const RepeatedEmbeddedEnumIn_AnotherInEnum
      ANOTHER_IN_ENUM_UNSPECIFIED = RepeatedEmbeddedEnumIn_AnotherInEnum._(
          0, _omitEnumNames ? '' : 'ANOTHER_IN_ENUM_UNSPECIFIED');
  static const RepeatedEmbeddedEnumIn_AnotherInEnum ANOTHER_IN_ENUM_A =
      RepeatedEmbeddedEnumIn_AnotherInEnum._(
          1, _omitEnumNames ? '' : 'ANOTHER_IN_ENUM_A');
  static const RepeatedEmbeddedEnumIn_AnotherInEnum ANOTHER_IN_ENUM_B =
      RepeatedEmbeddedEnumIn_AnotherInEnum._(
          2, _omitEnumNames ? '' : 'ANOTHER_IN_ENUM_B');

  static const $core.List<RepeatedEmbeddedEnumIn_AnotherInEnum> values =
      <RepeatedEmbeddedEnumIn_AnotherInEnum>[
    ANOTHER_IN_ENUM_UNSPECIFIED,
    ANOTHER_IN_ENUM_A,
    ANOTHER_IN_ENUM_B,
  ];

  static final $core.List<RepeatedEmbeddedEnumIn_AnotherInEnum?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static RepeatedEmbeddedEnumIn_AnotherInEnum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RepeatedEmbeddedEnumIn_AnotherInEnum._(super.value, super.name);
}

class RepeatedEmbeddedEnumNotIn_AnotherNotInEnum extends $pb.ProtobufEnum {
  static const RepeatedEmbeddedEnumNotIn_AnotherNotInEnum
      ANOTHER_NOT_IN_ENUM_UNSPECIFIED =
      RepeatedEmbeddedEnumNotIn_AnotherNotInEnum._(
          0, _omitEnumNames ? '' : 'ANOTHER_NOT_IN_ENUM_UNSPECIFIED');
  static const RepeatedEmbeddedEnumNotIn_AnotherNotInEnum
      ANOTHER_NOT_IN_ENUM_A = RepeatedEmbeddedEnumNotIn_AnotherNotInEnum._(
          1, _omitEnumNames ? '' : 'ANOTHER_NOT_IN_ENUM_A');
  static const RepeatedEmbeddedEnumNotIn_AnotherNotInEnum
      ANOTHER_NOT_IN_ENUM_B = RepeatedEmbeddedEnumNotIn_AnotherNotInEnum._(
          2, _omitEnumNames ? '' : 'ANOTHER_NOT_IN_ENUM_B');

  static const $core.List<RepeatedEmbeddedEnumNotIn_AnotherNotInEnum> values =
      <RepeatedEmbeddedEnumNotIn_AnotherNotInEnum>[
    ANOTHER_NOT_IN_ENUM_UNSPECIFIED,
    ANOTHER_NOT_IN_ENUM_A,
    ANOTHER_NOT_IN_ENUM_B,
  ];

  static final $core.List<RepeatedEmbeddedEnumNotIn_AnotherNotInEnum?>
      _byValue = $pb.ProtobufEnum.$_initByValueList(values, 2);
  static RepeatedEmbeddedEnumNotIn_AnotherNotInEnum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RepeatedEmbeddedEnumNotIn_AnotherNotInEnum._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
