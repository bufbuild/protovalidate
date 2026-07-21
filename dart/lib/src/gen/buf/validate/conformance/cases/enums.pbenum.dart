// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/enums.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TestEnum extends $pb.ProtobufEnum {
  static const TestEnum TEST_ENUM_UNSPECIFIED =
      TestEnum._(0, _omitEnumNames ? '' : 'TEST_ENUM_UNSPECIFIED');
  static const TestEnum TEST_ENUM_ONE =
      TestEnum._(1, _omitEnumNames ? '' : 'TEST_ENUM_ONE');
  static const TestEnum TEST_ENUM_TWO =
      TestEnum._(2, _omitEnumNames ? '' : 'TEST_ENUM_TWO');

  static const $core.List<TestEnum> values = <TestEnum>[
    TEST_ENUM_UNSPECIFIED,
    TEST_ENUM_ONE,
    TEST_ENUM_TWO,
  ];

  static final $core.List<TestEnum?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TestEnum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TestEnum._(super.value, super.name);
}

class TestEnumAlias extends $pb.ProtobufEnum {
  static const TestEnumAlias TEST_ENUM_ALIAS_UNSPECIFIED =
      TestEnumAlias._(0, _omitEnumNames ? '' : 'TEST_ENUM_ALIAS_UNSPECIFIED');
  static const TestEnumAlias TEST_ENUM_ALIAS_A =
      TestEnumAlias._(1, _omitEnumNames ? '' : 'TEST_ENUM_ALIAS_A');
  static const TestEnumAlias TEST_ENUM_ALIAS_B =
      TestEnumAlias._(2, _omitEnumNames ? '' : 'TEST_ENUM_ALIAS_B');
  static const TestEnumAlias TEST_ENUM_ALIAS_C =
      TestEnumAlias._(3, _omitEnumNames ? '' : 'TEST_ENUM_ALIAS_C');

  static const TestEnumAlias TEST_ENUM_ALIAS_ALPHA = TEST_ENUM_ALIAS_A;
  static const TestEnumAlias TEST_ENUM_ALIAS_BETA = TEST_ENUM_ALIAS_B;
  static const TestEnumAlias TEST_ENUM_ALIAS_GAMMA = TEST_ENUM_ALIAS_C;

  static const $core.List<TestEnumAlias> values = <TestEnumAlias>[
    TEST_ENUM_ALIAS_UNSPECIFIED,
    TEST_ENUM_ALIAS_A,
    TEST_ENUM_ALIAS_B,
    TEST_ENUM_ALIAS_C,
  ];

  static final $core.List<TestEnumAlias?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static TestEnumAlias? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TestEnumAlias._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
