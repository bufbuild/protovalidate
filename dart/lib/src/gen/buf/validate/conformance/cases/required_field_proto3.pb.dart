// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/required_field_proto3.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RequiredProto3Scalar extends $pb.GeneratedMessage {
  factory RequiredProto3Scalar({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto3Scalar._();

  factory RequiredProto3Scalar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3Scalar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3Scalar',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3Scalar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3Scalar copyWith(void Function(RequiredProto3Scalar) updates) =>
      super.copyWith((message) => updates(message as RequiredProto3Scalar))
          as RequiredProto3Scalar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3Scalar create() => RequiredProto3Scalar._();
  @$core.override
  RequiredProto3Scalar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3Scalar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3Scalar>(create);
  static RequiredProto3Scalar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredProto3ScalarIgnoreAlways extends $pb.GeneratedMessage {
  factory RequiredProto3ScalarIgnoreAlways({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto3ScalarIgnoreAlways._();

  factory RequiredProto3ScalarIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3ScalarIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3ScalarIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3ScalarIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3ScalarIgnoreAlways copyWith(
          void Function(RequiredProto3ScalarIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as RequiredProto3ScalarIgnoreAlways))
          as RequiredProto3ScalarIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3ScalarIgnoreAlways create() =>
      RequiredProto3ScalarIgnoreAlways._();
  @$core.override
  RequiredProto3ScalarIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3ScalarIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3ScalarIgnoreAlways>(
          create);
  static RequiredProto3ScalarIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredProto3OptionalScalar extends $pb.GeneratedMessage {
  factory RequiredProto3OptionalScalar({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto3OptionalScalar._();

  factory RequiredProto3OptionalScalar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3OptionalScalar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3OptionalScalar',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3OptionalScalar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3OptionalScalar copyWith(
          void Function(RequiredProto3OptionalScalar) updates) =>
      super.copyWith(
              (message) => updates(message as RequiredProto3OptionalScalar))
          as RequiredProto3OptionalScalar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3OptionalScalar create() =>
      RequiredProto3OptionalScalar._();
  @$core.override
  RequiredProto3OptionalScalar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3OptionalScalar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3OptionalScalar>(create);
  static RequiredProto3OptionalScalar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredProto3OptionalScalarIgnoreAlways extends $pb.GeneratedMessage {
  factory RequiredProto3OptionalScalarIgnoreAlways({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto3OptionalScalarIgnoreAlways._();

  factory RequiredProto3OptionalScalarIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3OptionalScalarIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3OptionalScalarIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3OptionalScalarIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3OptionalScalarIgnoreAlways copyWith(
          void Function(RequiredProto3OptionalScalarIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as RequiredProto3OptionalScalarIgnoreAlways))
          as RequiredProto3OptionalScalarIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3OptionalScalarIgnoreAlways create() =>
      RequiredProto3OptionalScalarIgnoreAlways._();
  @$core.override
  RequiredProto3OptionalScalarIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3OptionalScalarIgnoreAlways getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RequiredProto3OptionalScalarIgnoreAlways>(create);
  static RequiredProto3OptionalScalarIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredProto3Message_Msg extends $pb.GeneratedMessage {
  factory RequiredProto3Message_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto3Message_Msg._();

  factory RequiredProto3Message_Msg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3Message_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3Message.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3Message_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3Message_Msg copyWith(
          void Function(RequiredProto3Message_Msg) updates) =>
      super.copyWith((message) => updates(message as RequiredProto3Message_Msg))
          as RequiredProto3Message_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3Message_Msg create() => RequiredProto3Message_Msg._();
  @$core.override
  RequiredProto3Message_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3Message_Msg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3Message_Msg>(create);
  static RequiredProto3Message_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredProto3Message extends $pb.GeneratedMessage {
  factory RequiredProto3Message({
    RequiredProto3Message_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto3Message._();

  factory RequiredProto3Message.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3Message.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3Message',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<RequiredProto3Message_Msg>(1, _omitFieldNames ? '' : 'val',
        subBuilder: RequiredProto3Message_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3Message clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3Message copyWith(
          void Function(RequiredProto3Message) updates) =>
      super.copyWith((message) => updates(message as RequiredProto3Message))
          as RequiredProto3Message;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3Message create() => RequiredProto3Message._();
  @$core.override
  RequiredProto3Message createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3Message getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3Message>(create);
  static RequiredProto3Message? _defaultInstance;

  @$pb.TagNumber(1)
  RequiredProto3Message_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(RequiredProto3Message_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  RequiredProto3Message_Msg ensureVal() => $_ensure(0);
}

class RequiredProto3MessageIgnoreAlways_Msg extends $pb.GeneratedMessage {
  factory RequiredProto3MessageIgnoreAlways_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto3MessageIgnoreAlways_Msg._();

  factory RequiredProto3MessageIgnoreAlways_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3MessageIgnoreAlways_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3MessageIgnoreAlways.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3MessageIgnoreAlways_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3MessageIgnoreAlways_Msg copyWith(
          void Function(RequiredProto3MessageIgnoreAlways_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as RequiredProto3MessageIgnoreAlways_Msg))
          as RequiredProto3MessageIgnoreAlways_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3MessageIgnoreAlways_Msg create() =>
      RequiredProto3MessageIgnoreAlways_Msg._();
  @$core.override
  RequiredProto3MessageIgnoreAlways_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3MessageIgnoreAlways_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RequiredProto3MessageIgnoreAlways_Msg>(create);
  static RequiredProto3MessageIgnoreAlways_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredProto3MessageIgnoreAlways extends $pb.GeneratedMessage {
  factory RequiredProto3MessageIgnoreAlways({
    RequiredProto3MessageIgnoreAlways_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto3MessageIgnoreAlways._();

  factory RequiredProto3MessageIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3MessageIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3MessageIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<RequiredProto3MessageIgnoreAlways_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: RequiredProto3MessageIgnoreAlways_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3MessageIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3MessageIgnoreAlways copyWith(
          void Function(RequiredProto3MessageIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as RequiredProto3MessageIgnoreAlways))
          as RequiredProto3MessageIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3MessageIgnoreAlways create() =>
      RequiredProto3MessageIgnoreAlways._();
  @$core.override
  RequiredProto3MessageIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3MessageIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3MessageIgnoreAlways>(
          create);
  static RequiredProto3MessageIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  RequiredProto3MessageIgnoreAlways_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(RequiredProto3MessageIgnoreAlways_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  RequiredProto3MessageIgnoreAlways_Msg ensureVal() => $_ensure(0);
}

enum RequiredProto3OneOf_Val { a, b, notSet }

class RequiredProto3OneOf extends $pb.GeneratedMessage {
  factory RequiredProto3OneOf({
    $core.String? a,
    $core.String? b,
  }) {
    final result = create();
    if (a != null) result.a = a;
    if (b != null) result.b = b;
    return result;
  }

  RequiredProto3OneOf._();

  factory RequiredProto3OneOf.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3OneOf.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, RequiredProto3OneOf_Val>
      _RequiredProto3OneOf_ValByTag = {
    1: RequiredProto3OneOf_Val.a,
    2: RequiredProto3OneOf_Val.b,
    0: RequiredProto3OneOf_Val.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3OneOf',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'a')
    ..aOS(2, _omitFieldNames ? '' : 'b')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3OneOf clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3OneOf copyWith(void Function(RequiredProto3OneOf) updates) =>
      super.copyWith((message) => updates(message as RequiredProto3OneOf))
          as RequiredProto3OneOf;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3OneOf create() => RequiredProto3OneOf._();
  @$core.override
  RequiredProto3OneOf createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3OneOf getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3OneOf>(create);
  static RequiredProto3OneOf? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  RequiredProto3OneOf_Val whichVal() =>
      _RequiredProto3OneOf_ValByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearVal() => $_clearField($_whichOneof(0));

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

enum RequiredProto3OneOfIgnoreAlways_Val { a, b, notSet }

class RequiredProto3OneOfIgnoreAlways extends $pb.GeneratedMessage {
  factory RequiredProto3OneOfIgnoreAlways({
    $core.String? a,
    $core.String? b,
  }) {
    final result = create();
    if (a != null) result.a = a;
    if (b != null) result.b = b;
    return result;
  }

  RequiredProto3OneOfIgnoreAlways._();

  factory RequiredProto3OneOfIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3OneOfIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, RequiredProto3OneOfIgnoreAlways_Val>
      _RequiredProto3OneOfIgnoreAlways_ValByTag = {
    1: RequiredProto3OneOfIgnoreAlways_Val.a,
    2: RequiredProto3OneOfIgnoreAlways_Val.b,
    0: RequiredProto3OneOfIgnoreAlways_Val.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3OneOfIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'a')
    ..aOS(2, _omitFieldNames ? '' : 'b')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3OneOfIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3OneOfIgnoreAlways copyWith(
          void Function(RequiredProto3OneOfIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as RequiredProto3OneOfIgnoreAlways))
          as RequiredProto3OneOfIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3OneOfIgnoreAlways create() =>
      RequiredProto3OneOfIgnoreAlways._();
  @$core.override
  RequiredProto3OneOfIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3OneOfIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3OneOfIgnoreAlways>(
          create);
  static RequiredProto3OneOfIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  RequiredProto3OneOfIgnoreAlways_Val whichVal() =>
      _RequiredProto3OneOfIgnoreAlways_ValByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearVal() => $_clearField($_whichOneof(0));

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

class RequiredProto3Repeated extends $pb.GeneratedMessage {
  factory RequiredProto3Repeated({
    $core.Iterable<$core.String>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RequiredProto3Repeated._();

  factory RequiredProto3Repeated.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3Repeated.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3Repeated',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3Repeated clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3Repeated copyWith(
          void Function(RequiredProto3Repeated) updates) =>
      super.copyWith((message) => updates(message as RequiredProto3Repeated))
          as RequiredProto3Repeated;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3Repeated create() => RequiredProto3Repeated._();
  @$core.override
  RequiredProto3Repeated createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3Repeated getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3Repeated>(create);
  static RequiredProto3Repeated? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get val => $_getList(0);
}

class RequiredProto3RepeatedIgnoreAlways extends $pb.GeneratedMessage {
  factory RequiredProto3RepeatedIgnoreAlways({
    $core.Iterable<$core.String>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RequiredProto3RepeatedIgnoreAlways._();

  factory RequiredProto3RepeatedIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3RepeatedIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3RepeatedIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3RepeatedIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3RepeatedIgnoreAlways copyWith(
          void Function(RequiredProto3RepeatedIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as RequiredProto3RepeatedIgnoreAlways))
          as RequiredProto3RepeatedIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3RepeatedIgnoreAlways create() =>
      RequiredProto3RepeatedIgnoreAlways._();
  @$core.override
  RequiredProto3RepeatedIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3RepeatedIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3RepeatedIgnoreAlways>(
          create);
  static RequiredProto3RepeatedIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get val => $_getList(0);
}

class RequiredProto3Map extends $pb.GeneratedMessage {
  factory RequiredProto3Map({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  RequiredProto3Map._();

  factory RequiredProto3Map.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3Map.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3Map',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'RequiredProto3Map.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3Map clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3Map copyWith(void Function(RequiredProto3Map) updates) =>
      super.copyWith((message) => updates(message as RequiredProto3Map))
          as RequiredProto3Map;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3Map create() => RequiredProto3Map._();
  @$core.override
  RequiredProto3Map createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3Map getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3Map>(create);
  static RequiredProto3Map? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get val => $_getMap(0);
}

class RequiredProto3MapIgnoreAlways extends $pb.GeneratedMessage {
  factory RequiredProto3MapIgnoreAlways({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  RequiredProto3MapIgnoreAlways._();

  factory RequiredProto3MapIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3MapIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3MapIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'RequiredProto3MapIgnoreAlways.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3MapIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3MapIgnoreAlways copyWith(
          void Function(RequiredProto3MapIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as RequiredProto3MapIgnoreAlways))
          as RequiredProto3MapIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3MapIgnoreAlways create() =>
      RequiredProto3MapIgnoreAlways._();
  @$core.override
  RequiredProto3MapIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3MapIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3MapIgnoreAlways>(create);
  static RequiredProto3MapIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get val => $_getMap(0);
}

class RequiredProto3MapKey extends $pb.GeneratedMessage {
  factory RequiredProto3MapKey({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  RequiredProto3MapKey._();

  factory RequiredProto3MapKey.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3MapKey.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3MapKey',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'RequiredProto3MapKey.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3MapKey clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3MapKey copyWith(void Function(RequiredProto3MapKey) updates) =>
      super.copyWith((message) => updates(message as RequiredProto3MapKey))
          as RequiredProto3MapKey;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3MapKey create() => RequiredProto3MapKey._();
  @$core.override
  RequiredProto3MapKey createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3MapKey getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3MapKey>(create);
  static RequiredProto3MapKey? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get val => $_getMap(0);
}

class RequiredProto3MapValue extends $pb.GeneratedMessage {
  factory RequiredProto3MapValue({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  RequiredProto3MapValue._();

  factory RequiredProto3MapValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3MapValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3MapValue',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'RequiredProto3MapValue.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3MapValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3MapValue copyWith(
          void Function(RequiredProto3MapValue) updates) =>
      super.copyWith((message) => updates(message as RequiredProto3MapValue))
          as RequiredProto3MapValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3MapValue create() => RequiredProto3MapValue._();
  @$core.override
  RequiredProto3MapValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3MapValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3MapValue>(create);
  static RequiredProto3MapValue? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get val => $_getMap(0);
}

class RequiredProto3RepeatedItem extends $pb.GeneratedMessage {
  factory RequiredProto3RepeatedItem({
    $core.Iterable<$core.String>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RequiredProto3RepeatedItem._();

  factory RequiredProto3RepeatedItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto3RepeatedItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto3RepeatedItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3RepeatedItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto3RepeatedItem copyWith(
          void Function(RequiredProto3RepeatedItem) updates) =>
      super.copyWith(
              (message) => updates(message as RequiredProto3RepeatedItem))
          as RequiredProto3RepeatedItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto3RepeatedItem create() => RequiredProto3RepeatedItem._();
  @$core.override
  RequiredProto3RepeatedItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto3RepeatedItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto3RepeatedItem>(create);
  static RequiredProto3RepeatedItem? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get val => $_getList(0);
}

class RequiredImplicitProto3Scalar extends $pb.GeneratedMessage {
  factory RequiredImplicitProto3Scalar({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredImplicitProto3Scalar._();

  factory RequiredImplicitProto3Scalar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredImplicitProto3Scalar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredImplicitProto3Scalar',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredImplicitProto3Scalar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredImplicitProto3Scalar copyWith(
          void Function(RequiredImplicitProto3Scalar) updates) =>
      super.copyWith(
              (message) => updates(message as RequiredImplicitProto3Scalar))
          as RequiredImplicitProto3Scalar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredImplicitProto3Scalar create() =>
      RequiredImplicitProto3Scalar._();
  @$core.override
  RequiredImplicitProto3Scalar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredImplicitProto3Scalar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredImplicitProto3Scalar>(create);
  static RequiredImplicitProto3Scalar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredImplicitProto3Repeated extends $pb.GeneratedMessage {
  factory RequiredImplicitProto3Repeated({
    $core.Iterable<$core.String>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RequiredImplicitProto3Repeated._();

  factory RequiredImplicitProto3Repeated.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredImplicitProto3Repeated.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredImplicitProto3Repeated',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredImplicitProto3Repeated clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredImplicitProto3Repeated copyWith(
          void Function(RequiredImplicitProto3Repeated) updates) =>
      super.copyWith(
              (message) => updates(message as RequiredImplicitProto3Repeated))
          as RequiredImplicitProto3Repeated;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredImplicitProto3Repeated create() =>
      RequiredImplicitProto3Repeated._();
  @$core.override
  RequiredImplicitProto3Repeated createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredImplicitProto3Repeated getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredImplicitProto3Repeated>(create);
  static RequiredImplicitProto3Repeated? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get val => $_getList(0);
}

class RequiredImplicitProto3Map extends $pb.GeneratedMessage {
  factory RequiredImplicitProto3Map({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  RequiredImplicitProto3Map._();

  factory RequiredImplicitProto3Map.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredImplicitProto3Map.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredImplicitProto3Map',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'RequiredImplicitProto3Map.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredImplicitProto3Map clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredImplicitProto3Map copyWith(
          void Function(RequiredImplicitProto3Map) updates) =>
      super.copyWith((message) => updates(message as RequiredImplicitProto3Map))
          as RequiredImplicitProto3Map;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredImplicitProto3Map create() => RequiredImplicitProto3Map._();
  @$core.override
  RequiredImplicitProto3Map createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredImplicitProto3Map getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredImplicitProto3Map>(create);
  static RequiredImplicitProto3Map? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get val => $_getMap(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
