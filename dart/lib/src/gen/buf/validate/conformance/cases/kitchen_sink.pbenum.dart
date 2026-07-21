// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/kitchen_sink.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ComplexTestEnum extends $pb.ProtobufEnum {
  static const ComplexTestEnum COMPLEX_TEST_ENUM_UNSPECIFIED =
      ComplexTestEnum._(
          0, _omitEnumNames ? '' : 'COMPLEX_TEST_ENUM_UNSPECIFIED');
  static const ComplexTestEnum COMPLEX_TEST_ENUM_ONE =
      ComplexTestEnum._(1, _omitEnumNames ? '' : 'COMPLEX_TEST_ENUM_ONE');
  static const ComplexTestEnum COMPLEX_TEST_ENUM_TWO =
      ComplexTestEnum._(2, _omitEnumNames ? '' : 'COMPLEX_TEST_ENUM_TWO');

  static const $core.List<ComplexTestEnum> values = <ComplexTestEnum>[
    COMPLEX_TEST_ENUM_UNSPECIFIED,
    COMPLEX_TEST_ENUM_ONE,
    COMPLEX_TEST_ENUM_TWO,
  ];

  static final $core.List<ComplexTestEnum?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ComplexTestEnum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ComplexTestEnum._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
