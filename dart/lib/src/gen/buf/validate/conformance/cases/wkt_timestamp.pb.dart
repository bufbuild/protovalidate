// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/wkt_timestamp.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/duration.pb.dart' as $2;
import '../../../../google/protobuf/timestamp.pb.dart' as $0;
import '../../../../google/protobuf/wrappers.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TimestampNone extends $pb.GeneratedMessage {
  factory TimestampNone({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampNone._();

  factory TimestampNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampNone copyWith(void Function(TimestampNone) updates) =>
      super.copyWith((message) => updates(message as TimestampNone))
          as TimestampNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampNone create() => TimestampNone._();
  @$core.override
  TimestampNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampNone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampNone>(create);
  static TimestampNone? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampRequired extends $pb.GeneratedMessage {
  factory TimestampRequired({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampRequired._();

  factory TimestampRequired.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampRequired copyWith(void Function(TimestampRequired) updates) =>
      super.copyWith((message) => updates(message as TimestampRequired))
          as TimestampRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampRequired create() => TimestampRequired._();
  @$core.override
  TimestampRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampRequired getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampRequired>(create);
  static TimestampRequired? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampConst extends $pb.GeneratedMessage {
  factory TimestampConst({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampConst._();

  factory TimestampConst.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampConst.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampConst',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampConst clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampConst copyWith(void Function(TimestampConst) updates) =>
      super.copyWith((message) => updates(message as TimestampConst))
          as TimestampConst;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampConst create() => TimestampConst._();
  @$core.override
  TimestampConst createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampConst getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampConst>(create);
  static TimestampConst? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampLT extends $pb.GeneratedMessage {
  factory TimestampLT({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampLT._();

  factory TimestampLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampLT copyWith(void Function(TimestampLT) updates) =>
      super.copyWith((message) => updates(message as TimestampLT))
          as TimestampLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampLT create() => TimestampLT._();
  @$core.override
  TimestampLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampLT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampLT>(create);
  static TimestampLT? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampLTE extends $pb.GeneratedMessage {
  factory TimestampLTE({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampLTE._();

  factory TimestampLTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampLTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampLTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampLTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampLTE copyWith(void Function(TimestampLTE) updates) =>
      super.copyWith((message) => updates(message as TimestampLTE))
          as TimestampLTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampLTE create() => TimestampLTE._();
  @$core.override
  TimestampLTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampLTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampLTE>(create);
  static TimestampLTE? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampGT extends $pb.GeneratedMessage {
  factory TimestampGT({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampGT._();

  factory TimestampGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampGT copyWith(void Function(TimestampGT) updates) =>
      super.copyWith((message) => updates(message as TimestampGT))
          as TimestampGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampGT create() => TimestampGT._();
  @$core.override
  TimestampGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampGT>(create);
  static TimestampGT? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampGTE extends $pb.GeneratedMessage {
  factory TimestampGTE({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampGTE._();

  factory TimestampGTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampGTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampGTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampGTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampGTE copyWith(void Function(TimestampGTE) updates) =>
      super.copyWith((message) => updates(message as TimestampGTE))
          as TimestampGTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampGTE create() => TimestampGTE._();
  @$core.override
  TimestampGTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampGTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampGTE>(create);
  static TimestampGTE? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampGTLT extends $pb.GeneratedMessage {
  factory TimestampGTLT({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampGTLT._();

  factory TimestampGTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampGTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampGTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampGTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampGTLT copyWith(void Function(TimestampGTLT) updates) =>
      super.copyWith((message) => updates(message as TimestampGTLT))
          as TimestampGTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampGTLT create() => TimestampGTLT._();
  @$core.override
  TimestampGTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampGTLT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampGTLT>(create);
  static TimestampGTLT? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampExLTGT extends $pb.GeneratedMessage {
  factory TimestampExLTGT({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampExLTGT._();

  factory TimestampExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampExLTGT copyWith(void Function(TimestampExLTGT) updates) =>
      super.copyWith((message) => updates(message as TimestampExLTGT))
          as TimestampExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampExLTGT create() => TimestampExLTGT._();
  @$core.override
  TimestampExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampExLTGT>(create);
  static TimestampExLTGT? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampGTELTE extends $pb.GeneratedMessage {
  factory TimestampGTELTE({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampGTELTE._();

  factory TimestampGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampGTELTE copyWith(void Function(TimestampGTELTE) updates) =>
      super.copyWith((message) => updates(message as TimestampGTELTE))
          as TimestampGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampGTELTE create() => TimestampGTELTE._();
  @$core.override
  TimestampGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampGTELTE>(create);
  static TimestampGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampExGTELTE extends $pb.GeneratedMessage {
  factory TimestampExGTELTE({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampExGTELTE._();

  factory TimestampExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampExGTELTE copyWith(void Function(TimestampExGTELTE) updates) =>
      super.copyWith((message) => updates(message as TimestampExGTELTE))
          as TimestampExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampExGTELTE create() => TimestampExGTELTE._();
  @$core.override
  TimestampExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampExGTELTE>(create);
  static TimestampExGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampLTNow extends $pb.GeneratedMessage {
  factory TimestampLTNow({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampLTNow._();

  factory TimestampLTNow.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampLTNow.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampLTNow',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampLTNow clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampLTNow copyWith(void Function(TimestampLTNow) updates) =>
      super.copyWith((message) => updates(message as TimestampLTNow))
          as TimestampLTNow;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampLTNow create() => TimestampLTNow._();
  @$core.override
  TimestampLTNow createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampLTNow getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampLTNow>(create);
  static TimestampLTNow? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampNotLTNow extends $pb.GeneratedMessage {
  factory TimestampNotLTNow({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampNotLTNow._();

  factory TimestampNotLTNow.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampNotLTNow.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampNotLTNow',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampNotLTNow clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampNotLTNow copyWith(void Function(TimestampNotLTNow) updates) =>
      super.copyWith((message) => updates(message as TimestampNotLTNow))
          as TimestampNotLTNow;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampNotLTNow create() => TimestampNotLTNow._();
  @$core.override
  TimestampNotLTNow createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampNotLTNow getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampNotLTNow>(create);
  static TimestampNotLTNow? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampGTNow extends $pb.GeneratedMessage {
  factory TimestampGTNow({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampGTNow._();

  factory TimestampGTNow.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampGTNow.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampGTNow',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampGTNow clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampGTNow copyWith(void Function(TimestampGTNow) updates) =>
      super.copyWith((message) => updates(message as TimestampGTNow))
          as TimestampGTNow;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampGTNow create() => TimestampGTNow._();
  @$core.override
  TimestampGTNow createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampGTNow getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampGTNow>(create);
  static TimestampGTNow? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampNotGTNow extends $pb.GeneratedMessage {
  factory TimestampNotGTNow({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampNotGTNow._();

  factory TimestampNotGTNow.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampNotGTNow.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampNotGTNow',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampNotGTNow clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampNotGTNow copyWith(void Function(TimestampNotGTNow) updates) =>
      super.copyWith((message) => updates(message as TimestampNotGTNow))
          as TimestampNotGTNow;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampNotGTNow create() => TimestampNotGTNow._();
  @$core.override
  TimestampNotGTNow createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampNotGTNow getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampNotGTNow>(create);
  static TimestampNotGTNow? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampWithin extends $pb.GeneratedMessage {
  factory TimestampWithin({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampWithin._();

  factory TimestampWithin.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampWithin.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampWithin',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampWithin clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampWithin copyWith(void Function(TimestampWithin) updates) =>
      super.copyWith((message) => updates(message as TimestampWithin))
          as TimestampWithin;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampWithin create() => TimestampWithin._();
  @$core.override
  TimestampWithin createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampWithin getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampWithin>(create);
  static TimestampWithin? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampLTNowWithin extends $pb.GeneratedMessage {
  factory TimestampLTNowWithin({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampLTNowWithin._();

  factory TimestampLTNowWithin.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampLTNowWithin.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampLTNowWithin',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampLTNowWithin clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampLTNowWithin copyWith(void Function(TimestampLTNowWithin) updates) =>
      super.copyWith((message) => updates(message as TimestampLTNowWithin))
          as TimestampLTNowWithin;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampLTNowWithin create() => TimestampLTNowWithin._();
  @$core.override
  TimestampLTNowWithin createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampLTNowWithin getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampLTNowWithin>(create);
  static TimestampLTNowWithin? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampGTNowWithin extends $pb.GeneratedMessage {
  factory TimestampGTNowWithin({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampGTNowWithin._();

  factory TimestampGTNowWithin.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampGTNowWithin.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampGTNowWithin',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampGTNowWithin clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampGTNowWithin copyWith(void Function(TimestampGTNowWithin) updates) =>
      super.copyWith((message) => updates(message as TimestampGTNowWithin))
          as TimestampGTNowWithin;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampGTNowWithin create() => TimestampGTNowWithin._();
  @$core.override
  TimestampGTNowWithin createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampGTNowWithin getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampGTNowWithin>(create);
  static TimestampGTNowWithin? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

class TimestampExample extends $pb.GeneratedMessage {
  factory TimestampExample({
    $0.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampExample._();

  factory TimestampExample.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampExample.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampExample',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampExample clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampExample copyWith(void Function(TimestampExample) updates) =>
      super.copyWith((message) => updates(message as TimestampExample))
          as TimestampExample;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampExample create() => TimestampExample._();
  @$core.override
  TimestampExample createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampExample getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampExample>(create);
  static TimestampExample? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureVal() => $_ensure(0);
}

/// The below messages should throw compilation errors due to rules being applied toincorrect types.
class TimestampWrongTypeScalar extends $pb.GeneratedMessage {
  factory TimestampWrongTypeScalar({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampWrongTypeScalar._();

  factory TimestampWrongTypeScalar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampWrongTypeScalar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampWrongTypeScalar',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampWrongTypeScalar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampWrongTypeScalar copyWith(
          void Function(TimestampWrongTypeScalar) updates) =>
      super.copyWith((message) => updates(message as TimestampWrongTypeScalar))
          as TimestampWrongTypeScalar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampWrongTypeScalar create() => TimestampWrongTypeScalar._();
  @$core.override
  TimestampWrongTypeScalar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampWrongTypeScalar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampWrongTypeScalar>(create);
  static TimestampWrongTypeScalar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class TimestampWrongTypeMessage_WrongType extends $pb.GeneratedMessage {
  factory TimestampWrongTypeMessage_WrongType({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampWrongTypeMessage_WrongType._();

  factory TimestampWrongTypeMessage_WrongType.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampWrongTypeMessage_WrongType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampWrongTypeMessage.WrongType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampWrongTypeMessage_WrongType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampWrongTypeMessage_WrongType copyWith(
          void Function(TimestampWrongTypeMessage_WrongType) updates) =>
      super.copyWith((message) =>
              updates(message as TimestampWrongTypeMessage_WrongType))
          as TimestampWrongTypeMessage_WrongType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampWrongTypeMessage_WrongType create() =>
      TimestampWrongTypeMessage_WrongType._();
  @$core.override
  TimestampWrongTypeMessage_WrongType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampWrongTypeMessage_WrongType getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          TimestampWrongTypeMessage_WrongType>(create);
  static TimestampWrongTypeMessage_WrongType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class TimestampWrongTypeMessage extends $pb.GeneratedMessage {
  factory TimestampWrongTypeMessage({
    TimestampWrongTypeMessage_WrongType? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampWrongTypeMessage._();

  factory TimestampWrongTypeMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampWrongTypeMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampWrongTypeMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<TimestampWrongTypeMessage_WrongType>(1, _omitFieldNames ? '' : 'val',
        subBuilder: TimestampWrongTypeMessage_WrongType.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampWrongTypeMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampWrongTypeMessage copyWith(
          void Function(TimestampWrongTypeMessage) updates) =>
      super.copyWith((message) => updates(message as TimestampWrongTypeMessage))
          as TimestampWrongTypeMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampWrongTypeMessage create() => TimestampWrongTypeMessage._();
  @$core.override
  TimestampWrongTypeMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampWrongTypeMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampWrongTypeMessage>(create);
  static TimestampWrongTypeMessage? _defaultInstance;

  @$pb.TagNumber(1)
  TimestampWrongTypeMessage_WrongType get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TimestampWrongTypeMessage_WrongType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  TimestampWrongTypeMessage_WrongType ensureVal() => $_ensure(0);
}

class TimestampWrongTypeWrapper extends $pb.GeneratedMessage {
  factory TimestampWrongTypeWrapper({
    $1.Int32Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampWrongTypeWrapper._();

  factory TimestampWrongTypeWrapper.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampWrongTypeWrapper.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampWrongTypeWrapper',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$1.Int32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $1.Int32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampWrongTypeWrapper clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampWrongTypeWrapper copyWith(
          void Function(TimestampWrongTypeWrapper) updates) =>
      super.copyWith((message) => updates(message as TimestampWrongTypeWrapper))
          as TimestampWrongTypeWrapper;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampWrongTypeWrapper create() => TimestampWrongTypeWrapper._();
  @$core.override
  TimestampWrongTypeWrapper createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampWrongTypeWrapper getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampWrongTypeWrapper>(create);
  static TimestampWrongTypeWrapper? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Int32Value get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($1.Int32Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Int32Value ensureVal() => $_ensure(0);
}

class TimestampWrongTypeWKT extends $pb.GeneratedMessage {
  factory TimestampWrongTypeWKT({
    $2.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  TimestampWrongTypeWKT._();

  factory TimestampWrongTypeWKT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampWrongTypeWKT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampWrongTypeWKT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampWrongTypeWKT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampWrongTypeWKT copyWith(
          void Function(TimestampWrongTypeWKT) updates) =>
      super.copyWith((message) => updates(message as TimestampWrongTypeWKT))
          as TimestampWrongTypeWKT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampWrongTypeWKT create() => TimestampWrongTypeWKT._();
  @$core.override
  TimestampWrongTypeWKT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampWrongTypeWKT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampWrongTypeWKT>(create);
  static TimestampWrongTypeWKT? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Duration get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($2.Duration value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.Duration ensureVal() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
