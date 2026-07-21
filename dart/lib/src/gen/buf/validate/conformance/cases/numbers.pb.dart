// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/numbers.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FloatNone extends $pb.GeneratedMessage {
  factory FloatNone({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatNone._();

  factory FloatNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatNone copyWith(void Function(FloatNone) updates) =>
      super.copyWith((message) => updates(message as FloatNone)) as FloatNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatNone create() => FloatNone._();
  @$core.override
  FloatNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatNone getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloatNone>(create);
  static FloatNone? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatConst extends $pb.GeneratedMessage {
  factory FloatConst({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatConst._();

  factory FloatConst.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatConst.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatConst',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatConst clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatConst copyWith(void Function(FloatConst) updates) =>
      super.copyWith((message) => updates(message as FloatConst)) as FloatConst;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatConst create() => FloatConst._();
  @$core.override
  FloatConst createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatConst getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatConst>(create);
  static FloatConst? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatIn extends $pb.GeneratedMessage {
  factory FloatIn({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatIn._();

  factory FloatIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatIn copyWith(void Function(FloatIn) updates) =>
      super.copyWith((message) => updates(message as FloatIn)) as FloatIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatIn create() => FloatIn._();
  @$core.override
  FloatIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatIn getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloatIn>(create);
  static FloatIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatNotIn extends $pb.GeneratedMessage {
  factory FloatNotIn({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatNotIn._();

  factory FloatNotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatNotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatNotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatNotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatNotIn copyWith(void Function(FloatNotIn) updates) =>
      super.copyWith((message) => updates(message as FloatNotIn)) as FloatNotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatNotIn create() => FloatNotIn._();
  @$core.override
  FloatNotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatNotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatNotIn>(create);
  static FloatNotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatLT extends $pb.GeneratedMessage {
  factory FloatLT({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatLT._();

  factory FloatLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatLT copyWith(void Function(FloatLT) updates) =>
      super.copyWith((message) => updates(message as FloatLT)) as FloatLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatLT create() => FloatLT._();
  @$core.override
  FloatLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatLT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloatLT>(create);
  static FloatLT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatLTE extends $pb.GeneratedMessage {
  factory FloatLTE({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatLTE._();

  factory FloatLTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatLTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatLTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatLTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatLTE copyWith(void Function(FloatLTE) updates) =>
      super.copyWith((message) => updates(message as FloatLTE)) as FloatLTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatLTE create() => FloatLTE._();
  @$core.override
  FloatLTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatLTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloatLTE>(create);
  static FloatLTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatGT extends $pb.GeneratedMessage {
  factory FloatGT({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatGT._();

  factory FloatGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatGT copyWith(void Function(FloatGT) updates) =>
      super.copyWith((message) => updates(message as FloatGT)) as FloatGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatGT create() => FloatGT._();
  @$core.override
  FloatGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatGT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloatGT>(create);
  static FloatGT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatGTE extends $pb.GeneratedMessage {
  factory FloatGTE({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatGTE._();

  factory FloatGTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatGTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatGTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatGTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatGTE copyWith(void Function(FloatGTE) updates) =>
      super.copyWith((message) => updates(message as FloatGTE)) as FloatGTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatGTE create() => FloatGTE._();
  @$core.override
  FloatGTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatGTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloatGTE>(create);
  static FloatGTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatGTLT extends $pb.GeneratedMessage {
  factory FloatGTLT({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatGTLT._();

  factory FloatGTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatGTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatGTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatGTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatGTLT copyWith(void Function(FloatGTLT) updates) =>
      super.copyWith((message) => updates(message as FloatGTLT)) as FloatGTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatGTLT create() => FloatGTLT._();
  @$core.override
  FloatGTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatGTLT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloatGTLT>(create);
  static FloatGTLT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatExLTGT extends $pb.GeneratedMessage {
  factory FloatExLTGT({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatExLTGT._();

  factory FloatExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatExLTGT copyWith(void Function(FloatExLTGT) updates) =>
      super.copyWith((message) => updates(message as FloatExLTGT))
          as FloatExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatExLTGT create() => FloatExLTGT._();
  @$core.override
  FloatExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatExLTGT>(create);
  static FloatExLTGT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatGTELTE extends $pb.GeneratedMessage {
  factory FloatGTELTE({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatGTELTE._();

  factory FloatGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatGTELTE copyWith(void Function(FloatGTELTE) updates) =>
      super.copyWith((message) => updates(message as FloatGTELTE))
          as FloatGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatGTELTE create() => FloatGTELTE._();
  @$core.override
  FloatGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatGTELTE>(create);
  static FloatGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatExGTELTE extends $pb.GeneratedMessage {
  factory FloatExGTELTE({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatExGTELTE._();

  factory FloatExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatExGTELTE copyWith(void Function(FloatExGTELTE) updates) =>
      super.copyWith((message) => updates(message as FloatExGTELTE))
          as FloatExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatExGTELTE create() => FloatExGTELTE._();
  @$core.override
  FloatExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatExGTELTE>(create);
  static FloatExGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatFinite extends $pb.GeneratedMessage {
  factory FloatFinite({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatFinite._();

  factory FloatFinite.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatFinite.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatFinite',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatFinite clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatFinite copyWith(void Function(FloatFinite) updates) =>
      super.copyWith((message) => updates(message as FloatFinite))
          as FloatFinite;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatFinite create() => FloatFinite._();
  @$core.override
  FloatFinite createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatFinite getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatFinite>(create);
  static FloatFinite? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatNotFinite extends $pb.GeneratedMessage {
  factory FloatNotFinite({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatNotFinite._();

  factory FloatNotFinite.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatNotFinite.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatNotFinite',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatNotFinite clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatNotFinite copyWith(void Function(FloatNotFinite) updates) =>
      super.copyWith((message) => updates(message as FloatNotFinite))
          as FloatNotFinite;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatNotFinite create() => FloatNotFinite._();
  @$core.override
  FloatNotFinite createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatNotFinite getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatNotFinite>(create);
  static FloatNotFinite? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatIgnore extends $pb.GeneratedMessage {
  factory FloatIgnore({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatIgnore._();

  factory FloatIgnore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatIgnore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatIgnore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatIgnore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatIgnore copyWith(void Function(FloatIgnore) updates) =>
      super.copyWith((message) => updates(message as FloatIgnore))
          as FloatIgnore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatIgnore create() => FloatIgnore._();
  @$core.override
  FloatIgnore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatIgnore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatIgnore>(create);
  static FloatIgnore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatIncorrectType extends $pb.GeneratedMessage {
  factory FloatIncorrectType({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatIncorrectType._();

  factory FloatIncorrectType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatIncorrectType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatIncorrectType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatIncorrectType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatIncorrectType copyWith(void Function(FloatIncorrectType) updates) =>
      super.copyWith((message) => updates(message as FloatIncorrectType))
          as FloatIncorrectType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatIncorrectType create() => FloatIncorrectType._();
  @$core.override
  FloatIncorrectType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatIncorrectType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatIncorrectType>(create);
  static FloatIncorrectType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class FloatExample extends $pb.GeneratedMessage {
  factory FloatExample({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FloatExample._();

  factory FloatExample.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatExample.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatExample',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatExample clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatExample copyWith(void Function(FloatExample) updates) =>
      super.copyWith((message) => updates(message as FloatExample))
          as FloatExample;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatExample create() => FloatExample._();
  @$core.override
  FloatExample createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatExample getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatExample>(create);
  static FloatExample? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleNone extends $pb.GeneratedMessage {
  factory DoubleNone({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleNone._();

  factory DoubleNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleNone copyWith(void Function(DoubleNone) updates) =>
      super.copyWith((message) => updates(message as DoubleNone)) as DoubleNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleNone create() => DoubleNone._();
  @$core.override
  DoubleNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleNone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleNone>(create);
  static DoubleNone? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleConst extends $pb.GeneratedMessage {
  factory DoubleConst({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleConst._();

  factory DoubleConst.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleConst.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleConst',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleConst clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleConst copyWith(void Function(DoubleConst) updates) =>
      super.copyWith((message) => updates(message as DoubleConst))
          as DoubleConst;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleConst create() => DoubleConst._();
  @$core.override
  DoubleConst createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleConst getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleConst>(create);
  static DoubleConst? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleIn extends $pb.GeneratedMessage {
  factory DoubleIn({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleIn._();

  factory DoubleIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleIn copyWith(void Function(DoubleIn) updates) =>
      super.copyWith((message) => updates(message as DoubleIn)) as DoubleIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleIn create() => DoubleIn._();
  @$core.override
  DoubleIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleIn getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoubleIn>(create);
  static DoubleIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleNotIn extends $pb.GeneratedMessage {
  factory DoubleNotIn({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleNotIn._();

  factory DoubleNotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleNotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleNotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleNotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleNotIn copyWith(void Function(DoubleNotIn) updates) =>
      super.copyWith((message) => updates(message as DoubleNotIn))
          as DoubleNotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleNotIn create() => DoubleNotIn._();
  @$core.override
  DoubleNotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleNotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleNotIn>(create);
  static DoubleNotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleLT extends $pb.GeneratedMessage {
  factory DoubleLT({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleLT._();

  factory DoubleLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleLT copyWith(void Function(DoubleLT) updates) =>
      super.copyWith((message) => updates(message as DoubleLT)) as DoubleLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleLT create() => DoubleLT._();
  @$core.override
  DoubleLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleLT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoubleLT>(create);
  static DoubleLT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleLTE extends $pb.GeneratedMessage {
  factory DoubleLTE({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleLTE._();

  factory DoubleLTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleLTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleLTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleLTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleLTE copyWith(void Function(DoubleLTE) updates) =>
      super.copyWith((message) => updates(message as DoubleLTE)) as DoubleLTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleLTE create() => DoubleLTE._();
  @$core.override
  DoubleLTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleLTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoubleLTE>(create);
  static DoubleLTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleGT extends $pb.GeneratedMessage {
  factory DoubleGT({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleGT._();

  factory DoubleGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleGT copyWith(void Function(DoubleGT) updates) =>
      super.copyWith((message) => updates(message as DoubleGT)) as DoubleGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleGT create() => DoubleGT._();
  @$core.override
  DoubleGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleGT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoubleGT>(create);
  static DoubleGT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleGTE extends $pb.GeneratedMessage {
  factory DoubleGTE({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleGTE._();

  factory DoubleGTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleGTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleGTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleGTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleGTE copyWith(void Function(DoubleGTE) updates) =>
      super.copyWith((message) => updates(message as DoubleGTE)) as DoubleGTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleGTE create() => DoubleGTE._();
  @$core.override
  DoubleGTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleGTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoubleGTE>(create);
  static DoubleGTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleGTLT extends $pb.GeneratedMessage {
  factory DoubleGTLT({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleGTLT._();

  factory DoubleGTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleGTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleGTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleGTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleGTLT copyWith(void Function(DoubleGTLT) updates) =>
      super.copyWith((message) => updates(message as DoubleGTLT)) as DoubleGTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleGTLT create() => DoubleGTLT._();
  @$core.override
  DoubleGTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleGTLT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleGTLT>(create);
  static DoubleGTLT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleExLTGT extends $pb.GeneratedMessage {
  factory DoubleExLTGT({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleExLTGT._();

  factory DoubleExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleExLTGT copyWith(void Function(DoubleExLTGT) updates) =>
      super.copyWith((message) => updates(message as DoubleExLTGT))
          as DoubleExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleExLTGT create() => DoubleExLTGT._();
  @$core.override
  DoubleExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleExLTGT>(create);
  static DoubleExLTGT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleGTELTE extends $pb.GeneratedMessage {
  factory DoubleGTELTE({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleGTELTE._();

  factory DoubleGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleGTELTE copyWith(void Function(DoubleGTELTE) updates) =>
      super.copyWith((message) => updates(message as DoubleGTELTE))
          as DoubleGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleGTELTE create() => DoubleGTELTE._();
  @$core.override
  DoubleGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleGTELTE>(create);
  static DoubleGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleExGTELTE extends $pb.GeneratedMessage {
  factory DoubleExGTELTE({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleExGTELTE._();

  factory DoubleExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleExGTELTE copyWith(void Function(DoubleExGTELTE) updates) =>
      super.copyWith((message) => updates(message as DoubleExGTELTE))
          as DoubleExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleExGTELTE create() => DoubleExGTELTE._();
  @$core.override
  DoubleExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleExGTELTE>(create);
  static DoubleExGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleFinite extends $pb.GeneratedMessage {
  factory DoubleFinite({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleFinite._();

  factory DoubleFinite.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleFinite.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleFinite',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleFinite clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleFinite copyWith(void Function(DoubleFinite) updates) =>
      super.copyWith((message) => updates(message as DoubleFinite))
          as DoubleFinite;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleFinite create() => DoubleFinite._();
  @$core.override
  DoubleFinite createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleFinite getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleFinite>(create);
  static DoubleFinite? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleNotFinite extends $pb.GeneratedMessage {
  factory DoubleNotFinite({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleNotFinite._();

  factory DoubleNotFinite.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleNotFinite.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleNotFinite',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleNotFinite clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleNotFinite copyWith(void Function(DoubleNotFinite) updates) =>
      super.copyWith((message) => updates(message as DoubleNotFinite))
          as DoubleNotFinite;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleNotFinite create() => DoubleNotFinite._();
  @$core.override
  DoubleNotFinite createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleNotFinite getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleNotFinite>(create);
  static DoubleNotFinite? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleIgnore extends $pb.GeneratedMessage {
  factory DoubleIgnore({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleIgnore._();

  factory DoubleIgnore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleIgnore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleIgnore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleIgnore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleIgnore copyWith(void Function(DoubleIgnore) updates) =>
      super.copyWith((message) => updates(message as DoubleIgnore))
          as DoubleIgnore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleIgnore create() => DoubleIgnore._();
  @$core.override
  DoubleIgnore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleIgnore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleIgnore>(create);
  static DoubleIgnore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleIncorrectType extends $pb.GeneratedMessage {
  factory DoubleIncorrectType({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleIncorrectType._();

  factory DoubleIncorrectType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleIncorrectType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleIncorrectType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleIncorrectType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleIncorrectType copyWith(void Function(DoubleIncorrectType) updates) =>
      super.copyWith((message) => updates(message as DoubleIncorrectType))
          as DoubleIncorrectType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleIncorrectType create() => DoubleIncorrectType._();
  @$core.override
  DoubleIncorrectType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleIncorrectType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleIncorrectType>(create);
  static DoubleIncorrectType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class DoubleExample extends $pb.GeneratedMessage {
  factory DoubleExample({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DoubleExample._();

  factory DoubleExample.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleExample.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleExample',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleExample clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleExample copyWith(void Function(DoubleExample) updates) =>
      super.copyWith((message) => updates(message as DoubleExample))
          as DoubleExample;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleExample create() => DoubleExample._();
  @$core.override
  DoubleExample createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleExample getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleExample>(create);
  static DoubleExample? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32None extends $pb.GeneratedMessage {
  factory Int32None({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32None._();

  factory Int32None.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32None.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32None',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32None clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32None copyWith(void Function(Int32None) updates) =>
      super.copyWith((message) => updates(message as Int32None)) as Int32None;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32None create() => Int32None._();
  @$core.override
  Int32None createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32None getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int32None>(create);
  static Int32None? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32Const extends $pb.GeneratedMessage {
  factory Int32Const({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32Const._();

  factory Int32Const.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32Const.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32Const',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32Const clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32Const copyWith(void Function(Int32Const) updates) =>
      super.copyWith((message) => updates(message as Int32Const)) as Int32Const;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32Const create() => Int32Const._();
  @$core.override
  Int32Const createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32Const getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int32Const>(create);
  static Int32Const? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32In extends $pb.GeneratedMessage {
  factory Int32In({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32In._();

  factory Int32In.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32In.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32In',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32In clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32In copyWith(void Function(Int32In) updates) =>
      super.copyWith((message) => updates(message as Int32In)) as Int32In;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32In create() => Int32In._();
  @$core.override
  Int32In createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32In getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int32In>(create);
  static Int32In? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32NotIn extends $pb.GeneratedMessage {
  factory Int32NotIn({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32NotIn._();

  factory Int32NotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32NotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32NotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32NotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32NotIn copyWith(void Function(Int32NotIn) updates) =>
      super.copyWith((message) => updates(message as Int32NotIn)) as Int32NotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32NotIn create() => Int32NotIn._();
  @$core.override
  Int32NotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32NotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int32NotIn>(create);
  static Int32NotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32LT extends $pb.GeneratedMessage {
  factory Int32LT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32LT._();

  factory Int32LT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32LT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32LT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32LT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32LT copyWith(void Function(Int32LT) updates) =>
      super.copyWith((message) => updates(message as Int32LT)) as Int32LT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32LT create() => Int32LT._();
  @$core.override
  Int32LT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32LT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int32LT>(create);
  static Int32LT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32LTE extends $pb.GeneratedMessage {
  factory Int32LTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32LTE._();

  factory Int32LTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32LTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32LTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32LTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32LTE copyWith(void Function(Int32LTE) updates) =>
      super.copyWith((message) => updates(message as Int32LTE)) as Int32LTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32LTE create() => Int32LTE._();
  @$core.override
  Int32LTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32LTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int32LTE>(create);
  static Int32LTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32GT extends $pb.GeneratedMessage {
  factory Int32GT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32GT._();

  factory Int32GT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32GT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32GT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32GT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32GT copyWith(void Function(Int32GT) updates) =>
      super.copyWith((message) => updates(message as Int32GT)) as Int32GT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32GT create() => Int32GT._();
  @$core.override
  Int32GT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32GT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int32GT>(create);
  static Int32GT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32GTE extends $pb.GeneratedMessage {
  factory Int32GTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32GTE._();

  factory Int32GTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32GTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32GTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32GTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32GTE copyWith(void Function(Int32GTE) updates) =>
      super.copyWith((message) => updates(message as Int32GTE)) as Int32GTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32GTE create() => Int32GTE._();
  @$core.override
  Int32GTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32GTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int32GTE>(create);
  static Int32GTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32GTLT extends $pb.GeneratedMessage {
  factory Int32GTLT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32GTLT._();

  factory Int32GTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32GTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32GTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32GTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32GTLT copyWith(void Function(Int32GTLT) updates) =>
      super.copyWith((message) => updates(message as Int32GTLT)) as Int32GTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32GTLT create() => Int32GTLT._();
  @$core.override
  Int32GTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32GTLT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int32GTLT>(create);
  static Int32GTLT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32ExLTGT extends $pb.GeneratedMessage {
  factory Int32ExLTGT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32ExLTGT._();

  factory Int32ExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32ExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32ExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32ExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32ExLTGT copyWith(void Function(Int32ExLTGT) updates) =>
      super.copyWith((message) => updates(message as Int32ExLTGT))
          as Int32ExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32ExLTGT create() => Int32ExLTGT._();
  @$core.override
  Int32ExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32ExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int32ExLTGT>(create);
  static Int32ExLTGT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32GTELTE extends $pb.GeneratedMessage {
  factory Int32GTELTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32GTELTE._();

  factory Int32GTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32GTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32GTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32GTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32GTELTE copyWith(void Function(Int32GTELTE) updates) =>
      super.copyWith((message) => updates(message as Int32GTELTE))
          as Int32GTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32GTELTE create() => Int32GTELTE._();
  @$core.override
  Int32GTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32GTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int32GTELTE>(create);
  static Int32GTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32ExGTELTE extends $pb.GeneratedMessage {
  factory Int32ExGTELTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32ExGTELTE._();

  factory Int32ExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32ExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32ExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32ExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32ExGTELTE copyWith(void Function(Int32ExGTELTE) updates) =>
      super.copyWith((message) => updates(message as Int32ExGTELTE))
          as Int32ExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32ExGTELTE create() => Int32ExGTELTE._();
  @$core.override
  Int32ExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32ExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int32ExGTELTE>(create);
  static Int32ExGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32Ignore extends $pb.GeneratedMessage {
  factory Int32Ignore({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32Ignore._();

  factory Int32Ignore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32Ignore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32Ignore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32Ignore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32Ignore copyWith(void Function(Int32Ignore) updates) =>
      super.copyWith((message) => updates(message as Int32Ignore))
          as Int32Ignore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32Ignore create() => Int32Ignore._();
  @$core.override
  Int32Ignore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32Ignore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int32Ignore>(create);
  static Int32Ignore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32IncorrectType extends $pb.GeneratedMessage {
  factory Int32IncorrectType({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32IncorrectType._();

  factory Int32IncorrectType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32IncorrectType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32IncorrectType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32IncorrectType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32IncorrectType copyWith(void Function(Int32IncorrectType) updates) =>
      super.copyWith((message) => updates(message as Int32IncorrectType))
          as Int32IncorrectType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32IncorrectType create() => Int32IncorrectType._();
  @$core.override
  Int32IncorrectType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32IncorrectType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int32IncorrectType>(create);
  static Int32IncorrectType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int32Example extends $pb.GeneratedMessage {
  factory Int32Example({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int32Example._();

  factory Int32Example.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32Example.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32Example',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32Example clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32Example copyWith(void Function(Int32Example) updates) =>
      super.copyWith((message) => updates(message as Int32Example))
          as Int32Example;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32Example create() => Int32Example._();
  @$core.override
  Int32Example createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32Example getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int32Example>(create);
  static Int32Example? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64None extends $pb.GeneratedMessage {
  factory Int64None({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64None._();

  factory Int64None.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64None.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64None',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64None clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64None copyWith(void Function(Int64None) updates) =>
      super.copyWith((message) => updates(message as Int64None)) as Int64None;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64None create() => Int64None._();
  @$core.override
  Int64None createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64None getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64None>(create);
  static Int64None? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64Const extends $pb.GeneratedMessage {
  factory Int64Const({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64Const._();

  factory Int64Const.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64Const.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64Const',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64Const clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64Const copyWith(void Function(Int64Const) updates) =>
      super.copyWith((message) => updates(message as Int64Const)) as Int64Const;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64Const create() => Int64Const._();
  @$core.override
  Int64Const createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64Const getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int64Const>(create);
  static Int64Const? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64In extends $pb.GeneratedMessage {
  factory Int64In({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64In._();

  factory Int64In.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64In.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64In',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64In clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64In copyWith(void Function(Int64In) updates) =>
      super.copyWith((message) => updates(message as Int64In)) as Int64In;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64In create() => Int64In._();
  @$core.override
  Int64In createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64In getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64In>(create);
  static Int64In? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64NotIn extends $pb.GeneratedMessage {
  factory Int64NotIn({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64NotIn._();

  factory Int64NotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64NotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64NotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64NotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64NotIn copyWith(void Function(Int64NotIn) updates) =>
      super.copyWith((message) => updates(message as Int64NotIn)) as Int64NotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64NotIn create() => Int64NotIn._();
  @$core.override
  Int64NotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64NotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int64NotIn>(create);
  static Int64NotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64LT extends $pb.GeneratedMessage {
  factory Int64LT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64LT._();

  factory Int64LT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64LT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64LT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64LT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64LT copyWith(void Function(Int64LT) updates) =>
      super.copyWith((message) => updates(message as Int64LT)) as Int64LT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64LT create() => Int64LT._();
  @$core.override
  Int64LT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64LT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64LT>(create);
  static Int64LT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64LTE extends $pb.GeneratedMessage {
  factory Int64LTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64LTE._();

  factory Int64LTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64LTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64LTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64LTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64LTE copyWith(void Function(Int64LTE) updates) =>
      super.copyWith((message) => updates(message as Int64LTE)) as Int64LTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64LTE create() => Int64LTE._();
  @$core.override
  Int64LTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64LTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64LTE>(create);
  static Int64LTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64GT extends $pb.GeneratedMessage {
  factory Int64GT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64GT._();

  factory Int64GT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64GT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64GT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64GT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64GT copyWith(void Function(Int64GT) updates) =>
      super.copyWith((message) => updates(message as Int64GT)) as Int64GT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64GT create() => Int64GT._();
  @$core.override
  Int64GT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64GT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64GT>(create);
  static Int64GT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64GTE extends $pb.GeneratedMessage {
  factory Int64GTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64GTE._();

  factory Int64GTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64GTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64GTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64GTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64GTE copyWith(void Function(Int64GTE) updates) =>
      super.copyWith((message) => updates(message as Int64GTE)) as Int64GTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64GTE create() => Int64GTE._();
  @$core.override
  Int64GTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64GTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64GTE>(create);
  static Int64GTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64GTLT extends $pb.GeneratedMessage {
  factory Int64GTLT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64GTLT._();

  factory Int64GTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64GTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64GTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64GTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64GTLT copyWith(void Function(Int64GTLT) updates) =>
      super.copyWith((message) => updates(message as Int64GTLT)) as Int64GTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64GTLT create() => Int64GTLT._();
  @$core.override
  Int64GTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64GTLT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64GTLT>(create);
  static Int64GTLT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64ExLTGT extends $pb.GeneratedMessage {
  factory Int64ExLTGT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64ExLTGT._();

  factory Int64ExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64ExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64ExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64ExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64ExLTGT copyWith(void Function(Int64ExLTGT) updates) =>
      super.copyWith((message) => updates(message as Int64ExLTGT))
          as Int64ExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64ExLTGT create() => Int64ExLTGT._();
  @$core.override
  Int64ExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64ExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int64ExLTGT>(create);
  static Int64ExLTGT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64GTELTE extends $pb.GeneratedMessage {
  factory Int64GTELTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64GTELTE._();

  factory Int64GTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64GTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64GTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64GTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64GTELTE copyWith(void Function(Int64GTELTE) updates) =>
      super.copyWith((message) => updates(message as Int64GTELTE))
          as Int64GTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64GTELTE create() => Int64GTELTE._();
  @$core.override
  Int64GTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64GTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int64GTELTE>(create);
  static Int64GTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64ExGTELTE extends $pb.GeneratedMessage {
  factory Int64ExGTELTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64ExGTELTE._();

  factory Int64ExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64ExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64ExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64ExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64ExGTELTE copyWith(void Function(Int64ExGTELTE) updates) =>
      super.copyWith((message) => updates(message as Int64ExGTELTE))
          as Int64ExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64ExGTELTE create() => Int64ExGTELTE._();
  @$core.override
  Int64ExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64ExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int64ExGTELTE>(create);
  static Int64ExGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64Ignore extends $pb.GeneratedMessage {
  factory Int64Ignore({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64Ignore._();

  factory Int64Ignore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64Ignore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64Ignore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64Ignore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64Ignore copyWith(void Function(Int64Ignore) updates) =>
      super.copyWith((message) => updates(message as Int64Ignore))
          as Int64Ignore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64Ignore create() => Int64Ignore._();
  @$core.override
  Int64Ignore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64Ignore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int64Ignore>(create);
  static Int64Ignore? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64BigRules extends $pb.GeneratedMessage {
  factory Int64BigRules({
    $fixnum.Int64? ltPos,
    $fixnum.Int64? ltNeg,
    $fixnum.Int64? gtPos,
    $fixnum.Int64? gtNeg,
    $fixnum.Int64? ltePos,
    $fixnum.Int64? lteNeg,
    $fixnum.Int64? gtePos,
    $fixnum.Int64? gteNeg,
    $fixnum.Int64? constantPos,
    $fixnum.Int64? constantNeg,
    $fixnum.Int64? in_11,
    $fixnum.Int64? notin,
  }) {
    final result = create();
    if (ltPos != null) result.ltPos = ltPos;
    if (ltNeg != null) result.ltNeg = ltNeg;
    if (gtPos != null) result.gtPos = gtPos;
    if (gtNeg != null) result.gtNeg = gtNeg;
    if (ltePos != null) result.ltePos = ltePos;
    if (lteNeg != null) result.lteNeg = lteNeg;
    if (gtePos != null) result.gtePos = gtePos;
    if (gteNeg != null) result.gteNeg = gteNeg;
    if (constantPos != null) result.constantPos = constantPos;
    if (constantNeg != null) result.constantNeg = constantNeg;
    if (in_11 != null) result.in_11 = in_11;
    if (notin != null) result.notin = notin;
    return result;
  }

  Int64BigRules._();

  factory Int64BigRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64BigRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64BigRules',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ltPos')
    ..aInt64(2, _omitFieldNames ? '' : 'ltNeg')
    ..aInt64(3, _omitFieldNames ? '' : 'gtPos')
    ..aInt64(4, _omitFieldNames ? '' : 'gtNeg')
    ..aInt64(5, _omitFieldNames ? '' : 'ltePos')
    ..aInt64(6, _omitFieldNames ? '' : 'lteNeg')
    ..aInt64(7, _omitFieldNames ? '' : 'gtePos')
    ..aInt64(8, _omitFieldNames ? '' : 'gteNeg')
    ..aInt64(9, _omitFieldNames ? '' : 'constantPos')
    ..aInt64(10, _omitFieldNames ? '' : 'constantNeg')
    ..aInt64(11, _omitFieldNames ? '' : 'in')
    ..aInt64(12, _omitFieldNames ? '' : 'notin')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64BigRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64BigRules copyWith(void Function(Int64BigRules) updates) =>
      super.copyWith((message) => updates(message as Int64BigRules))
          as Int64BigRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64BigRules create() => Int64BigRules._();
  @$core.override
  Int64BigRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64BigRules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int64BigRules>(create);
  static Int64BigRules? _defaultInstance;

  /// Intentionally choose limits that are outside the range of both signed and unsigned 32-bit integers.
  @$pb.TagNumber(1)
  $fixnum.Int64 get ltPos => $_getI64(0);
  @$pb.TagNumber(1)
  set ltPos($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLtPos() => $_has(0);
  @$pb.TagNumber(1)
  void clearLtPos() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get ltNeg => $_getI64(1);
  @$pb.TagNumber(2)
  set ltNeg($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLtNeg() => $_has(1);
  @$pb.TagNumber(2)
  void clearLtNeg() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get gtPos => $_getI64(2);
  @$pb.TagNumber(3)
  set gtPos($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasGtPos() => $_has(2);
  @$pb.TagNumber(3)
  void clearGtPos() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get gtNeg => $_getI64(3);
  @$pb.TagNumber(4)
  set gtNeg($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGtNeg() => $_has(3);
  @$pb.TagNumber(4)
  void clearGtNeg() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get ltePos => $_getI64(4);
  @$pb.TagNumber(5)
  set ltePos($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLtePos() => $_has(4);
  @$pb.TagNumber(5)
  void clearLtePos() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get lteNeg => $_getI64(5);
  @$pb.TagNumber(6)
  set lteNeg($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLteNeg() => $_has(5);
  @$pb.TagNumber(6)
  void clearLteNeg() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get gtePos => $_getI64(6);
  @$pb.TagNumber(7)
  set gtePos($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasGtePos() => $_has(6);
  @$pb.TagNumber(7)
  void clearGtePos() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get gteNeg => $_getI64(7);
  @$pb.TagNumber(8)
  set gteNeg($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasGteNeg() => $_has(7);
  @$pb.TagNumber(8)
  void clearGteNeg() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get constantPos => $_getI64(8);
  @$pb.TagNumber(9)
  set constantPos($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasConstantPos() => $_has(8);
  @$pb.TagNumber(9)
  void clearConstantPos() => $_clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get constantNeg => $_getI64(9);
  @$pb.TagNumber(10)
  set constantNeg($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasConstantNeg() => $_has(9);
  @$pb.TagNumber(10)
  void clearConstantNeg() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get in_11 => $_getI64(10);
  @$pb.TagNumber(11)
  set in_11($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasIn_11() => $_has(10);
  @$pb.TagNumber(11)
  void clearIn_11() => $_clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get notin => $_getI64(11);
  @$pb.TagNumber(12)
  set notin($fixnum.Int64 value) => $_setInt64(11, value);
  @$pb.TagNumber(12)
  $core.bool hasNotin() => $_has(11);
  @$pb.TagNumber(12)
  void clearNotin() => $_clearField(12);
}

class Int64IncorrectType extends $pb.GeneratedMessage {
  factory Int64IncorrectType({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64IncorrectType._();

  factory Int64IncorrectType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64IncorrectType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64IncorrectType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64IncorrectType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64IncorrectType copyWith(void Function(Int64IncorrectType) updates) =>
      super.copyWith((message) => updates(message as Int64IncorrectType))
          as Int64IncorrectType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64IncorrectType create() => Int64IncorrectType._();
  @$core.override
  Int64IncorrectType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64IncorrectType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int64IncorrectType>(create);
  static Int64IncorrectType? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64Example extends $pb.GeneratedMessage {
  factory Int64Example({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64Example._();

  factory Int64Example.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64Example.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64Example',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64Example clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64Example copyWith(void Function(Int64Example) updates) =>
      super.copyWith((message) => updates(message as Int64Example))
          as Int64Example;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64Example create() => Int64Example._();
  @$core.override
  Int64Example createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64Example getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int64Example>(create);
  static Int64Example? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32None extends $pb.GeneratedMessage {
  factory UInt32None({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32None._();

  factory UInt32None.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32None.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32None',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32None clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32None copyWith(void Function(UInt32None) updates) =>
      super.copyWith((message) => updates(message as UInt32None)) as UInt32None;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32None create() => UInt32None._();
  @$core.override
  UInt32None createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32None getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt32None>(create);
  static UInt32None? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32Const extends $pb.GeneratedMessage {
  factory UInt32Const({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32Const._();

  factory UInt32Const.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32Const.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32Const',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32Const clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32Const copyWith(void Function(UInt32Const) updates) =>
      super.copyWith((message) => updates(message as UInt32Const))
          as UInt32Const;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32Const create() => UInt32Const._();
  @$core.override
  UInt32Const createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32Const getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt32Const>(create);
  static UInt32Const? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32In extends $pb.GeneratedMessage {
  factory UInt32In({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32In._();

  factory UInt32In.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32In.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32In',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32In clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32In copyWith(void Function(UInt32In) updates) =>
      super.copyWith((message) => updates(message as UInt32In)) as UInt32In;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32In create() => UInt32In._();
  @$core.override
  UInt32In createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32In getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UInt32In>(create);
  static UInt32In? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32NotIn extends $pb.GeneratedMessage {
  factory UInt32NotIn({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32NotIn._();

  factory UInt32NotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32NotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32NotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32NotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32NotIn copyWith(void Function(UInt32NotIn) updates) =>
      super.copyWith((message) => updates(message as UInt32NotIn))
          as UInt32NotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32NotIn create() => UInt32NotIn._();
  @$core.override
  UInt32NotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32NotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt32NotIn>(create);
  static UInt32NotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32LT extends $pb.GeneratedMessage {
  factory UInt32LT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32LT._();

  factory UInt32LT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32LT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32LT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32LT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32LT copyWith(void Function(UInt32LT) updates) =>
      super.copyWith((message) => updates(message as UInt32LT)) as UInt32LT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32LT create() => UInt32LT._();
  @$core.override
  UInt32LT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32LT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UInt32LT>(create);
  static UInt32LT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32LTE extends $pb.GeneratedMessage {
  factory UInt32LTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32LTE._();

  factory UInt32LTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32LTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32LTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32LTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32LTE copyWith(void Function(UInt32LTE) updates) =>
      super.copyWith((message) => updates(message as UInt32LTE)) as UInt32LTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32LTE create() => UInt32LTE._();
  @$core.override
  UInt32LTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32LTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UInt32LTE>(create);
  static UInt32LTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32GT extends $pb.GeneratedMessage {
  factory UInt32GT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32GT._();

  factory UInt32GT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32GT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32GT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32GT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32GT copyWith(void Function(UInt32GT) updates) =>
      super.copyWith((message) => updates(message as UInt32GT)) as UInt32GT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32GT create() => UInt32GT._();
  @$core.override
  UInt32GT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32GT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UInt32GT>(create);
  static UInt32GT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32GTE extends $pb.GeneratedMessage {
  factory UInt32GTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32GTE._();

  factory UInt32GTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32GTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32GTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32GTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32GTE copyWith(void Function(UInt32GTE) updates) =>
      super.copyWith((message) => updates(message as UInt32GTE)) as UInt32GTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32GTE create() => UInt32GTE._();
  @$core.override
  UInt32GTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32GTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UInt32GTE>(create);
  static UInt32GTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32GTLT extends $pb.GeneratedMessage {
  factory UInt32GTLT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32GTLT._();

  factory UInt32GTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32GTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32GTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32GTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32GTLT copyWith(void Function(UInt32GTLT) updates) =>
      super.copyWith((message) => updates(message as UInt32GTLT)) as UInt32GTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32GTLT create() => UInt32GTLT._();
  @$core.override
  UInt32GTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32GTLT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt32GTLT>(create);
  static UInt32GTLT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32ExLTGT extends $pb.GeneratedMessage {
  factory UInt32ExLTGT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32ExLTGT._();

  factory UInt32ExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32ExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32ExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32ExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32ExLTGT copyWith(void Function(UInt32ExLTGT) updates) =>
      super.copyWith((message) => updates(message as UInt32ExLTGT))
          as UInt32ExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32ExLTGT create() => UInt32ExLTGT._();
  @$core.override
  UInt32ExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32ExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt32ExLTGT>(create);
  static UInt32ExLTGT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32GTELTE extends $pb.GeneratedMessage {
  factory UInt32GTELTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32GTELTE._();

  factory UInt32GTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32GTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32GTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32GTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32GTELTE copyWith(void Function(UInt32GTELTE) updates) =>
      super.copyWith((message) => updates(message as UInt32GTELTE))
          as UInt32GTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32GTELTE create() => UInt32GTELTE._();
  @$core.override
  UInt32GTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32GTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt32GTELTE>(create);
  static UInt32GTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32ExGTELTE extends $pb.GeneratedMessage {
  factory UInt32ExGTELTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32ExGTELTE._();

  factory UInt32ExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32ExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32ExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32ExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32ExGTELTE copyWith(void Function(UInt32ExGTELTE) updates) =>
      super.copyWith((message) => updates(message as UInt32ExGTELTE))
          as UInt32ExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32ExGTELTE create() => UInt32ExGTELTE._();
  @$core.override
  UInt32ExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32ExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt32ExGTELTE>(create);
  static UInt32ExGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32Ignore extends $pb.GeneratedMessage {
  factory UInt32Ignore({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32Ignore._();

  factory UInt32Ignore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32Ignore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32Ignore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32Ignore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32Ignore copyWith(void Function(UInt32Ignore) updates) =>
      super.copyWith((message) => updates(message as UInt32Ignore))
          as UInt32Ignore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32Ignore create() => UInt32Ignore._();
  @$core.override
  UInt32Ignore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32Ignore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt32Ignore>(create);
  static UInt32Ignore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32IncorrectType extends $pb.GeneratedMessage {
  factory UInt32IncorrectType({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32IncorrectType._();

  factory UInt32IncorrectType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32IncorrectType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32IncorrectType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32IncorrectType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32IncorrectType copyWith(void Function(UInt32IncorrectType) updates) =>
      super.copyWith((message) => updates(message as UInt32IncorrectType))
          as UInt32IncorrectType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32IncorrectType create() => UInt32IncorrectType._();
  @$core.override
  UInt32IncorrectType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32IncorrectType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt32IncorrectType>(create);
  static UInt32IncorrectType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt32Example extends $pb.GeneratedMessage {
  factory UInt32Example({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt32Example._();

  factory UInt32Example.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32Example.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32Example',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32Example clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32Example copyWith(void Function(UInt32Example) updates) =>
      super.copyWith((message) => updates(message as UInt32Example))
          as UInt32Example;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32Example create() => UInt32Example._();
  @$core.override
  UInt32Example createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32Example getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt32Example>(create);
  static UInt32Example? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64None extends $pb.GeneratedMessage {
  factory UInt64None({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64None._();

  factory UInt64None.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64None.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64None',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64None clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64None copyWith(void Function(UInt64None) updates) =>
      super.copyWith((message) => updates(message as UInt64None)) as UInt64None;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64None create() => UInt64None._();
  @$core.override
  UInt64None createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64None getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt64None>(create);
  static UInt64None? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64Const extends $pb.GeneratedMessage {
  factory UInt64Const({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64Const._();

  factory UInt64Const.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64Const.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64Const',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64Const clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64Const copyWith(void Function(UInt64Const) updates) =>
      super.copyWith((message) => updates(message as UInt64Const))
          as UInt64Const;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64Const create() => UInt64Const._();
  @$core.override
  UInt64Const createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64Const getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt64Const>(create);
  static UInt64Const? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64In extends $pb.GeneratedMessage {
  factory UInt64In({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64In._();

  factory UInt64In.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64In.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64In',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64In clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64In copyWith(void Function(UInt64In) updates) =>
      super.copyWith((message) => updates(message as UInt64In)) as UInt64In;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64In create() => UInt64In._();
  @$core.override
  UInt64In createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64In getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UInt64In>(create);
  static UInt64In? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64NotIn extends $pb.GeneratedMessage {
  factory UInt64NotIn({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64NotIn._();

  factory UInt64NotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64NotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64NotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64NotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64NotIn copyWith(void Function(UInt64NotIn) updates) =>
      super.copyWith((message) => updates(message as UInt64NotIn))
          as UInt64NotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64NotIn create() => UInt64NotIn._();
  @$core.override
  UInt64NotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64NotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt64NotIn>(create);
  static UInt64NotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64LT extends $pb.GeneratedMessage {
  factory UInt64LT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64LT._();

  factory UInt64LT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64LT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64LT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64LT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64LT copyWith(void Function(UInt64LT) updates) =>
      super.copyWith((message) => updates(message as UInt64LT)) as UInt64LT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64LT create() => UInt64LT._();
  @$core.override
  UInt64LT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64LT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UInt64LT>(create);
  static UInt64LT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64LTE extends $pb.GeneratedMessage {
  factory UInt64LTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64LTE._();

  factory UInt64LTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64LTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64LTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64LTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64LTE copyWith(void Function(UInt64LTE) updates) =>
      super.copyWith((message) => updates(message as UInt64LTE)) as UInt64LTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64LTE create() => UInt64LTE._();
  @$core.override
  UInt64LTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64LTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UInt64LTE>(create);
  static UInt64LTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64GT extends $pb.GeneratedMessage {
  factory UInt64GT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64GT._();

  factory UInt64GT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64GT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64GT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64GT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64GT copyWith(void Function(UInt64GT) updates) =>
      super.copyWith((message) => updates(message as UInt64GT)) as UInt64GT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64GT create() => UInt64GT._();
  @$core.override
  UInt64GT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64GT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UInt64GT>(create);
  static UInt64GT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64GTE extends $pb.GeneratedMessage {
  factory UInt64GTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64GTE._();

  factory UInt64GTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64GTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64GTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64GTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64GTE copyWith(void Function(UInt64GTE) updates) =>
      super.copyWith((message) => updates(message as UInt64GTE)) as UInt64GTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64GTE create() => UInt64GTE._();
  @$core.override
  UInt64GTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64GTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UInt64GTE>(create);
  static UInt64GTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64GTLT extends $pb.GeneratedMessage {
  factory UInt64GTLT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64GTLT._();

  factory UInt64GTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64GTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64GTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64GTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64GTLT copyWith(void Function(UInt64GTLT) updates) =>
      super.copyWith((message) => updates(message as UInt64GTLT)) as UInt64GTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64GTLT create() => UInt64GTLT._();
  @$core.override
  UInt64GTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64GTLT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt64GTLT>(create);
  static UInt64GTLT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64ExLTGT extends $pb.GeneratedMessage {
  factory UInt64ExLTGT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64ExLTGT._();

  factory UInt64ExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64ExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64ExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64ExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64ExLTGT copyWith(void Function(UInt64ExLTGT) updates) =>
      super.copyWith((message) => updates(message as UInt64ExLTGT))
          as UInt64ExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64ExLTGT create() => UInt64ExLTGT._();
  @$core.override
  UInt64ExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64ExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt64ExLTGT>(create);
  static UInt64ExLTGT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64GTELTE extends $pb.GeneratedMessage {
  factory UInt64GTELTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64GTELTE._();

  factory UInt64GTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64GTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64GTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64GTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64GTELTE copyWith(void Function(UInt64GTELTE) updates) =>
      super.copyWith((message) => updates(message as UInt64GTELTE))
          as UInt64GTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64GTELTE create() => UInt64GTELTE._();
  @$core.override
  UInt64GTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64GTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt64GTELTE>(create);
  static UInt64GTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64ExGTELTE extends $pb.GeneratedMessage {
  factory UInt64ExGTELTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64ExGTELTE._();

  factory UInt64ExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64ExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64ExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64ExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64ExGTELTE copyWith(void Function(UInt64ExGTELTE) updates) =>
      super.copyWith((message) => updates(message as UInt64ExGTELTE))
          as UInt64ExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64ExGTELTE create() => UInt64ExGTELTE._();
  @$core.override
  UInt64ExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64ExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt64ExGTELTE>(create);
  static UInt64ExGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64Ignore extends $pb.GeneratedMessage {
  factory UInt64Ignore({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64Ignore._();

  factory UInt64Ignore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64Ignore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64Ignore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64Ignore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64Ignore copyWith(void Function(UInt64Ignore) updates) =>
      super.copyWith((message) => updates(message as UInt64Ignore))
          as UInt64Ignore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64Ignore create() => UInt64Ignore._();
  @$core.override
  UInt64Ignore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64Ignore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt64Ignore>(create);
  static UInt64Ignore? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64IncorrectType extends $pb.GeneratedMessage {
  factory UInt64IncorrectType({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64IncorrectType._();

  factory UInt64IncorrectType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64IncorrectType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64IncorrectType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64IncorrectType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64IncorrectType copyWith(void Function(UInt64IncorrectType) updates) =>
      super.copyWith((message) => updates(message as UInt64IncorrectType))
          as UInt64IncorrectType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64IncorrectType create() => UInt64IncorrectType._();
  @$core.override
  UInt64IncorrectType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64IncorrectType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt64IncorrectType>(create);
  static UInt64IncorrectType? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class UInt64Example extends $pb.GeneratedMessage {
  factory UInt64Example({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  UInt64Example._();

  factory UInt64Example.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64Example.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64Example',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64Example clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64Example copyWith(void Function(UInt64Example) updates) =>
      super.copyWith((message) => updates(message as UInt64Example))
          as UInt64Example;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64Example create() => UInt64Example._();
  @$core.override
  UInt64Example createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64Example getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt64Example>(create);
  static UInt64Example? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32None extends $pb.GeneratedMessage {
  factory SInt32None({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32None._();

  factory SInt32None.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32None.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32None',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32None clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32None copyWith(void Function(SInt32None) updates) =>
      super.copyWith((message) => updates(message as SInt32None)) as SInt32None;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32None create() => SInt32None._();
  @$core.override
  SInt32None createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32None getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt32None>(create);
  static SInt32None? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32Const extends $pb.GeneratedMessage {
  factory SInt32Const({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32Const._();

  factory SInt32Const.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32Const.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32Const',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32Const clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32Const copyWith(void Function(SInt32Const) updates) =>
      super.copyWith((message) => updates(message as SInt32Const))
          as SInt32Const;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32Const create() => SInt32Const._();
  @$core.override
  SInt32Const createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32Const getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt32Const>(create);
  static SInt32Const? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32In extends $pb.GeneratedMessage {
  factory SInt32In({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32In._();

  factory SInt32In.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32In.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32In',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32In clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32In copyWith(void Function(SInt32In) updates) =>
      super.copyWith((message) => updates(message as SInt32In)) as SInt32In;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32In create() => SInt32In._();
  @$core.override
  SInt32In createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32In getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SInt32In>(create);
  static SInt32In? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32NotIn extends $pb.GeneratedMessage {
  factory SInt32NotIn({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32NotIn._();

  factory SInt32NotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32NotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32NotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32NotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32NotIn copyWith(void Function(SInt32NotIn) updates) =>
      super.copyWith((message) => updates(message as SInt32NotIn))
          as SInt32NotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32NotIn create() => SInt32NotIn._();
  @$core.override
  SInt32NotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32NotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt32NotIn>(create);
  static SInt32NotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32LT extends $pb.GeneratedMessage {
  factory SInt32LT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32LT._();

  factory SInt32LT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32LT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32LT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32LT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32LT copyWith(void Function(SInt32LT) updates) =>
      super.copyWith((message) => updates(message as SInt32LT)) as SInt32LT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32LT create() => SInt32LT._();
  @$core.override
  SInt32LT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32LT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SInt32LT>(create);
  static SInt32LT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32LTE extends $pb.GeneratedMessage {
  factory SInt32LTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32LTE._();

  factory SInt32LTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32LTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32LTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32LTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32LTE copyWith(void Function(SInt32LTE) updates) =>
      super.copyWith((message) => updates(message as SInt32LTE)) as SInt32LTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32LTE create() => SInt32LTE._();
  @$core.override
  SInt32LTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32LTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SInt32LTE>(create);
  static SInt32LTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32GT extends $pb.GeneratedMessage {
  factory SInt32GT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32GT._();

  factory SInt32GT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32GT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32GT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32GT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32GT copyWith(void Function(SInt32GT) updates) =>
      super.copyWith((message) => updates(message as SInt32GT)) as SInt32GT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32GT create() => SInt32GT._();
  @$core.override
  SInt32GT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32GT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SInt32GT>(create);
  static SInt32GT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32GTE extends $pb.GeneratedMessage {
  factory SInt32GTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32GTE._();

  factory SInt32GTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32GTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32GTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32GTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32GTE copyWith(void Function(SInt32GTE) updates) =>
      super.copyWith((message) => updates(message as SInt32GTE)) as SInt32GTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32GTE create() => SInt32GTE._();
  @$core.override
  SInt32GTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32GTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SInt32GTE>(create);
  static SInt32GTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32GTLT extends $pb.GeneratedMessage {
  factory SInt32GTLT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32GTLT._();

  factory SInt32GTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32GTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32GTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32GTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32GTLT copyWith(void Function(SInt32GTLT) updates) =>
      super.copyWith((message) => updates(message as SInt32GTLT)) as SInt32GTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32GTLT create() => SInt32GTLT._();
  @$core.override
  SInt32GTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32GTLT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt32GTLT>(create);
  static SInt32GTLT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32ExLTGT extends $pb.GeneratedMessage {
  factory SInt32ExLTGT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32ExLTGT._();

  factory SInt32ExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32ExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32ExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32ExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32ExLTGT copyWith(void Function(SInt32ExLTGT) updates) =>
      super.copyWith((message) => updates(message as SInt32ExLTGT))
          as SInt32ExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32ExLTGT create() => SInt32ExLTGT._();
  @$core.override
  SInt32ExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32ExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt32ExLTGT>(create);
  static SInt32ExLTGT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32GTELTE extends $pb.GeneratedMessage {
  factory SInt32GTELTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32GTELTE._();

  factory SInt32GTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32GTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32GTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32GTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32GTELTE copyWith(void Function(SInt32GTELTE) updates) =>
      super.copyWith((message) => updates(message as SInt32GTELTE))
          as SInt32GTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32GTELTE create() => SInt32GTELTE._();
  @$core.override
  SInt32GTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32GTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt32GTELTE>(create);
  static SInt32GTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32ExGTELTE extends $pb.GeneratedMessage {
  factory SInt32ExGTELTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32ExGTELTE._();

  factory SInt32ExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32ExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32ExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32ExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32ExGTELTE copyWith(void Function(SInt32ExGTELTE) updates) =>
      super.copyWith((message) => updates(message as SInt32ExGTELTE))
          as SInt32ExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32ExGTELTE create() => SInt32ExGTELTE._();
  @$core.override
  SInt32ExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32ExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt32ExGTELTE>(create);
  static SInt32ExGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32Ignore extends $pb.GeneratedMessage {
  factory SInt32Ignore({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32Ignore._();

  factory SInt32Ignore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32Ignore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32Ignore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32Ignore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32Ignore copyWith(void Function(SInt32Ignore) updates) =>
      super.copyWith((message) => updates(message as SInt32Ignore))
          as SInt32Ignore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32Ignore create() => SInt32Ignore._();
  @$core.override
  SInt32Ignore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32Ignore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt32Ignore>(create);
  static SInt32Ignore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32IncorrectType extends $pb.GeneratedMessage {
  factory SInt32IncorrectType({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32IncorrectType._();

  factory SInt32IncorrectType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32IncorrectType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32IncorrectType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32IncorrectType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32IncorrectType copyWith(void Function(SInt32IncorrectType) updates) =>
      super.copyWith((message) => updates(message as SInt32IncorrectType))
          as SInt32IncorrectType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32IncorrectType create() => SInt32IncorrectType._();
  @$core.override
  SInt32IncorrectType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32IncorrectType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt32IncorrectType>(create);
  static SInt32IncorrectType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt32Example extends $pb.GeneratedMessage {
  factory SInt32Example({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt32Example._();

  factory SInt32Example.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32Example.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32Example',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32Example clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32Example copyWith(void Function(SInt32Example) updates) =>
      super.copyWith((message) => updates(message as SInt32Example))
          as SInt32Example;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32Example create() => SInt32Example._();
  @$core.override
  SInt32Example createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32Example getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt32Example>(create);
  static SInt32Example? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64None extends $pb.GeneratedMessage {
  factory SInt64None({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64None._();

  factory SInt64None.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64None.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64None',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64None clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64None copyWith(void Function(SInt64None) updates) =>
      super.copyWith((message) => updates(message as SInt64None)) as SInt64None;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64None create() => SInt64None._();
  @$core.override
  SInt64None createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64None getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt64None>(create);
  static SInt64None? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64Const extends $pb.GeneratedMessage {
  factory SInt64Const({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64Const._();

  factory SInt64Const.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64Const.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64Const',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64Const clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64Const copyWith(void Function(SInt64Const) updates) =>
      super.copyWith((message) => updates(message as SInt64Const))
          as SInt64Const;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64Const create() => SInt64Const._();
  @$core.override
  SInt64Const createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64Const getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt64Const>(create);
  static SInt64Const? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64In extends $pb.GeneratedMessage {
  factory SInt64In({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64In._();

  factory SInt64In.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64In.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64In',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64In clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64In copyWith(void Function(SInt64In) updates) =>
      super.copyWith((message) => updates(message as SInt64In)) as SInt64In;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64In create() => SInt64In._();
  @$core.override
  SInt64In createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64In getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SInt64In>(create);
  static SInt64In? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64NotIn extends $pb.GeneratedMessage {
  factory SInt64NotIn({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64NotIn._();

  factory SInt64NotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64NotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64NotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64NotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64NotIn copyWith(void Function(SInt64NotIn) updates) =>
      super.copyWith((message) => updates(message as SInt64NotIn))
          as SInt64NotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64NotIn create() => SInt64NotIn._();
  @$core.override
  SInt64NotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64NotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt64NotIn>(create);
  static SInt64NotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64LT extends $pb.GeneratedMessage {
  factory SInt64LT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64LT._();

  factory SInt64LT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64LT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64LT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64LT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64LT copyWith(void Function(SInt64LT) updates) =>
      super.copyWith((message) => updates(message as SInt64LT)) as SInt64LT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64LT create() => SInt64LT._();
  @$core.override
  SInt64LT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64LT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SInt64LT>(create);
  static SInt64LT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64LTE extends $pb.GeneratedMessage {
  factory SInt64LTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64LTE._();

  factory SInt64LTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64LTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64LTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64LTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64LTE copyWith(void Function(SInt64LTE) updates) =>
      super.copyWith((message) => updates(message as SInt64LTE)) as SInt64LTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64LTE create() => SInt64LTE._();
  @$core.override
  SInt64LTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64LTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SInt64LTE>(create);
  static SInt64LTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64GT extends $pb.GeneratedMessage {
  factory SInt64GT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64GT._();

  factory SInt64GT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64GT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64GT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64GT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64GT copyWith(void Function(SInt64GT) updates) =>
      super.copyWith((message) => updates(message as SInt64GT)) as SInt64GT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64GT create() => SInt64GT._();
  @$core.override
  SInt64GT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64GT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SInt64GT>(create);
  static SInt64GT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64GTE extends $pb.GeneratedMessage {
  factory SInt64GTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64GTE._();

  factory SInt64GTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64GTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64GTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64GTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64GTE copyWith(void Function(SInt64GTE) updates) =>
      super.copyWith((message) => updates(message as SInt64GTE)) as SInt64GTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64GTE create() => SInt64GTE._();
  @$core.override
  SInt64GTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64GTE getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SInt64GTE>(create);
  static SInt64GTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64GTLT extends $pb.GeneratedMessage {
  factory SInt64GTLT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64GTLT._();

  factory SInt64GTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64GTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64GTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64GTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64GTLT copyWith(void Function(SInt64GTLT) updates) =>
      super.copyWith((message) => updates(message as SInt64GTLT)) as SInt64GTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64GTLT create() => SInt64GTLT._();
  @$core.override
  SInt64GTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64GTLT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt64GTLT>(create);
  static SInt64GTLT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64ExLTGT extends $pb.GeneratedMessage {
  factory SInt64ExLTGT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64ExLTGT._();

  factory SInt64ExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64ExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64ExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64ExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64ExLTGT copyWith(void Function(SInt64ExLTGT) updates) =>
      super.copyWith((message) => updates(message as SInt64ExLTGT))
          as SInt64ExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64ExLTGT create() => SInt64ExLTGT._();
  @$core.override
  SInt64ExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64ExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt64ExLTGT>(create);
  static SInt64ExLTGT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64GTELTE extends $pb.GeneratedMessage {
  factory SInt64GTELTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64GTELTE._();

  factory SInt64GTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64GTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64GTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64GTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64GTELTE copyWith(void Function(SInt64GTELTE) updates) =>
      super.copyWith((message) => updates(message as SInt64GTELTE))
          as SInt64GTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64GTELTE create() => SInt64GTELTE._();
  @$core.override
  SInt64GTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64GTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt64GTELTE>(create);
  static SInt64GTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64ExGTELTE extends $pb.GeneratedMessage {
  factory SInt64ExGTELTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64ExGTELTE._();

  factory SInt64ExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64ExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64ExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64ExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64ExGTELTE copyWith(void Function(SInt64ExGTELTE) updates) =>
      super.copyWith((message) => updates(message as SInt64ExGTELTE))
          as SInt64ExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64ExGTELTE create() => SInt64ExGTELTE._();
  @$core.override
  SInt64ExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64ExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt64ExGTELTE>(create);
  static SInt64ExGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64Ignore extends $pb.GeneratedMessage {
  factory SInt64Ignore({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64Ignore._();

  factory SInt64Ignore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64Ignore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64Ignore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64Ignore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64Ignore copyWith(void Function(SInt64Ignore) updates) =>
      super.copyWith((message) => updates(message as SInt64Ignore))
          as SInt64Ignore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64Ignore create() => SInt64Ignore._();
  @$core.override
  SInt64Ignore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64Ignore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt64Ignore>(create);
  static SInt64Ignore? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64IncorrectType extends $pb.GeneratedMessage {
  factory SInt64IncorrectType({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64IncorrectType._();

  factory SInt64IncorrectType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64IncorrectType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64IncorrectType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64IncorrectType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64IncorrectType copyWith(void Function(SInt64IncorrectType) updates) =>
      super.copyWith((message) => updates(message as SInt64IncorrectType))
          as SInt64IncorrectType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64IncorrectType create() => SInt64IncorrectType._();
  @$core.override
  SInt64IncorrectType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64IncorrectType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt64IncorrectType>(create);
  static SInt64IncorrectType? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SInt64Example extends $pb.GeneratedMessage {
  factory SInt64Example({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SInt64Example._();

  factory SInt64Example.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64Example.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64Example',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64Example clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64Example copyWith(void Function(SInt64Example) updates) =>
      super.copyWith((message) => updates(message as SInt64Example))
          as SInt64Example;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64Example create() => SInt64Example._();
  @$core.override
  SInt64Example createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64Example getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt64Example>(create);
  static SInt64Example? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32None extends $pb.GeneratedMessage {
  factory Fixed32None({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32None._();

  factory Fixed32None.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32None.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32None',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32None clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32None copyWith(void Function(Fixed32None) updates) =>
      super.copyWith((message) => updates(message as Fixed32None))
          as Fixed32None;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32None create() => Fixed32None._();
  @$core.override
  Fixed32None createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32None getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed32None>(create);
  static Fixed32None? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32Const extends $pb.GeneratedMessage {
  factory Fixed32Const({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32Const._();

  factory Fixed32Const.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32Const.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32Const',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32Const clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32Const copyWith(void Function(Fixed32Const) updates) =>
      super.copyWith((message) => updates(message as Fixed32Const))
          as Fixed32Const;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32Const create() => Fixed32Const._();
  @$core.override
  Fixed32Const createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32Const getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed32Const>(create);
  static Fixed32Const? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32In extends $pb.GeneratedMessage {
  factory Fixed32In({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32In._();

  factory Fixed32In.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32In.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32In',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32In clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32In copyWith(void Function(Fixed32In) updates) =>
      super.copyWith((message) => updates(message as Fixed32In)) as Fixed32In;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32In create() => Fixed32In._();
  @$core.override
  Fixed32In createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32In getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fixed32In>(create);
  static Fixed32In? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32NotIn extends $pb.GeneratedMessage {
  factory Fixed32NotIn({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32NotIn._();

  factory Fixed32NotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32NotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32NotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32NotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32NotIn copyWith(void Function(Fixed32NotIn) updates) =>
      super.copyWith((message) => updates(message as Fixed32NotIn))
          as Fixed32NotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32NotIn create() => Fixed32NotIn._();
  @$core.override
  Fixed32NotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32NotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed32NotIn>(create);
  static Fixed32NotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32LT extends $pb.GeneratedMessage {
  factory Fixed32LT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32LT._();

  factory Fixed32LT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32LT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32LT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32LT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32LT copyWith(void Function(Fixed32LT) updates) =>
      super.copyWith((message) => updates(message as Fixed32LT)) as Fixed32LT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32LT create() => Fixed32LT._();
  @$core.override
  Fixed32LT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32LT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fixed32LT>(create);
  static Fixed32LT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32LTE extends $pb.GeneratedMessage {
  factory Fixed32LTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32LTE._();

  factory Fixed32LTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32LTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32LTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32LTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32LTE copyWith(void Function(Fixed32LTE) updates) =>
      super.copyWith((message) => updates(message as Fixed32LTE)) as Fixed32LTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32LTE create() => Fixed32LTE._();
  @$core.override
  Fixed32LTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32LTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed32LTE>(create);
  static Fixed32LTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32GT extends $pb.GeneratedMessage {
  factory Fixed32GT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32GT._();

  factory Fixed32GT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32GT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32GT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32GT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32GT copyWith(void Function(Fixed32GT) updates) =>
      super.copyWith((message) => updates(message as Fixed32GT)) as Fixed32GT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32GT create() => Fixed32GT._();
  @$core.override
  Fixed32GT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32GT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fixed32GT>(create);
  static Fixed32GT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32GTE extends $pb.GeneratedMessage {
  factory Fixed32GTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32GTE._();

  factory Fixed32GTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32GTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32GTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32GTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32GTE copyWith(void Function(Fixed32GTE) updates) =>
      super.copyWith((message) => updates(message as Fixed32GTE)) as Fixed32GTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32GTE create() => Fixed32GTE._();
  @$core.override
  Fixed32GTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32GTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed32GTE>(create);
  static Fixed32GTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32GTLT extends $pb.GeneratedMessage {
  factory Fixed32GTLT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32GTLT._();

  factory Fixed32GTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32GTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32GTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32GTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32GTLT copyWith(void Function(Fixed32GTLT) updates) =>
      super.copyWith((message) => updates(message as Fixed32GTLT))
          as Fixed32GTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32GTLT create() => Fixed32GTLT._();
  @$core.override
  Fixed32GTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32GTLT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed32GTLT>(create);
  static Fixed32GTLT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32ExLTGT extends $pb.GeneratedMessage {
  factory Fixed32ExLTGT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32ExLTGT._();

  factory Fixed32ExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32ExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32ExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32ExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32ExLTGT copyWith(void Function(Fixed32ExLTGT) updates) =>
      super.copyWith((message) => updates(message as Fixed32ExLTGT))
          as Fixed32ExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32ExLTGT create() => Fixed32ExLTGT._();
  @$core.override
  Fixed32ExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32ExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed32ExLTGT>(create);
  static Fixed32ExLTGT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32GTELTE extends $pb.GeneratedMessage {
  factory Fixed32GTELTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32GTELTE._();

  factory Fixed32GTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32GTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32GTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32GTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32GTELTE copyWith(void Function(Fixed32GTELTE) updates) =>
      super.copyWith((message) => updates(message as Fixed32GTELTE))
          as Fixed32GTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32GTELTE create() => Fixed32GTELTE._();
  @$core.override
  Fixed32GTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32GTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed32GTELTE>(create);
  static Fixed32GTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32ExGTELTE extends $pb.GeneratedMessage {
  factory Fixed32ExGTELTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32ExGTELTE._();

  factory Fixed32ExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32ExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32ExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32ExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32ExGTELTE copyWith(void Function(Fixed32ExGTELTE) updates) =>
      super.copyWith((message) => updates(message as Fixed32ExGTELTE))
          as Fixed32ExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32ExGTELTE create() => Fixed32ExGTELTE._();
  @$core.override
  Fixed32ExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32ExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed32ExGTELTE>(create);
  static Fixed32ExGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32Ignore extends $pb.GeneratedMessage {
  factory Fixed32Ignore({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32Ignore._();

  factory Fixed32Ignore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32Ignore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32Ignore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32Ignore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32Ignore copyWith(void Function(Fixed32Ignore) updates) =>
      super.copyWith((message) => updates(message as Fixed32Ignore))
          as Fixed32Ignore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32Ignore create() => Fixed32Ignore._();
  @$core.override
  Fixed32Ignore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32Ignore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed32Ignore>(create);
  static Fixed32Ignore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32IncorrectType extends $pb.GeneratedMessage {
  factory Fixed32IncorrectType({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32IncorrectType._();

  factory Fixed32IncorrectType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32IncorrectType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32IncorrectType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32IncorrectType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32IncorrectType copyWith(void Function(Fixed32IncorrectType) updates) =>
      super.copyWith((message) => updates(message as Fixed32IncorrectType))
          as Fixed32IncorrectType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32IncorrectType create() => Fixed32IncorrectType._();
  @$core.override
  Fixed32IncorrectType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32IncorrectType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed32IncorrectType>(create);
  static Fixed32IncorrectType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed32Example extends $pb.GeneratedMessage {
  factory Fixed32Example({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed32Example._();

  factory Fixed32Example.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32Example.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32Example',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32Example clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32Example copyWith(void Function(Fixed32Example) updates) =>
      super.copyWith((message) => updates(message as Fixed32Example))
          as Fixed32Example;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32Example create() => Fixed32Example._();
  @$core.override
  Fixed32Example createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32Example getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed32Example>(create);
  static Fixed32Example? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64None extends $pb.GeneratedMessage {
  factory Fixed64None({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64None._();

  factory Fixed64None.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64None.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64None',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64None clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64None copyWith(void Function(Fixed64None) updates) =>
      super.copyWith((message) => updates(message as Fixed64None))
          as Fixed64None;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64None create() => Fixed64None._();
  @$core.override
  Fixed64None createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64None getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed64None>(create);
  static Fixed64None? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64Const extends $pb.GeneratedMessage {
  factory Fixed64Const({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64Const._();

  factory Fixed64Const.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64Const.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64Const',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64Const clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64Const copyWith(void Function(Fixed64Const) updates) =>
      super.copyWith((message) => updates(message as Fixed64Const))
          as Fixed64Const;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64Const create() => Fixed64Const._();
  @$core.override
  Fixed64Const createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64Const getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed64Const>(create);
  static Fixed64Const? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64In extends $pb.GeneratedMessage {
  factory Fixed64In({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64In._();

  factory Fixed64In.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64In.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64In',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64In clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64In copyWith(void Function(Fixed64In) updates) =>
      super.copyWith((message) => updates(message as Fixed64In)) as Fixed64In;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64In create() => Fixed64In._();
  @$core.override
  Fixed64In createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64In getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fixed64In>(create);
  static Fixed64In? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64NotIn extends $pb.GeneratedMessage {
  factory Fixed64NotIn({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64NotIn._();

  factory Fixed64NotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64NotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64NotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64NotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64NotIn copyWith(void Function(Fixed64NotIn) updates) =>
      super.copyWith((message) => updates(message as Fixed64NotIn))
          as Fixed64NotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64NotIn create() => Fixed64NotIn._();
  @$core.override
  Fixed64NotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64NotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed64NotIn>(create);
  static Fixed64NotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64LT extends $pb.GeneratedMessage {
  factory Fixed64LT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64LT._();

  factory Fixed64LT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64LT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64LT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64LT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64LT copyWith(void Function(Fixed64LT) updates) =>
      super.copyWith((message) => updates(message as Fixed64LT)) as Fixed64LT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64LT create() => Fixed64LT._();
  @$core.override
  Fixed64LT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64LT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fixed64LT>(create);
  static Fixed64LT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64LTE extends $pb.GeneratedMessage {
  factory Fixed64LTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64LTE._();

  factory Fixed64LTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64LTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64LTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64LTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64LTE copyWith(void Function(Fixed64LTE) updates) =>
      super.copyWith((message) => updates(message as Fixed64LTE)) as Fixed64LTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64LTE create() => Fixed64LTE._();
  @$core.override
  Fixed64LTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64LTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed64LTE>(create);
  static Fixed64LTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64GT extends $pb.GeneratedMessage {
  factory Fixed64GT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64GT._();

  factory Fixed64GT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64GT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64GT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64GT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64GT copyWith(void Function(Fixed64GT) updates) =>
      super.copyWith((message) => updates(message as Fixed64GT)) as Fixed64GT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64GT create() => Fixed64GT._();
  @$core.override
  Fixed64GT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64GT getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fixed64GT>(create);
  static Fixed64GT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64GTE extends $pb.GeneratedMessage {
  factory Fixed64GTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64GTE._();

  factory Fixed64GTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64GTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64GTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64GTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64GTE copyWith(void Function(Fixed64GTE) updates) =>
      super.copyWith((message) => updates(message as Fixed64GTE)) as Fixed64GTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64GTE create() => Fixed64GTE._();
  @$core.override
  Fixed64GTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64GTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed64GTE>(create);
  static Fixed64GTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64GTLT extends $pb.GeneratedMessage {
  factory Fixed64GTLT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64GTLT._();

  factory Fixed64GTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64GTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64GTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64GTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64GTLT copyWith(void Function(Fixed64GTLT) updates) =>
      super.copyWith((message) => updates(message as Fixed64GTLT))
          as Fixed64GTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64GTLT create() => Fixed64GTLT._();
  @$core.override
  Fixed64GTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64GTLT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed64GTLT>(create);
  static Fixed64GTLT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64ExLTGT extends $pb.GeneratedMessage {
  factory Fixed64ExLTGT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64ExLTGT._();

  factory Fixed64ExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64ExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64ExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64ExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64ExLTGT copyWith(void Function(Fixed64ExLTGT) updates) =>
      super.copyWith((message) => updates(message as Fixed64ExLTGT))
          as Fixed64ExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64ExLTGT create() => Fixed64ExLTGT._();
  @$core.override
  Fixed64ExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64ExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed64ExLTGT>(create);
  static Fixed64ExLTGT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64GTELTE extends $pb.GeneratedMessage {
  factory Fixed64GTELTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64GTELTE._();

  factory Fixed64GTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64GTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64GTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64GTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64GTELTE copyWith(void Function(Fixed64GTELTE) updates) =>
      super.copyWith((message) => updates(message as Fixed64GTELTE))
          as Fixed64GTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64GTELTE create() => Fixed64GTELTE._();
  @$core.override
  Fixed64GTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64GTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed64GTELTE>(create);
  static Fixed64GTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64ExGTELTE extends $pb.GeneratedMessage {
  factory Fixed64ExGTELTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64ExGTELTE._();

  factory Fixed64ExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64ExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64ExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64ExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64ExGTELTE copyWith(void Function(Fixed64ExGTELTE) updates) =>
      super.copyWith((message) => updates(message as Fixed64ExGTELTE))
          as Fixed64ExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64ExGTELTE create() => Fixed64ExGTELTE._();
  @$core.override
  Fixed64ExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64ExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed64ExGTELTE>(create);
  static Fixed64ExGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64Ignore extends $pb.GeneratedMessage {
  factory Fixed64Ignore({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64Ignore._();

  factory Fixed64Ignore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64Ignore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64Ignore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64Ignore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64Ignore copyWith(void Function(Fixed64Ignore) updates) =>
      super.copyWith((message) => updates(message as Fixed64Ignore))
          as Fixed64Ignore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64Ignore create() => Fixed64Ignore._();
  @$core.override
  Fixed64Ignore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64Ignore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed64Ignore>(create);
  static Fixed64Ignore? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64IncorrectType extends $pb.GeneratedMessage {
  factory Fixed64IncorrectType({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64IncorrectType._();

  factory Fixed64IncorrectType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64IncorrectType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64IncorrectType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64IncorrectType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64IncorrectType copyWith(void Function(Fixed64IncorrectType) updates) =>
      super.copyWith((message) => updates(message as Fixed64IncorrectType))
          as Fixed64IncorrectType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64IncorrectType create() => Fixed64IncorrectType._();
  @$core.override
  Fixed64IncorrectType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64IncorrectType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed64IncorrectType>(create);
  static Fixed64IncorrectType? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Fixed64Example extends $pb.GeneratedMessage {
  factory Fixed64Example({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Fixed64Example._();

  factory Fixed64Example.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64Example.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64Example',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64Example clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64Example copyWith(void Function(Fixed64Example) updates) =>
      super.copyWith((message) => updates(message as Fixed64Example))
          as Fixed64Example;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64Example create() => Fixed64Example._();
  @$core.override
  Fixed64Example createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64Example getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed64Example>(create);
  static Fixed64Example? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32None extends $pb.GeneratedMessage {
  factory SFixed32None({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32None._();

  factory SFixed32None.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32None.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32None',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32None clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32None copyWith(void Function(SFixed32None) updates) =>
      super.copyWith((message) => updates(message as SFixed32None))
          as SFixed32None;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32None create() => SFixed32None._();
  @$core.override
  SFixed32None createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32None getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32None>(create);
  static SFixed32None? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32Const extends $pb.GeneratedMessage {
  factory SFixed32Const({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32Const._();

  factory SFixed32Const.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32Const.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32Const',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32Const clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32Const copyWith(void Function(SFixed32Const) updates) =>
      super.copyWith((message) => updates(message as SFixed32Const))
          as SFixed32Const;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32Const create() => SFixed32Const._();
  @$core.override
  SFixed32Const createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32Const getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32Const>(create);
  static SFixed32Const? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32In extends $pb.GeneratedMessage {
  factory SFixed32In({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32In._();

  factory SFixed32In.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32In.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32In',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32In clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32In copyWith(void Function(SFixed32In) updates) =>
      super.copyWith((message) => updates(message as SFixed32In)) as SFixed32In;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32In create() => SFixed32In._();
  @$core.override
  SFixed32In createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32In getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32In>(create);
  static SFixed32In? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32NotIn extends $pb.GeneratedMessage {
  factory SFixed32NotIn({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32NotIn._();

  factory SFixed32NotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32NotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32NotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32NotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32NotIn copyWith(void Function(SFixed32NotIn) updates) =>
      super.copyWith((message) => updates(message as SFixed32NotIn))
          as SFixed32NotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32NotIn create() => SFixed32NotIn._();
  @$core.override
  SFixed32NotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32NotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32NotIn>(create);
  static SFixed32NotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32LT extends $pb.GeneratedMessage {
  factory SFixed32LT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32LT._();

  factory SFixed32LT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32LT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32LT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32LT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32LT copyWith(void Function(SFixed32LT) updates) =>
      super.copyWith((message) => updates(message as SFixed32LT)) as SFixed32LT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32LT create() => SFixed32LT._();
  @$core.override
  SFixed32LT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32LT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32LT>(create);
  static SFixed32LT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32LTE extends $pb.GeneratedMessage {
  factory SFixed32LTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32LTE._();

  factory SFixed32LTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32LTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32LTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32LTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32LTE copyWith(void Function(SFixed32LTE) updates) =>
      super.copyWith((message) => updates(message as SFixed32LTE))
          as SFixed32LTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32LTE create() => SFixed32LTE._();
  @$core.override
  SFixed32LTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32LTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32LTE>(create);
  static SFixed32LTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32GT extends $pb.GeneratedMessage {
  factory SFixed32GT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32GT._();

  factory SFixed32GT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32GT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32GT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32GT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32GT copyWith(void Function(SFixed32GT) updates) =>
      super.copyWith((message) => updates(message as SFixed32GT)) as SFixed32GT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32GT create() => SFixed32GT._();
  @$core.override
  SFixed32GT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32GT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32GT>(create);
  static SFixed32GT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32GTE extends $pb.GeneratedMessage {
  factory SFixed32GTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32GTE._();

  factory SFixed32GTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32GTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32GTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32GTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32GTE copyWith(void Function(SFixed32GTE) updates) =>
      super.copyWith((message) => updates(message as SFixed32GTE))
          as SFixed32GTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32GTE create() => SFixed32GTE._();
  @$core.override
  SFixed32GTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32GTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32GTE>(create);
  static SFixed32GTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32GTLT extends $pb.GeneratedMessage {
  factory SFixed32GTLT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32GTLT._();

  factory SFixed32GTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32GTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32GTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32GTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32GTLT copyWith(void Function(SFixed32GTLT) updates) =>
      super.copyWith((message) => updates(message as SFixed32GTLT))
          as SFixed32GTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32GTLT create() => SFixed32GTLT._();
  @$core.override
  SFixed32GTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32GTLT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32GTLT>(create);
  static SFixed32GTLT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32ExLTGT extends $pb.GeneratedMessage {
  factory SFixed32ExLTGT({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32ExLTGT._();

  factory SFixed32ExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32ExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32ExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32ExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32ExLTGT copyWith(void Function(SFixed32ExLTGT) updates) =>
      super.copyWith((message) => updates(message as SFixed32ExLTGT))
          as SFixed32ExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32ExLTGT create() => SFixed32ExLTGT._();
  @$core.override
  SFixed32ExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32ExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32ExLTGT>(create);
  static SFixed32ExLTGT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32GTELTE extends $pb.GeneratedMessage {
  factory SFixed32GTELTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32GTELTE._();

  factory SFixed32GTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32GTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32GTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32GTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32GTELTE copyWith(void Function(SFixed32GTELTE) updates) =>
      super.copyWith((message) => updates(message as SFixed32GTELTE))
          as SFixed32GTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32GTELTE create() => SFixed32GTELTE._();
  @$core.override
  SFixed32GTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32GTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32GTELTE>(create);
  static SFixed32GTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32ExGTELTE extends $pb.GeneratedMessage {
  factory SFixed32ExGTELTE({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32ExGTELTE._();

  factory SFixed32ExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32ExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32ExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32ExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32ExGTELTE copyWith(void Function(SFixed32ExGTELTE) updates) =>
      super.copyWith((message) => updates(message as SFixed32ExGTELTE))
          as SFixed32ExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32ExGTELTE create() => SFixed32ExGTELTE._();
  @$core.override
  SFixed32ExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32ExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32ExGTELTE>(create);
  static SFixed32ExGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32Ignore extends $pb.GeneratedMessage {
  factory SFixed32Ignore({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32Ignore._();

  factory SFixed32Ignore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32Ignore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32Ignore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32Ignore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32Ignore copyWith(void Function(SFixed32Ignore) updates) =>
      super.copyWith((message) => updates(message as SFixed32Ignore))
          as SFixed32Ignore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32Ignore create() => SFixed32Ignore._();
  @$core.override
  SFixed32Ignore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32Ignore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32Ignore>(create);
  static SFixed32Ignore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32IncorrectType extends $pb.GeneratedMessage {
  factory SFixed32IncorrectType({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32IncorrectType._();

  factory SFixed32IncorrectType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32IncorrectType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32IncorrectType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32IncorrectType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32IncorrectType copyWith(
          void Function(SFixed32IncorrectType) updates) =>
      super.copyWith((message) => updates(message as SFixed32IncorrectType))
          as SFixed32IncorrectType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32IncorrectType create() => SFixed32IncorrectType._();
  @$core.override
  SFixed32IncorrectType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32IncorrectType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32IncorrectType>(create);
  static SFixed32IncorrectType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed32Example extends $pb.GeneratedMessage {
  factory SFixed32Example({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed32Example._();

  factory SFixed32Example.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32Example.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32Example',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32Example clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32Example copyWith(void Function(SFixed32Example) updates) =>
      super.copyWith((message) => updates(message as SFixed32Example))
          as SFixed32Example;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32Example create() => SFixed32Example._();
  @$core.override
  SFixed32Example createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32Example getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32Example>(create);
  static SFixed32Example? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64None extends $pb.GeneratedMessage {
  factory SFixed64None({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64None._();

  factory SFixed64None.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64None.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64None',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64None clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64None copyWith(void Function(SFixed64None) updates) =>
      super.copyWith((message) => updates(message as SFixed64None))
          as SFixed64None;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64None create() => SFixed64None._();
  @$core.override
  SFixed64None createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64None getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64None>(create);
  static SFixed64None? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64Const extends $pb.GeneratedMessage {
  factory SFixed64Const({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64Const._();

  factory SFixed64Const.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64Const.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64Const',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64Const clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64Const copyWith(void Function(SFixed64Const) updates) =>
      super.copyWith((message) => updates(message as SFixed64Const))
          as SFixed64Const;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64Const create() => SFixed64Const._();
  @$core.override
  SFixed64Const createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64Const getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64Const>(create);
  static SFixed64Const? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64In extends $pb.GeneratedMessage {
  factory SFixed64In({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64In._();

  factory SFixed64In.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64In.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64In',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64In clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64In copyWith(void Function(SFixed64In) updates) =>
      super.copyWith((message) => updates(message as SFixed64In)) as SFixed64In;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64In create() => SFixed64In._();
  @$core.override
  SFixed64In createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64In getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64In>(create);
  static SFixed64In? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64NotIn extends $pb.GeneratedMessage {
  factory SFixed64NotIn({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64NotIn._();

  factory SFixed64NotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64NotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64NotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64NotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64NotIn copyWith(void Function(SFixed64NotIn) updates) =>
      super.copyWith((message) => updates(message as SFixed64NotIn))
          as SFixed64NotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64NotIn create() => SFixed64NotIn._();
  @$core.override
  SFixed64NotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64NotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64NotIn>(create);
  static SFixed64NotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64LT extends $pb.GeneratedMessage {
  factory SFixed64LT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64LT._();

  factory SFixed64LT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64LT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64LT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64LT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64LT copyWith(void Function(SFixed64LT) updates) =>
      super.copyWith((message) => updates(message as SFixed64LT)) as SFixed64LT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64LT create() => SFixed64LT._();
  @$core.override
  SFixed64LT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64LT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64LT>(create);
  static SFixed64LT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64LTE extends $pb.GeneratedMessage {
  factory SFixed64LTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64LTE._();

  factory SFixed64LTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64LTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64LTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64LTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64LTE copyWith(void Function(SFixed64LTE) updates) =>
      super.copyWith((message) => updates(message as SFixed64LTE))
          as SFixed64LTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64LTE create() => SFixed64LTE._();
  @$core.override
  SFixed64LTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64LTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64LTE>(create);
  static SFixed64LTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64GT extends $pb.GeneratedMessage {
  factory SFixed64GT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64GT._();

  factory SFixed64GT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64GT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64GT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64GT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64GT copyWith(void Function(SFixed64GT) updates) =>
      super.copyWith((message) => updates(message as SFixed64GT)) as SFixed64GT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64GT create() => SFixed64GT._();
  @$core.override
  SFixed64GT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64GT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64GT>(create);
  static SFixed64GT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64GTE extends $pb.GeneratedMessage {
  factory SFixed64GTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64GTE._();

  factory SFixed64GTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64GTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64GTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64GTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64GTE copyWith(void Function(SFixed64GTE) updates) =>
      super.copyWith((message) => updates(message as SFixed64GTE))
          as SFixed64GTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64GTE create() => SFixed64GTE._();
  @$core.override
  SFixed64GTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64GTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64GTE>(create);
  static SFixed64GTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64GTLT extends $pb.GeneratedMessage {
  factory SFixed64GTLT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64GTLT._();

  factory SFixed64GTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64GTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64GTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64GTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64GTLT copyWith(void Function(SFixed64GTLT) updates) =>
      super.copyWith((message) => updates(message as SFixed64GTLT))
          as SFixed64GTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64GTLT create() => SFixed64GTLT._();
  @$core.override
  SFixed64GTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64GTLT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64GTLT>(create);
  static SFixed64GTLT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64ExLTGT extends $pb.GeneratedMessage {
  factory SFixed64ExLTGT({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64ExLTGT._();

  factory SFixed64ExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64ExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64ExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64ExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64ExLTGT copyWith(void Function(SFixed64ExLTGT) updates) =>
      super.copyWith((message) => updates(message as SFixed64ExLTGT))
          as SFixed64ExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64ExLTGT create() => SFixed64ExLTGT._();
  @$core.override
  SFixed64ExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64ExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64ExLTGT>(create);
  static SFixed64ExLTGT? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64GTELTE extends $pb.GeneratedMessage {
  factory SFixed64GTELTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64GTELTE._();

  factory SFixed64GTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64GTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64GTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64GTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64GTELTE copyWith(void Function(SFixed64GTELTE) updates) =>
      super.copyWith((message) => updates(message as SFixed64GTELTE))
          as SFixed64GTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64GTELTE create() => SFixed64GTELTE._();
  @$core.override
  SFixed64GTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64GTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64GTELTE>(create);
  static SFixed64GTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64ExGTELTE extends $pb.GeneratedMessage {
  factory SFixed64ExGTELTE({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64ExGTELTE._();

  factory SFixed64ExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64ExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64ExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64ExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64ExGTELTE copyWith(void Function(SFixed64ExGTELTE) updates) =>
      super.copyWith((message) => updates(message as SFixed64ExGTELTE))
          as SFixed64ExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64ExGTELTE create() => SFixed64ExGTELTE._();
  @$core.override
  SFixed64ExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64ExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64ExGTELTE>(create);
  static SFixed64ExGTELTE? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64Ignore extends $pb.GeneratedMessage {
  factory SFixed64Ignore({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64Ignore._();

  factory SFixed64Ignore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64Ignore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64Ignore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64Ignore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64Ignore copyWith(void Function(SFixed64Ignore) updates) =>
      super.copyWith((message) => updates(message as SFixed64Ignore))
          as SFixed64Ignore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64Ignore create() => SFixed64Ignore._();
  @$core.override
  SFixed64Ignore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64Ignore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64Ignore>(create);
  static SFixed64Ignore? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64IncorrectType extends $pb.GeneratedMessage {
  factory SFixed64IncorrectType({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64IncorrectType._();

  factory SFixed64IncorrectType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64IncorrectType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64IncorrectType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64IncorrectType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64IncorrectType copyWith(
          void Function(SFixed64IncorrectType) updates) =>
      super.copyWith((message) => updates(message as SFixed64IncorrectType))
          as SFixed64IncorrectType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64IncorrectType create() => SFixed64IncorrectType._();
  @$core.override
  SFixed64IncorrectType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64IncorrectType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64IncorrectType>(create);
  static SFixed64IncorrectType? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class SFixed64Example extends $pb.GeneratedMessage {
  factory SFixed64Example({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  SFixed64Example._();

  factory SFixed64Example.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64Example.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64Example',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64Example clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64Example copyWith(void Function(SFixed64Example) updates) =>
      super.copyWith((message) => updates(message as SFixed64Example))
          as SFixed64Example;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64Example create() => SFixed64Example._();
  @$core.override
  SFixed64Example createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64Example getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64Example>(create);
  static SFixed64Example? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Int64LTEOptional extends $pb.GeneratedMessage {
  factory Int64LTEOptional({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Int64LTEOptional._();

  factory Int64LTEOptional.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64LTEOptional.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64LTEOptional',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64LTEOptional clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64LTEOptional copyWith(void Function(Int64LTEOptional) updates) =>
      super.copyWith((message) => updates(message as Int64LTEOptional))
          as Int64LTEOptional;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64LTEOptional create() => Int64LTEOptional._();
  @$core.override
  Int64LTEOptional createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64LTEOptional getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int64LTEOptional>(create);
  static Int64LTEOptional? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
