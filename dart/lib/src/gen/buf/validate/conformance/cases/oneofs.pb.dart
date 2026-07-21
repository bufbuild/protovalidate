// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/oneofs.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TestOneofMsg extends $pb.GeneratedMessage {
  factory TestOneofMsg({
    $core.bool? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TestOneofMsg._();

  factory TestOneofMsg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TestOneofMsg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TestOneofMsg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestOneofMsg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestOneofMsg copyWith(void Function(TestOneofMsg) updates) =>
      super.copyWith((message) => updates(message as TestOneofMsg))
          as TestOneofMsg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestOneofMsg create() => TestOneofMsg._();
  @$core.override
  TestOneofMsg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TestOneofMsg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TestOneofMsg>(create);
  static TestOneofMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get val => $_getBF(0);
  @$pb.TagNumber(1)
  set val($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

enum OneofNone_O { x, y, notSet }

class OneofNone extends $pb.GeneratedMessage {
  factory OneofNone({
    $core.String? x,
    $core.int? y,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    return result;
  }

  OneofNone._();

  factory OneofNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OneofNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, OneofNone_O> _OneofNone_OByTag = {
    1: OneofNone_O.x,
    2: OneofNone_O.y,
    0: OneofNone_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OneofNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'x')
    ..aI(2, _omitFieldNames ? '' : 'y')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OneofNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OneofNone copyWith(void Function(OneofNone) updates) =>
      super.copyWith((message) => updates(message as OneofNone)) as OneofNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OneofNone create() => OneofNone._();
  @$core.override
  OneofNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OneofNone getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OneofNone>(create);
  static OneofNone? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  OneofNone_O whichO() => _OneofNone_OByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearO() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get x => $_getSZ(0);
  @$pb.TagNumber(1)
  set x($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get y => $_getIZ(1);
  @$pb.TagNumber(2)
  set y($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);
}

enum Oneof_O { x, y, z, notSet }

class Oneof extends $pb.GeneratedMessage {
  factory Oneof({
    $core.String? x,
    $core.int? y,
    TestOneofMsg? z,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (z != null) result.z = z;
    return result;
  }

  Oneof._();

  factory Oneof.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Oneof.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Oneof_O> _Oneof_OByTag = {
    1: Oneof_O.x,
    2: Oneof_O.y,
    3: Oneof_O.z,
    0: Oneof_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Oneof',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'x')
    ..aI(2, _omitFieldNames ? '' : 'y')
    ..aOM<TestOneofMsg>(3, _omitFieldNames ? '' : 'z',
        subBuilder: TestOneofMsg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Oneof clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Oneof copyWith(void Function(Oneof) updates) =>
      super.copyWith((message) => updates(message as Oneof)) as Oneof;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Oneof create() => Oneof._();
  @$core.override
  Oneof createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Oneof getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Oneof>(create);
  static Oneof? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  Oneof_O whichO() => _Oneof_OByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearO() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get x => $_getSZ(0);
  @$pb.TagNumber(1)
  set x($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get y => $_getIZ(1);
  @$pb.TagNumber(2)
  set y($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);

  @$pb.TagNumber(3)
  TestOneofMsg get z => $_getN(2);
  @$pb.TagNumber(3)
  set z(TestOneofMsg value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => $_clearField(3);
  @$pb.TagNumber(3)
  TestOneofMsg ensureZ() => $_ensure(2);
}

enum OneofRequired_O { x, y, nameWithUnderscores, underAnd1Number, notSet }

class OneofRequired extends $pb.GeneratedMessage {
  factory OneofRequired({
    $core.String? x,
    $core.int? y,
    $core.int? nameWithUnderscores,
    $core.int? underAnd1Number,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (nameWithUnderscores != null)
      result.nameWithUnderscores = nameWithUnderscores;
    if (underAnd1Number != null) result.underAnd1Number = underAnd1Number;
    return result;
  }

  OneofRequired._();

  factory OneofRequired.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OneofRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, OneofRequired_O> _OneofRequired_OByTag = {
    1: OneofRequired_O.x,
    2: OneofRequired_O.y,
    3: OneofRequired_O.nameWithUnderscores,
    4: OneofRequired_O.underAnd1Number,
    0: OneofRequired_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OneofRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'x')
    ..aI(2, _omitFieldNames ? '' : 'y')
    ..aI(3, _omitFieldNames ? '' : 'nameWithUnderscores')
    ..aI(4, _omitFieldNames ? '' : 'underAnd1Number',
        protoName: 'under_and_1_number')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OneofRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OneofRequired copyWith(void Function(OneofRequired) updates) =>
      super.copyWith((message) => updates(message as OneofRequired))
          as OneofRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OneofRequired create() => OneofRequired._();
  @$core.override
  OneofRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OneofRequired getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OneofRequired>(create);
  static OneofRequired? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  OneofRequired_O whichO() => _OneofRequired_OByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearO() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get x => $_getSZ(0);
  @$pb.TagNumber(1)
  set x($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get y => $_getIZ(1);
  @$pb.TagNumber(2)
  set y($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get nameWithUnderscores => $_getIZ(2);
  @$pb.TagNumber(3)
  set nameWithUnderscores($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNameWithUnderscores() => $_has(2);
  @$pb.TagNumber(3)
  void clearNameWithUnderscores() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get underAnd1Number => $_getIZ(3);
  @$pb.TagNumber(4)
  set underAnd1Number($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUnderAnd1Number() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnderAnd1Number() => $_clearField(4);
}

enum OneofRequiredWithRequiredField_O { a, b, notSet }

class OneofRequiredWithRequiredField extends $pb.GeneratedMessage {
  factory OneofRequiredWithRequiredField({
    $core.String? a,
    $core.String? b,
  }) {
    final result = create();
    if (a != null) result.a = a;
    if (b != null) result.b = b;
    return result;
  }

  OneofRequiredWithRequiredField._();

  factory OneofRequiredWithRequiredField.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OneofRequiredWithRequiredField.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, OneofRequiredWithRequiredField_O>
      _OneofRequiredWithRequiredField_OByTag = {
    1: OneofRequiredWithRequiredField_O.a,
    2: OneofRequiredWithRequiredField_O.b,
    0: OneofRequiredWithRequiredField_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OneofRequiredWithRequiredField',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'a')
    ..aOS(2, _omitFieldNames ? '' : 'b')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OneofRequiredWithRequiredField clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OneofRequiredWithRequiredField copyWith(
          void Function(OneofRequiredWithRequiredField) updates) =>
      super.copyWith(
              (message) => updates(message as OneofRequiredWithRequiredField))
          as OneofRequiredWithRequiredField;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OneofRequiredWithRequiredField create() =>
      OneofRequiredWithRequiredField._();
  @$core.override
  OneofRequiredWithRequiredField createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OneofRequiredWithRequiredField getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OneofRequiredWithRequiredField>(create);
  static OneofRequiredWithRequiredField? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  OneofRequiredWithRequiredField_O whichO() =>
      _OneofRequiredWithRequiredField_OByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearO() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get a => $_getSZ(0);
  @$pb.TagNumber(1)
  set a($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get b => $_getSZ(1);
  @$pb.TagNumber(2)
  set b($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
