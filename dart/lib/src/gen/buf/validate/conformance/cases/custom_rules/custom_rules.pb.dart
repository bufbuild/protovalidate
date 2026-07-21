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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'custom_rules.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'custom_rules.pbenum.dart';

class NoExpressions_Nested extends $pb.GeneratedMessage {
  factory NoExpressions_Nested() => create();

  NoExpressions_Nested._();

  factory NoExpressions_Nested.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NoExpressions_Nested.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NoExpressions.Nested',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NoExpressions_Nested clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NoExpressions_Nested copyWith(void Function(NoExpressions_Nested) updates) =>
      super.copyWith((message) => updates(message as NoExpressions_Nested))
          as NoExpressions_Nested;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoExpressions_Nested create() => NoExpressions_Nested._();
  @$core.override
  NoExpressions_Nested createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NoExpressions_Nested getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NoExpressions_Nested>(create);
  static NoExpressions_Nested? _defaultInstance;
}

/// A message that does not contain any expressions
class NoExpressions extends $pb.GeneratedMessage {
  factory NoExpressions({
    $core.int? a,
    Enum? b,
    NoExpressions_Nested? c,
  }) {
    final result = create();
    if (a != null) result.a = a;
    if (b != null) result.b = b;
    if (c != null) result.c = c;
    return result;
  }

  NoExpressions._();

  factory NoExpressions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NoExpressions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NoExpressions',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a')
    ..aE<Enum>(2, _omitFieldNames ? '' : 'b', enumValues: Enum.values)
    ..aOM<NoExpressions_Nested>(3, _omitFieldNames ? '' : 'c',
        subBuilder: NoExpressions_Nested.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NoExpressions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NoExpressions copyWith(void Function(NoExpressions) updates) =>
      super.copyWith((message) => updates(message as NoExpressions))
          as NoExpressions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoExpressions create() => NoExpressions._();
  @$core.override
  NoExpressions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NoExpressions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NoExpressions>(create);
  static NoExpressions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);

  @$pb.TagNumber(2)
  Enum get b => $_getN(1);
  @$pb.TagNumber(2)
  set b(Enum value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => $_clearField(2);

  @$pb.TagNumber(3)
  NoExpressions_Nested get c => $_getN(2);
  @$pb.TagNumber(3)
  set c(NoExpressions_Nested value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasC() => $_has(2);
  @$pb.TagNumber(3)
  void clearC() => $_clearField(3);
  @$pb.TagNumber(3)
  NoExpressions_Nested ensureC() => $_ensure(2);
}

class MessageExpressions_Nested extends $pb.GeneratedMessage {
  factory MessageExpressions_Nested({
    $core.int? a,
    $core.int? b,
  }) {
    final result = create();
    if (a != null) result.a = a;
    if (b != null) result.b = b;
    return result;
  }

  MessageExpressions_Nested._();

  factory MessageExpressions_Nested.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageExpressions_Nested.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageExpressions.Nested',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a')
    ..aI(2, _omitFieldNames ? '' : 'b')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageExpressions_Nested clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageExpressions_Nested copyWith(
          void Function(MessageExpressions_Nested) updates) =>
      super.copyWith((message) => updates(message as MessageExpressions_Nested))
          as MessageExpressions_Nested;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageExpressions_Nested create() => MessageExpressions_Nested._();
  @$core.override
  MessageExpressions_Nested createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageExpressions_Nested getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageExpressions_Nested>(create);
  static MessageExpressions_Nested? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get b => $_getIZ(1);
  @$pb.TagNumber(2)
  set b($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => $_clearField(2);
}

/// A message with message-level custom expressions
class MessageExpressions extends $pb.GeneratedMessage {
  factory MessageExpressions({
    $core.int? a,
    $core.int? b,
    Enum? c,
    Enum? d,
    MessageExpressions_Nested? e,
    MessageExpressions_Nested? f,
  }) {
    final result = create();
    if (a != null) result.a = a;
    if (b != null) result.b = b;
    if (c != null) result.c = c;
    if (d != null) result.d = d;
    if (e != null) result.e = e;
    if (f != null) result.f = f;
    return result;
  }

  MessageExpressions._();

  factory MessageExpressions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageExpressions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageExpressions',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a')
    ..aI(2, _omitFieldNames ? '' : 'b')
    ..aE<Enum>(3, _omitFieldNames ? '' : 'c', enumValues: Enum.values)
    ..aE<Enum>(4, _omitFieldNames ? '' : 'd', enumValues: Enum.values)
    ..aOM<MessageExpressions_Nested>(5, _omitFieldNames ? '' : 'e',
        subBuilder: MessageExpressions_Nested.create)
    ..aOM<MessageExpressions_Nested>(6, _omitFieldNames ? '' : 'f',
        subBuilder: MessageExpressions_Nested.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageExpressions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageExpressions copyWith(void Function(MessageExpressions) updates) =>
      super.copyWith((message) => updates(message as MessageExpressions))
          as MessageExpressions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageExpressions create() => MessageExpressions._();
  @$core.override
  MessageExpressions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageExpressions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageExpressions>(create);
  static MessageExpressions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get b => $_getIZ(1);
  @$pb.TagNumber(2)
  set b($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => $_clearField(2);

  @$pb.TagNumber(3)
  Enum get c => $_getN(2);
  @$pb.TagNumber(3)
  set c(Enum value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasC() => $_has(2);
  @$pb.TagNumber(3)
  void clearC() => $_clearField(3);

  @$pb.TagNumber(4)
  Enum get d => $_getN(3);
  @$pb.TagNumber(4)
  set d(Enum value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasD() => $_has(3);
  @$pb.TagNumber(4)
  void clearD() => $_clearField(4);

  @$pb.TagNumber(5)
  MessageExpressions_Nested get e => $_getN(4);
  @$pb.TagNumber(5)
  set e(MessageExpressions_Nested value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasE() => $_has(4);
  @$pb.TagNumber(5)
  void clearE() => $_clearField(5);
  @$pb.TagNumber(5)
  MessageExpressions_Nested ensureE() => $_ensure(4);

  @$pb.TagNumber(6)
  MessageExpressions_Nested get f => $_getN(5);
  @$pb.TagNumber(6)
  set f(MessageExpressions_Nested value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasF() => $_has(5);
  @$pb.TagNumber(6)
  void clearF() => $_clearField(6);
  @$pb.TagNumber(6)
  MessageExpressions_Nested ensureF() => $_ensure(5);
}

class MessageExpressionOnly extends $pb.GeneratedMessage {
  factory MessageExpressionOnly({
    $core.int? a,
  }) {
    final result = create();
    if (a != null) result.a = a;
    return result;
  }

  MessageExpressionOnly._();

  factory MessageExpressionOnly.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageExpressionOnly.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageExpressionOnly',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageExpressionOnly clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageExpressionOnly copyWith(
          void Function(MessageExpressionOnly) updates) =>
      super.copyWith((message) => updates(message as MessageExpressionOnly))
          as MessageExpressionOnly;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageExpressionOnly create() => MessageExpressionOnly._();
  @$core.override
  MessageExpressionOnly createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageExpressionOnly getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageExpressionOnly>(create);
  static MessageExpressionOnly? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);
}

class MissingField extends $pb.GeneratedMessage {
  factory MissingField({
    $core.int? a,
  }) {
    final result = create();
    if (a != null) result.a = a;
    return result;
  }

  MissingField._();

  factory MissingField.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MissingField.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MissingField',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MissingField clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MissingField copyWith(void Function(MissingField) updates) =>
      super.copyWith((message) => updates(message as MissingField))
          as MissingField;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MissingField create() => MissingField._();
  @$core.override
  MissingField createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MissingField getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MissingField>(create);
  static MissingField? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);
}

class IncorrectType extends $pb.GeneratedMessage {
  factory IncorrectType({
    $core.int? a,
  }) {
    final result = create();
    if (a != null) result.a = a;
    return result;
  }

  IncorrectType._();

  factory IncorrectType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IncorrectType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IncorrectType',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IncorrectType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IncorrectType copyWith(void Function(IncorrectType) updates) =>
      super.copyWith((message) => updates(message as IncorrectType))
          as IncorrectType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IncorrectType create() => IncorrectType._();
  @$core.override
  IncorrectType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IncorrectType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IncorrectType>(create);
  static IncorrectType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);
}

class DynRuntimeError extends $pb.GeneratedMessage {
  factory DynRuntimeError({
    $core.int? a,
  }) {
    final result = create();
    if (a != null) result.a = a;
    return result;
  }

  DynRuntimeError._();

  factory DynRuntimeError.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynRuntimeError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynRuntimeError',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DynRuntimeError clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DynRuntimeError copyWith(void Function(DynRuntimeError) updates) =>
      super.copyWith((message) => updates(message as DynRuntimeError))
          as DynRuntimeError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynRuntimeError create() => DynRuntimeError._();
  @$core.override
  DynRuntimeError createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DynRuntimeError getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynRuntimeError>(create);
  static DynRuntimeError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);
}

class NowEqualsNow extends $pb.GeneratedMessage {
  factory NowEqualsNow() => create();

  NowEqualsNow._();

  factory NowEqualsNow.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NowEqualsNow.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NowEqualsNow',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NowEqualsNow clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NowEqualsNow copyWith(void Function(NowEqualsNow) updates) =>
      super.copyWith((message) => updates(message as NowEqualsNow))
          as NowEqualsNow;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NowEqualsNow create() => NowEqualsNow._();
  @$core.override
  NowEqualsNow createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NowEqualsNow getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NowEqualsNow>(create);
  static NowEqualsNow? _defaultInstance;
}

class FieldExpressionOnly extends $pb.GeneratedMessage {
  factory FieldExpressionOnly({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FieldExpressionOnly._();

  factory FieldExpressionOnly.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionOnly.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionOnly',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionOnly clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionOnly copyWith(void Function(FieldExpressionOnly) updates) =>
      super.copyWith((message) => updates(message as FieldExpressionOnly))
          as FieldExpressionOnly;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionOnly create() => FieldExpressionOnly._();
  @$core.override
  FieldExpressionOnly createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionOnly getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionOnly>(create);
  static FieldExpressionOnly? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FieldExpressionMultipleScalar extends $pb.GeneratedMessage {
  factory FieldExpressionMultipleScalar({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FieldExpressionMultipleScalar._();

  factory FieldExpressionMultipleScalar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMultipleScalar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMultipleScalar',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMultipleScalar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMultipleScalar copyWith(
          void Function(FieldExpressionMultipleScalar) updates) =>
      super.copyWith(
              (message) => updates(message as FieldExpressionMultipleScalar))
          as FieldExpressionMultipleScalar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMultipleScalar create() =>
      FieldExpressionMultipleScalar._();
  @$core.override
  FieldExpressionMultipleScalar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMultipleScalar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMultipleScalar>(create);
  static FieldExpressionMultipleScalar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FieldExpressionNestedScalar extends $pb.GeneratedMessage {
  factory FieldExpressionNestedScalar({
    FieldExpressionScalar? nested,
  }) {
    final result = create();
    if (nested != null) result.nested = nested;
    return result;
  }

  FieldExpressionNestedScalar._();

  factory FieldExpressionNestedScalar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionNestedScalar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionNestedScalar',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aOM<FieldExpressionScalar>(1, _omitFieldNames ? '' : 'nested',
        subBuilder: FieldExpressionScalar.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionNestedScalar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionNestedScalar copyWith(
          void Function(FieldExpressionNestedScalar) updates) =>
      super.copyWith(
              (message) => updates(message as FieldExpressionNestedScalar))
          as FieldExpressionNestedScalar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionNestedScalar create() =>
      FieldExpressionNestedScalar._();
  @$core.override
  FieldExpressionNestedScalar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionNestedScalar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionNestedScalar>(create);
  static FieldExpressionNestedScalar? _defaultInstance;

  @$pb.TagNumber(1)
  FieldExpressionScalar get nested => $_getN(0);
  @$pb.TagNumber(1)
  set nested(FieldExpressionScalar value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNested() => $_has(0);
  @$pb.TagNumber(1)
  void clearNested() => $_clearField(1);
  @$pb.TagNumber(1)
  FieldExpressionScalar ensureNested() => $_ensure(0);
}

class FieldExpressionOptionalScalar extends $pb.GeneratedMessage {
  factory FieldExpressionOptionalScalar({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FieldExpressionOptionalScalar._();

  factory FieldExpressionOptionalScalar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionOptionalScalar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionOptionalScalar',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionOptionalScalar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionOptionalScalar copyWith(
          void Function(FieldExpressionOptionalScalar) updates) =>
      super.copyWith(
              (message) => updates(message as FieldExpressionOptionalScalar))
          as FieldExpressionOptionalScalar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionOptionalScalar create() =>
      FieldExpressionOptionalScalar._();
  @$core.override
  FieldExpressionOptionalScalar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionOptionalScalar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionOptionalScalar>(create);
  static FieldExpressionOptionalScalar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FieldExpressionScalar extends $pb.GeneratedMessage {
  factory FieldExpressionScalar({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FieldExpressionScalar._();

  factory FieldExpressionScalar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionScalar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionScalar',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionScalar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionScalar copyWith(
          void Function(FieldExpressionScalar) updates) =>
      super.copyWith((message) => updates(message as FieldExpressionScalar))
          as FieldExpressionScalar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionScalar create() => FieldExpressionScalar._();
  @$core.override
  FieldExpressionScalar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionScalar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionScalar>(create);
  static FieldExpressionScalar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FieldExpressionEnum extends $pb.GeneratedMessage {
  factory FieldExpressionEnum({
    Enum? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FieldExpressionEnum._();

  factory FieldExpressionEnum.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionEnum.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionEnum',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aE<Enum>(1, _omitFieldNames ? '' : 'val', enumValues: Enum.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionEnum clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionEnum copyWith(void Function(FieldExpressionEnum) updates) =>
      super.copyWith((message) => updates(message as FieldExpressionEnum))
          as FieldExpressionEnum;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionEnum create() => FieldExpressionEnum._();
  @$core.override
  FieldExpressionEnum createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionEnum getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionEnum>(create);
  static FieldExpressionEnum? _defaultInstance;

  @$pb.TagNumber(1)
  Enum get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(Enum value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FieldExpressionMessage_Msg extends $pb.GeneratedMessage {
  factory FieldExpressionMessage_Msg({
    $core.int? a,
  }) {
    final result = create();
    if (a != null) result.a = a;
    return result;
  }

  FieldExpressionMessage_Msg._();

  factory FieldExpressionMessage_Msg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMessage_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMessage.Msg',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMessage_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMessage_Msg copyWith(
          void Function(FieldExpressionMessage_Msg) updates) =>
      super.copyWith(
              (message) => updates(message as FieldExpressionMessage_Msg))
          as FieldExpressionMessage_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMessage_Msg create() => FieldExpressionMessage_Msg._();
  @$core.override
  FieldExpressionMessage_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMessage_Msg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMessage_Msg>(create);
  static FieldExpressionMessage_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);
}

class FieldExpressionMessage extends $pb.GeneratedMessage {
  factory FieldExpressionMessage({
    FieldExpressionMessage_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FieldExpressionMessage._();

  factory FieldExpressionMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMessage',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aOM<FieldExpressionMessage_Msg>(1, _omitFieldNames ? '' : 'val',
        subBuilder: FieldExpressionMessage_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMessage copyWith(
          void Function(FieldExpressionMessage) updates) =>
      super.copyWith((message) => updates(message as FieldExpressionMessage))
          as FieldExpressionMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMessage create() => FieldExpressionMessage._();
  @$core.override
  FieldExpressionMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMessage>(create);
  static FieldExpressionMessage? _defaultInstance;

  @$pb.TagNumber(1)
  FieldExpressionMessage_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(FieldExpressionMessage_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  FieldExpressionMessage_Msg ensureVal() => $_ensure(0);
}

class FieldExpressionMapInt32 extends $pb.GeneratedMessage {
  factory FieldExpressionMapInt32({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  FieldExpressionMapInt32._();

  factory FieldExpressionMapInt32.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapInt32.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapInt32',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'FieldExpressionMapInt32.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName(
            'buf.validate.conformance.cases.custom_rules'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapInt32 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapInt32 copyWith(
          void Function(FieldExpressionMapInt32) updates) =>
      super.copyWith((message) => updates(message as FieldExpressionMapInt32))
          as FieldExpressionMapInt32;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapInt32 create() => FieldExpressionMapInt32._();
  @$core.override
  FieldExpressionMapInt32 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapInt32 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMapInt32>(create);
  static FieldExpressionMapInt32? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class FieldExpressionMapInt64 extends $pb.GeneratedMessage {
  factory FieldExpressionMapInt64({
    $core.Iterable<$core.MapEntry<$fixnum.Int64, $fixnum.Int64>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  FieldExpressionMapInt64._();

  factory FieldExpressionMapInt64.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapInt64.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapInt64',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..m<$fixnum.Int64, $fixnum.Int64>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'FieldExpressionMapInt64.ValEntry',
        keyFieldType: $pb.PbFieldType.O6,
        valueFieldType: $pb.PbFieldType.O6,
        packageName: const $pb.PackageName(
            'buf.validate.conformance.cases.custom_rules'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapInt64 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapInt64 copyWith(
          void Function(FieldExpressionMapInt64) updates) =>
      super.copyWith((message) => updates(message as FieldExpressionMapInt64))
          as FieldExpressionMapInt64;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapInt64 create() => FieldExpressionMapInt64._();
  @$core.override
  FieldExpressionMapInt64 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapInt64 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMapInt64>(create);
  static FieldExpressionMapInt64? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$fixnum.Int64, $fixnum.Int64> get val => $_getMap(0);
}

class FieldExpressionMapUint32 extends $pb.GeneratedMessage {
  factory FieldExpressionMapUint32({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  FieldExpressionMapUint32._();

  factory FieldExpressionMapUint32.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapUint32.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapUint32',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'FieldExpressionMapUint32.ValEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OU3,
        packageName: const $pb.PackageName(
            'buf.validate.conformance.cases.custom_rules'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapUint32 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapUint32 copyWith(
          void Function(FieldExpressionMapUint32) updates) =>
      super.copyWith((message) => updates(message as FieldExpressionMapUint32))
          as FieldExpressionMapUint32;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapUint32 create() => FieldExpressionMapUint32._();
  @$core.override
  FieldExpressionMapUint32 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapUint32 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMapUint32>(create);
  static FieldExpressionMapUint32? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class FieldExpressionMapUint64 extends $pb.GeneratedMessage {
  factory FieldExpressionMapUint64({
    $core.Iterable<$core.MapEntry<$fixnum.Int64, $fixnum.Int64>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  FieldExpressionMapUint64._();

  factory FieldExpressionMapUint64.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapUint64.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapUint64',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..m<$fixnum.Int64, $fixnum.Int64>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'FieldExpressionMapUint64.ValEntry',
        keyFieldType: $pb.PbFieldType.OU6,
        valueFieldType: $pb.PbFieldType.OU6,
        packageName: const $pb.PackageName(
            'buf.validate.conformance.cases.custom_rules'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapUint64 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapUint64 copyWith(
          void Function(FieldExpressionMapUint64) updates) =>
      super.copyWith((message) => updates(message as FieldExpressionMapUint64))
          as FieldExpressionMapUint64;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapUint64 create() => FieldExpressionMapUint64._();
  @$core.override
  FieldExpressionMapUint64 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapUint64 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMapUint64>(create);
  static FieldExpressionMapUint64? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$fixnum.Int64, $fixnum.Int64> get val => $_getMap(0);
}

class FieldExpressionMapBool extends $pb.GeneratedMessage {
  factory FieldExpressionMapBool({
    $core.Iterable<$core.MapEntry<$core.bool, $core.bool>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  FieldExpressionMapBool._();

  factory FieldExpressionMapBool.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapBool.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapBool',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..m<$core.bool, $core.bool>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'FieldExpressionMapBool.ValEntry',
        keyFieldType: $pb.PbFieldType.OB,
        valueFieldType: $pb.PbFieldType.OB,
        packageName: const $pb.PackageName(
            'buf.validate.conformance.cases.custom_rules'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapBool clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapBool copyWith(
          void Function(FieldExpressionMapBool) updates) =>
      super.copyWith((message) => updates(message as FieldExpressionMapBool))
          as FieldExpressionMapBool;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapBool create() => FieldExpressionMapBool._();
  @$core.override
  FieldExpressionMapBool createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapBool getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMapBool>(create);
  static FieldExpressionMapBool? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.bool, $core.bool> get val => $_getMap(0);
}

class FieldExpressionMapString extends $pb.GeneratedMessage {
  factory FieldExpressionMapString({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  FieldExpressionMapString._();

  factory FieldExpressionMapString.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapString.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapString',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'FieldExpressionMapString.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName(
            'buf.validate.conformance.cases.custom_rules'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapString clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapString copyWith(
          void Function(FieldExpressionMapString) updates) =>
      super.copyWith((message) => updates(message as FieldExpressionMapString))
          as FieldExpressionMapString;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapString create() => FieldExpressionMapString._();
  @$core.override
  FieldExpressionMapString createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapString getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMapString>(create);
  static FieldExpressionMapString? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get val => $_getMap(0);
}

class FieldExpressionMapEnum extends $pb.GeneratedMessage {
  factory FieldExpressionMapEnum({
    $core.Iterable<$core.MapEntry<$core.int, Enum>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  FieldExpressionMapEnum._();

  factory FieldExpressionMapEnum.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapEnum.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapEnum',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..m<$core.int, Enum>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'FieldExpressionMapEnum.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OE,
        valueOf: Enum.valueOf,
        enumValues: Enum.values,
        valueDefaultOrMaker: Enum.ENUM_UNSPECIFIED,
        defaultEnumValue: Enum.ENUM_UNSPECIFIED,
        packageName: const $pb.PackageName(
            'buf.validate.conformance.cases.custom_rules'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapEnum clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapEnum copyWith(
          void Function(FieldExpressionMapEnum) updates) =>
      super.copyWith((message) => updates(message as FieldExpressionMapEnum))
          as FieldExpressionMapEnum;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapEnum create() => FieldExpressionMapEnum._();
  @$core.override
  FieldExpressionMapEnum createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapEnum getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMapEnum>(create);
  static FieldExpressionMapEnum? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, Enum> get val => $_getMap(0);
}

class FieldExpressionMapMessage_Msg extends $pb.GeneratedMessage {
  factory FieldExpressionMapMessage_Msg({
    $core.int? a,
  }) {
    final result = create();
    if (a != null) result.a = a;
    return result;
  }

  FieldExpressionMapMessage_Msg._();

  factory FieldExpressionMapMessage_Msg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapMessage_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapMessage.Msg',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapMessage_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapMessage_Msg copyWith(
          void Function(FieldExpressionMapMessage_Msg) updates) =>
      super.copyWith(
              (message) => updates(message as FieldExpressionMapMessage_Msg))
          as FieldExpressionMapMessage_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapMessage_Msg create() =>
      FieldExpressionMapMessage_Msg._();
  @$core.override
  FieldExpressionMapMessage_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapMessage_Msg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMapMessage_Msg>(create);
  static FieldExpressionMapMessage_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);
}

class FieldExpressionMapMessage extends $pb.GeneratedMessage {
  factory FieldExpressionMapMessage({
    $core.Iterable<$core.MapEntry<$core.int, FieldExpressionMapMessage_Msg>>?
        val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  FieldExpressionMapMessage._();

  factory FieldExpressionMapMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapMessage',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..m<$core.int, FieldExpressionMapMessage_Msg>(
        1, _omitFieldNames ? '' : 'val',
        entryClassName: 'FieldExpressionMapMessage.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: FieldExpressionMapMessage_Msg.create,
        valueDefaultOrMaker: FieldExpressionMapMessage_Msg.getDefault,
        packageName: const $pb.PackageName(
            'buf.validate.conformance.cases.custom_rules'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapMessage copyWith(
          void Function(FieldExpressionMapMessage) updates) =>
      super.copyWith((message) => updates(message as FieldExpressionMapMessage))
          as FieldExpressionMapMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapMessage create() => FieldExpressionMapMessage._();
  @$core.override
  FieldExpressionMapMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMapMessage>(create);
  static FieldExpressionMapMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, FieldExpressionMapMessage_Msg> get val => $_getMap(0);
}

class FieldExpressionMapKeys extends $pb.GeneratedMessage {
  factory FieldExpressionMapKeys({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  FieldExpressionMapKeys._();

  factory FieldExpressionMapKeys.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapKeys.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapKeys',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'FieldExpressionMapKeys.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName(
            'buf.validate.conformance.cases.custom_rules'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapKeys clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapKeys copyWith(
          void Function(FieldExpressionMapKeys) updates) =>
      super.copyWith((message) => updates(message as FieldExpressionMapKeys))
          as FieldExpressionMapKeys;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapKeys create() => FieldExpressionMapKeys._();
  @$core.override
  FieldExpressionMapKeys createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapKeys getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMapKeys>(create);
  static FieldExpressionMapKeys? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class FieldExpressionMapScalarValues extends $pb.GeneratedMessage {
  factory FieldExpressionMapScalarValues({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  FieldExpressionMapScalarValues._();

  factory FieldExpressionMapScalarValues.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapScalarValues.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapScalarValues',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'FieldExpressionMapScalarValues.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName(
            'buf.validate.conformance.cases.custom_rules'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapScalarValues clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapScalarValues copyWith(
          void Function(FieldExpressionMapScalarValues) updates) =>
      super.copyWith(
              (message) => updates(message as FieldExpressionMapScalarValues))
          as FieldExpressionMapScalarValues;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapScalarValues create() =>
      FieldExpressionMapScalarValues._();
  @$core.override
  FieldExpressionMapScalarValues createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapScalarValues getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMapScalarValues>(create);
  static FieldExpressionMapScalarValues? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class FieldExpressionMapEnumValues extends $pb.GeneratedMessage {
  factory FieldExpressionMapEnumValues({
    $core.Iterable<$core.MapEntry<$core.int, Enum>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  FieldExpressionMapEnumValues._();

  factory FieldExpressionMapEnumValues.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapEnumValues.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapEnumValues',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..m<$core.int, Enum>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'FieldExpressionMapEnumValues.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OE,
        valueOf: Enum.valueOf,
        enumValues: Enum.values,
        valueDefaultOrMaker: Enum.ENUM_UNSPECIFIED,
        defaultEnumValue: Enum.ENUM_UNSPECIFIED,
        packageName: const $pb.PackageName(
            'buf.validate.conformance.cases.custom_rules'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapEnumValues clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapEnumValues copyWith(
          void Function(FieldExpressionMapEnumValues) updates) =>
      super.copyWith(
              (message) => updates(message as FieldExpressionMapEnumValues))
          as FieldExpressionMapEnumValues;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapEnumValues create() =>
      FieldExpressionMapEnumValues._();
  @$core.override
  FieldExpressionMapEnumValues createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapEnumValues getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMapEnumValues>(create);
  static FieldExpressionMapEnumValues? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, Enum> get val => $_getMap(0);
}

class FieldExpressionMapMessageValues_Msg extends $pb.GeneratedMessage {
  factory FieldExpressionMapMessageValues_Msg({
    $core.int? a,
  }) {
    final result = create();
    if (a != null) result.a = a;
    return result;
  }

  FieldExpressionMapMessageValues_Msg._();

  factory FieldExpressionMapMessageValues_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapMessageValues_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapMessageValues.Msg',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapMessageValues_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapMessageValues_Msg copyWith(
          void Function(FieldExpressionMapMessageValues_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as FieldExpressionMapMessageValues_Msg))
          as FieldExpressionMapMessageValues_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapMessageValues_Msg create() =>
      FieldExpressionMapMessageValues_Msg._();
  @$core.override
  FieldExpressionMapMessageValues_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapMessageValues_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          FieldExpressionMapMessageValues_Msg>(create);
  static FieldExpressionMapMessageValues_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);
}

class FieldExpressionMapMessageValues extends $pb.GeneratedMessage {
  factory FieldExpressionMapMessageValues({
    $core.Iterable<
            $core.MapEntry<$core.int, FieldExpressionMapMessageValues_Msg>>?
        val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  FieldExpressionMapMessageValues._();

  factory FieldExpressionMapMessageValues.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionMapMessageValues.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionMapMessageValues',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..m<$core.int, FieldExpressionMapMessageValues_Msg>(
        1, _omitFieldNames ? '' : 'val',
        entryClassName: 'FieldExpressionMapMessageValues.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: FieldExpressionMapMessageValues_Msg.create,
        valueDefaultOrMaker: FieldExpressionMapMessageValues_Msg.getDefault,
        packageName: const $pb.PackageName(
            'buf.validate.conformance.cases.custom_rules'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapMessageValues clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionMapMessageValues copyWith(
          void Function(FieldExpressionMapMessageValues) updates) =>
      super.copyWith(
              (message) => updates(message as FieldExpressionMapMessageValues))
          as FieldExpressionMapMessageValues;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapMessageValues create() =>
      FieldExpressionMapMessageValues._();
  @$core.override
  FieldExpressionMapMessageValues createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionMapMessageValues getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionMapMessageValues>(
          create);
  static FieldExpressionMapMessageValues? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, FieldExpressionMapMessageValues_Msg> get val =>
      $_getMap(0);
}

class FieldExpressionRepeatedScalar extends $pb.GeneratedMessage {
  factory FieldExpressionRepeatedScalar({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  FieldExpressionRepeatedScalar._();

  factory FieldExpressionRepeatedScalar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionRepeatedScalar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionRepeatedScalar',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedScalar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedScalar copyWith(
          void Function(FieldExpressionRepeatedScalar) updates) =>
      super.copyWith(
              (message) => updates(message as FieldExpressionRepeatedScalar))
          as FieldExpressionRepeatedScalar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedScalar create() =>
      FieldExpressionRepeatedScalar._();
  @$core.override
  FieldExpressionRepeatedScalar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedScalar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionRepeatedScalar>(create);
  static FieldExpressionRepeatedScalar? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class FieldExpressionRepeatedEnum extends $pb.GeneratedMessage {
  factory FieldExpressionRepeatedEnum({
    $core.Iterable<Enum>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  FieldExpressionRepeatedEnum._();

  factory FieldExpressionRepeatedEnum.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionRepeatedEnum.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionRepeatedEnum',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..pc<Enum>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KE,
        valueOf: Enum.valueOf,
        enumValues: Enum.values,
        defaultEnumValue: Enum.ENUM_UNSPECIFIED)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedEnum clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedEnum copyWith(
          void Function(FieldExpressionRepeatedEnum) updates) =>
      super.copyWith(
              (message) => updates(message as FieldExpressionRepeatedEnum))
          as FieldExpressionRepeatedEnum;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedEnum create() =>
      FieldExpressionRepeatedEnum._();
  @$core.override
  FieldExpressionRepeatedEnum createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedEnum getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionRepeatedEnum>(create);
  static FieldExpressionRepeatedEnum? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Enum> get val => $_getList(0);
}

class FieldExpressionRepeatedMessage_Msg extends $pb.GeneratedMessage {
  factory FieldExpressionRepeatedMessage_Msg({
    $core.int? a,
  }) {
    final result = create();
    if (a != null) result.a = a;
    return result;
  }

  FieldExpressionRepeatedMessage_Msg._();

  factory FieldExpressionRepeatedMessage_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionRepeatedMessage_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionRepeatedMessage.Msg',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedMessage_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedMessage_Msg copyWith(
          void Function(FieldExpressionRepeatedMessage_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as FieldExpressionRepeatedMessage_Msg))
          as FieldExpressionRepeatedMessage_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedMessage_Msg create() =>
      FieldExpressionRepeatedMessage_Msg._();
  @$core.override
  FieldExpressionRepeatedMessage_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedMessage_Msg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionRepeatedMessage_Msg>(
          create);
  static FieldExpressionRepeatedMessage_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);
}

class FieldExpressionRepeatedMessage extends $pb.GeneratedMessage {
  factory FieldExpressionRepeatedMessage({
    $core.Iterable<FieldExpressionRepeatedMessage_Msg>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  FieldExpressionRepeatedMessage._();

  factory FieldExpressionRepeatedMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionRepeatedMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionRepeatedMessage',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..pPM<FieldExpressionRepeatedMessage_Msg>(1, _omitFieldNames ? '' : 'val',
        subBuilder: FieldExpressionRepeatedMessage_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedMessage copyWith(
          void Function(FieldExpressionRepeatedMessage) updates) =>
      super.copyWith(
              (message) => updates(message as FieldExpressionRepeatedMessage))
          as FieldExpressionRepeatedMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedMessage create() =>
      FieldExpressionRepeatedMessage._();
  @$core.override
  FieldExpressionRepeatedMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionRepeatedMessage>(create);
  static FieldExpressionRepeatedMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<FieldExpressionRepeatedMessage_Msg> get val => $_getList(0);
}

class FieldExpressionRepeatedScalarItems extends $pb.GeneratedMessage {
  factory FieldExpressionRepeatedScalarItems({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  FieldExpressionRepeatedScalarItems._();

  factory FieldExpressionRepeatedScalarItems.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionRepeatedScalarItems.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionRepeatedScalarItems',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedScalarItems clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedScalarItems copyWith(
          void Function(FieldExpressionRepeatedScalarItems) updates) =>
      super.copyWith((message) =>
              updates(message as FieldExpressionRepeatedScalarItems))
          as FieldExpressionRepeatedScalarItems;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedScalarItems create() =>
      FieldExpressionRepeatedScalarItems._();
  @$core.override
  FieldExpressionRepeatedScalarItems createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedScalarItems getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionRepeatedScalarItems>(
          create);
  static FieldExpressionRepeatedScalarItems? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class FieldExpressionRepeatedEnumItems extends $pb.GeneratedMessage {
  factory FieldExpressionRepeatedEnumItems({
    $core.Iterable<Enum>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  FieldExpressionRepeatedEnumItems._();

  factory FieldExpressionRepeatedEnumItems.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionRepeatedEnumItems.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionRepeatedEnumItems',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..pc<Enum>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KE,
        valueOf: Enum.valueOf,
        enumValues: Enum.values,
        defaultEnumValue: Enum.ENUM_UNSPECIFIED)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedEnumItems clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedEnumItems copyWith(
          void Function(FieldExpressionRepeatedEnumItems) updates) =>
      super.copyWith(
              (message) => updates(message as FieldExpressionRepeatedEnumItems))
          as FieldExpressionRepeatedEnumItems;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedEnumItems create() =>
      FieldExpressionRepeatedEnumItems._();
  @$core.override
  FieldExpressionRepeatedEnumItems createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedEnumItems getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldExpressionRepeatedEnumItems>(
          create);
  static FieldExpressionRepeatedEnumItems? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Enum> get val => $_getList(0);
}

class FieldExpressionRepeatedMessageItems_Msg extends $pb.GeneratedMessage {
  factory FieldExpressionRepeatedMessageItems_Msg({
    $core.int? a,
  }) {
    final result = create();
    if (a != null) result.a = a;
    return result;
  }

  FieldExpressionRepeatedMessageItems_Msg._();

  factory FieldExpressionRepeatedMessageItems_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionRepeatedMessageItems_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionRepeatedMessageItems.Msg',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedMessageItems_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedMessageItems_Msg copyWith(
          void Function(FieldExpressionRepeatedMessageItems_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as FieldExpressionRepeatedMessageItems_Msg))
          as FieldExpressionRepeatedMessageItems_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedMessageItems_Msg create() =>
      FieldExpressionRepeatedMessageItems_Msg._();
  @$core.override
  FieldExpressionRepeatedMessageItems_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedMessageItems_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          FieldExpressionRepeatedMessageItems_Msg>(create);
  static FieldExpressionRepeatedMessageItems_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);
}

class FieldExpressionRepeatedMessageItems extends $pb.GeneratedMessage {
  factory FieldExpressionRepeatedMessageItems({
    $core.Iterable<FieldExpressionRepeatedMessageItems_Msg>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  FieldExpressionRepeatedMessageItems._();

  factory FieldExpressionRepeatedMessageItems.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldExpressionRepeatedMessageItems.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldExpressionRepeatedMessageItems',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'buf.validate.conformance.cases.custom_rules'),
      createEmptyInstance: create)
    ..pPM<FieldExpressionRepeatedMessageItems_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: FieldExpressionRepeatedMessageItems_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedMessageItems clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldExpressionRepeatedMessageItems copyWith(
          void Function(FieldExpressionRepeatedMessageItems) updates) =>
      super.copyWith((message) =>
              updates(message as FieldExpressionRepeatedMessageItems))
          as FieldExpressionRepeatedMessageItems;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedMessageItems create() =>
      FieldExpressionRepeatedMessageItems._();
  @$core.override
  FieldExpressionRepeatedMessageItems createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldExpressionRepeatedMessageItems getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          FieldExpressionRepeatedMessageItems>(create);
  static FieldExpressionRepeatedMessageItems? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<FieldExpressionRepeatedMessageItems_Msg> get val => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
