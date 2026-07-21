// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/maps.proto.

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

class MapNone extends $pb.GeneratedMessage {
  factory MapNone({
    $core.Iterable<$core.MapEntry<$core.int, $core.bool>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  MapNone._();

  factory MapNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.bool>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'MapNone.ValEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OB,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapNone copyWith(void Function(MapNone) updates) =>
      super.copyWith((message) => updates(message as MapNone)) as MapNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapNone create() => MapNone._();
  @$core.override
  MapNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapNone getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapNone>(create);
  static MapNone? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.bool> get val => $_getMap(0);
}

class MapMin extends $pb.GeneratedMessage {
  factory MapMin({
    $core.Iterable<$core.MapEntry<$core.int, $core.double>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  MapMin._();

  factory MapMin.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapMin.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapMin',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.double>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'MapMin.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OF,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapMin clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapMin copyWith(void Function(MapMin) updates) =>
      super.copyWith((message) => updates(message as MapMin)) as MapMin;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapMin create() => MapMin._();
  @$core.override
  MapMin createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapMin getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapMin>(create);
  static MapMin? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.double> get val => $_getMap(0);
}

class MapMax extends $pb.GeneratedMessage {
  factory MapMax({
    $core.Iterable<$core.MapEntry<$fixnum.Int64, $core.double>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  MapMax._();

  factory MapMax.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapMax.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapMax',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$fixnum.Int64, $core.double>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'MapMax.ValEntry',
        keyFieldType: $pb.PbFieldType.O6,
        valueFieldType: $pb.PbFieldType.OD,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapMax clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapMax copyWith(void Function(MapMax) updates) =>
      super.copyWith((message) => updates(message as MapMax)) as MapMax;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapMax create() => MapMax._();
  @$core.override
  MapMax createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapMax getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapMax>(create);
  static MapMax? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$fixnum.Int64, $core.double> get val => $_getMap(0);
}

class MapMinMax extends $pb.GeneratedMessage {
  factory MapMinMax({
    $core.Iterable<$core.MapEntry<$core.String, $core.bool>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  MapMinMax._();

  factory MapMinMax.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapMinMax.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapMinMax',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, $core.bool>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'MapMinMax.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OB,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapMinMax clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapMinMax copyWith(void Function(MapMinMax) updates) =>
      super.copyWith((message) => updates(message as MapMinMax)) as MapMinMax;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapMinMax create() => MapMinMax._();
  @$core.override
  MapMinMax createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapMinMax getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapMinMax>(create);
  static MapMinMax? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.bool> get val => $_getMap(0);
}

class MapExact extends $pb.GeneratedMessage {
  factory MapExact({
    $core.Iterable<$core.MapEntry<$fixnum.Int64, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  MapExact._();

  factory MapExact.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapExact.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapExact',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$fixnum.Int64, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'MapExact.ValEntry',
        keyFieldType: $pb.PbFieldType.OU6,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapExact clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapExact copyWith(void Function(MapExact) updates) =>
      super.copyWith((message) => updates(message as MapExact)) as MapExact;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapExact create() => MapExact._();
  @$core.override
  MapExact createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapExact getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapExact>(create);
  static MapExact? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$fixnum.Int64, $core.String> get val => $_getMap(0);
}

class MapKeys extends $pb.GeneratedMessage {
  factory MapKeys({
    $core.Iterable<$core.MapEntry<$fixnum.Int64, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  MapKeys._();

  factory MapKeys.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapKeys.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapKeys',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$fixnum.Int64, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'MapKeys.ValEntry',
        keyFieldType: $pb.PbFieldType.OS6,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapKeys clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapKeys copyWith(void Function(MapKeys) updates) =>
      super.copyWith((message) => updates(message as MapKeys)) as MapKeys;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapKeys create() => MapKeys._();
  @$core.override
  MapKeys createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapKeys getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapKeys>(create);
  static MapKeys? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$fixnum.Int64, $core.String> get val => $_getMap(0);
}

class MapValues extends $pb.GeneratedMessage {
  factory MapValues({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  MapValues._();

  factory MapValues.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapValues.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapValues',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'MapValues.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapValues clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapValues copyWith(void Function(MapValues) updates) =>
      super.copyWith((message) => updates(message as MapValues)) as MapValues;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapValues create() => MapValues._();
  @$core.override
  MapValues createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapValues getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapValues>(create);
  static MapValues? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get val => $_getMap(0);
}

class MapKeysPattern extends $pb.GeneratedMessage {
  factory MapKeysPattern({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  MapKeysPattern._();

  factory MapKeysPattern.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapKeysPattern.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapKeysPattern',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'MapKeysPattern.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapKeysPattern clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapKeysPattern copyWith(void Function(MapKeysPattern) updates) =>
      super.copyWith((message) => updates(message as MapKeysPattern))
          as MapKeysPattern;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapKeysPattern create() => MapKeysPattern._();
  @$core.override
  MapKeysPattern createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapKeysPattern getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MapKeysPattern>(create);
  static MapKeysPattern? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get val => $_getMap(0);
}

class MapValuesPattern extends $pb.GeneratedMessage {
  factory MapValuesPattern({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  MapValuesPattern._();

  factory MapValuesPattern.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapValuesPattern.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapValuesPattern',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'MapValuesPattern.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapValuesPattern clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapValuesPattern copyWith(void Function(MapValuesPattern) updates) =>
      super.copyWith((message) => updates(message as MapValuesPattern))
          as MapValuesPattern;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapValuesPattern create() => MapValuesPattern._();
  @$core.override
  MapValuesPattern createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapValuesPattern getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MapValuesPattern>(create);
  static MapValuesPattern? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get val => $_getMap(0);
}

class MapRecursive_Msg extends $pb.GeneratedMessage {
  factory MapRecursive_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  MapRecursive_Msg._();

  factory MapRecursive_Msg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapRecursive_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapRecursive.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapRecursive_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapRecursive_Msg copyWith(void Function(MapRecursive_Msg) updates) =>
      super.copyWith((message) => updates(message as MapRecursive_Msg))
          as MapRecursive_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapRecursive_Msg create() => MapRecursive_Msg._();
  @$core.override
  MapRecursive_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapRecursive_Msg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MapRecursive_Msg>(create);
  static MapRecursive_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class MapRecursive extends $pb.GeneratedMessage {
  factory MapRecursive({
    $core.Iterable<$core.MapEntry<$core.int, MapRecursive_Msg>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  MapRecursive._();

  factory MapRecursive.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapRecursive.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapRecursive',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, MapRecursive_Msg>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'MapRecursive.ValEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: MapRecursive_Msg.create,
        valueDefaultOrMaker: MapRecursive_Msg.getDefault,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapRecursive clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapRecursive copyWith(void Function(MapRecursive) updates) =>
      super.copyWith((message) => updates(message as MapRecursive))
          as MapRecursive;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapRecursive create() => MapRecursive._();
  @$core.override
  MapRecursive createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapRecursive getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MapRecursive>(create);
  static MapRecursive? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, MapRecursive_Msg> get val => $_getMap(0);
}

class MapExactIgnore extends $pb.GeneratedMessage {
  factory MapExactIgnore({
    $core.Iterable<$core.MapEntry<$fixnum.Int64, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  MapExactIgnore._();

  factory MapExactIgnore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapExactIgnore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapExactIgnore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$fixnum.Int64, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'MapExactIgnore.ValEntry',
        keyFieldType: $pb.PbFieldType.OU6,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapExactIgnore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapExactIgnore copyWith(void Function(MapExactIgnore) updates) =>
      super.copyWith((message) => updates(message as MapExactIgnore))
          as MapExactIgnore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapExactIgnore create() => MapExactIgnore._();
  @$core.override
  MapExactIgnore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapExactIgnore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MapExactIgnore>(create);
  static MapExactIgnore? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$fixnum.Int64, $core.String> get val => $_getMap(0);
}

class MultipleMaps extends $pb.GeneratedMessage {
  factory MultipleMaps({
    $core.Iterable<$core.MapEntry<$core.int, $core.String>>? first,
    $core.Iterable<$core.MapEntry<$core.int, $core.bool>>? second,
    $core.Iterable<$core.MapEntry<$core.int, $core.bool>>? third,
  }) {
    final result = create();
    if (first != null) result.first.addEntries(first);
    if (second != null) result.second.addEntries(second);
    if (third != null) result.third.addEntries(third);
    return result;
  }

  MultipleMaps._();

  factory MultipleMaps.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MultipleMaps.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MultipleMaps',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.String>(1, _omitFieldNames ? '' : 'first',
        entryClassName: 'MultipleMaps.FirstEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..m<$core.int, $core.bool>(2, _omitFieldNames ? '' : 'second',
        entryClassName: 'MultipleMaps.SecondEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OB,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..m<$core.int, $core.bool>(3, _omitFieldNames ? '' : 'third',
        entryClassName: 'MultipleMaps.ThirdEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OB,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultipleMaps clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultipleMaps copyWith(void Function(MultipleMaps) updates) =>
      super.copyWith((message) => updates(message as MultipleMaps))
          as MultipleMaps;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultipleMaps create() => MultipleMaps._();
  @$core.override
  MultipleMaps createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MultipleMaps getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MultipleMaps>(create);
  static MultipleMaps? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.String> get first => $_getMap(0);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.int, $core.bool> get second => $_getMap(1);

  @$pb.TagNumber(3)
  $pb.PbMap<$core.int, $core.bool> get third => $_getMap(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
