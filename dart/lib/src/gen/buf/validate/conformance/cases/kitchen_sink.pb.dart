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

import '../../../../google/protobuf/any.pb.dart' as $3;
import '../../../../google/protobuf/duration.pb.dart' as $1;
import '../../../../google/protobuf/timestamp.pb.dart' as $2;
import '../../../../google/protobuf/wrappers.pb.dart' as $0;
import 'kitchen_sink.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'kitchen_sink.pbenum.dart';

enum ComplexTestMsg_O { x, y, notSet }

class ComplexTestMsg extends $pb.GeneratedMessage {
  factory ComplexTestMsg({
    $core.String? const_1,
    ComplexTestMsg? nested,
    $core.int? intConst,
    $core.bool? boolConst,
    $0.FloatValue? floatVal,
    $1.Duration? durVal,
    $2.Timestamp? tsVal,
    ComplexTestMsg? another,
    $core.double? floatConst,
    $core.double? doubleIn,
    ComplexTestEnum? enumConst,
    $3.Any? anyVal,
    $core.Iterable<$2.Timestamp>? repTsVal,
    $core.Iterable<$core.MapEntry<$core.int, $core.String>>? mapVal,
    $core.List<$core.int>? bytesVal,
    $core.String? x,
    $core.int? y,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (nested != null) result.nested = nested;
    if (intConst != null) result.intConst = intConst;
    if (boolConst != null) result.boolConst = boolConst;
    if (floatVal != null) result.floatVal = floatVal;
    if (durVal != null) result.durVal = durVal;
    if (tsVal != null) result.tsVal = tsVal;
    if (another != null) result.another = another;
    if (floatConst != null) result.floatConst = floatConst;
    if (doubleIn != null) result.doubleIn = doubleIn;
    if (enumConst != null) result.enumConst = enumConst;
    if (anyVal != null) result.anyVal = anyVal;
    if (repTsVal != null) result.repTsVal.addAll(repTsVal);
    if (mapVal != null) result.mapVal.addEntries(mapVal);
    if (bytesVal != null) result.bytesVal = bytesVal;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    return result;
  }

  ComplexTestMsg._();

  factory ComplexTestMsg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComplexTestMsg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ComplexTestMsg_O> _ComplexTestMsg_OByTag = {
    16: ComplexTestMsg_O.x,
    17: ComplexTestMsg_O.y,
    0: ComplexTestMsg_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComplexTestMsg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [16, 17])
    ..aOS(1, _omitFieldNames ? '' : 'const')
    ..aOM<ComplexTestMsg>(2, _omitFieldNames ? '' : 'nested',
        subBuilder: ComplexTestMsg.create)
    ..aI(3, _omitFieldNames ? '' : 'intConst')
    ..aOB(4, _omitFieldNames ? '' : 'boolConst')
    ..aOM<$0.FloatValue>(5, _omitFieldNames ? '' : 'floatVal',
        subBuilder: $0.FloatValue.create)
    ..aOM<$1.Duration>(6, _omitFieldNames ? '' : 'durVal',
        subBuilder: $1.Duration.create)
    ..aOM<$2.Timestamp>(7, _omitFieldNames ? '' : 'tsVal',
        subBuilder: $2.Timestamp.create)
    ..aOM<ComplexTestMsg>(8, _omitFieldNames ? '' : 'another',
        subBuilder: ComplexTestMsg.create)
    ..aD(9, _omitFieldNames ? '' : 'floatConst', fieldType: $pb.PbFieldType.OF)
    ..aD(10, _omitFieldNames ? '' : 'doubleIn')
    ..aE<ComplexTestEnum>(11, _omitFieldNames ? '' : 'enumConst',
        enumValues: ComplexTestEnum.values)
    ..aOM<$3.Any>(12, _omitFieldNames ? '' : 'anyVal',
        subBuilder: $3.Any.create)
    ..pPM<$2.Timestamp>(13, _omitFieldNames ? '' : 'repTsVal',
        subBuilder: $2.Timestamp.create)
    ..m<$core.int, $core.String>(14, _omitFieldNames ? '' : 'mapVal',
        entryClassName: 'ComplexTestMsg.MapValEntry',
        keyFieldType: $pb.PbFieldType.OS3,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..a<$core.List<$core.int>>(
        15, _omitFieldNames ? '' : 'bytesVal', $pb.PbFieldType.OY)
    ..aOS(16, _omitFieldNames ? '' : 'x')
    ..aI(17, _omitFieldNames ? '' : 'y')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComplexTestMsg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComplexTestMsg copyWith(void Function(ComplexTestMsg) updates) =>
      super.copyWith((message) => updates(message as ComplexTestMsg))
          as ComplexTestMsg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComplexTestMsg create() => ComplexTestMsg._();
  @$core.override
  ComplexTestMsg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ComplexTestMsg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComplexTestMsg>(create);
  static ComplexTestMsg? _defaultInstance;

  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  ComplexTestMsg_O whichO() => _ComplexTestMsg_OByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  void clearO() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get const_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set const_1($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  @$pb.TagNumber(2)
  ComplexTestMsg get nested => $_getN(1);
  @$pb.TagNumber(2)
  set nested(ComplexTestMsg value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNested() => $_has(1);
  @$pb.TagNumber(2)
  void clearNested() => $_clearField(2);
  @$pb.TagNumber(2)
  ComplexTestMsg ensureNested() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get intConst => $_getIZ(2);
  @$pb.TagNumber(3)
  set intConst($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIntConst() => $_has(2);
  @$pb.TagNumber(3)
  void clearIntConst() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get boolConst => $_getBF(3);
  @$pb.TagNumber(4)
  set boolConst($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBoolConst() => $_has(3);
  @$pb.TagNumber(4)
  void clearBoolConst() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.FloatValue get floatVal => $_getN(4);
  @$pb.TagNumber(5)
  set floatVal($0.FloatValue value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFloatVal() => $_has(4);
  @$pb.TagNumber(5)
  void clearFloatVal() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.FloatValue ensureFloatVal() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.Duration get durVal => $_getN(5);
  @$pb.TagNumber(6)
  set durVal($1.Duration value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasDurVal() => $_has(5);
  @$pb.TagNumber(6)
  void clearDurVal() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.Duration ensureDurVal() => $_ensure(5);

  @$pb.TagNumber(7)
  $2.Timestamp get tsVal => $_getN(6);
  @$pb.TagNumber(7)
  set tsVal($2.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasTsVal() => $_has(6);
  @$pb.TagNumber(7)
  void clearTsVal() => $_clearField(7);
  @$pb.TagNumber(7)
  $2.Timestamp ensureTsVal() => $_ensure(6);

  @$pb.TagNumber(8)
  ComplexTestMsg get another => $_getN(7);
  @$pb.TagNumber(8)
  set another(ComplexTestMsg value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAnother() => $_has(7);
  @$pb.TagNumber(8)
  void clearAnother() => $_clearField(8);
  @$pb.TagNumber(8)
  ComplexTestMsg ensureAnother() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.double get floatConst => $_getN(8);
  @$pb.TagNumber(9)
  set floatConst($core.double value) => $_setFloat(8, value);
  @$pb.TagNumber(9)
  $core.bool hasFloatConst() => $_has(8);
  @$pb.TagNumber(9)
  void clearFloatConst() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get doubleIn => $_getN(9);
  @$pb.TagNumber(10)
  set doubleIn($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(10)
  $core.bool hasDoubleIn() => $_has(9);
  @$pb.TagNumber(10)
  void clearDoubleIn() => $_clearField(10);

  @$pb.TagNumber(11)
  ComplexTestEnum get enumConst => $_getN(10);
  @$pb.TagNumber(11)
  set enumConst(ComplexTestEnum value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasEnumConst() => $_has(10);
  @$pb.TagNumber(11)
  void clearEnumConst() => $_clearField(11);

  @$pb.TagNumber(12)
  $3.Any get anyVal => $_getN(11);
  @$pb.TagNumber(12)
  set anyVal($3.Any value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAnyVal() => $_has(11);
  @$pb.TagNumber(12)
  void clearAnyVal() => $_clearField(12);
  @$pb.TagNumber(12)
  $3.Any ensureAnyVal() => $_ensure(11);

  @$pb.TagNumber(13)
  $pb.PbList<$2.Timestamp> get repTsVal => $_getList(12);

  @$pb.TagNumber(14)
  $pb.PbMap<$core.int, $core.String> get mapVal => $_getMap(13);

  @$pb.TagNumber(15)
  $core.List<$core.int> get bytesVal => $_getN(14);
  @$pb.TagNumber(15)
  set bytesVal($core.List<$core.int> value) => $_setBytes(14, value);
  @$pb.TagNumber(15)
  $core.bool hasBytesVal() => $_has(14);
  @$pb.TagNumber(15)
  void clearBytesVal() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get x => $_getSZ(15);
  @$pb.TagNumber(16)
  set x($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasX() => $_has(15);
  @$pb.TagNumber(16)
  void clearX() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get y => $_getIZ(16);
  @$pb.TagNumber(17)
  set y($core.int value) => $_setSignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasY() => $_has(16);
  @$pb.TagNumber(17)
  void clearY() => $_clearField(17);
}

class KitchenSinkMessage extends $pb.GeneratedMessage {
  factory KitchenSinkMessage({
    ComplexTestMsg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  KitchenSinkMessage._();

  factory KitchenSinkMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory KitchenSinkMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KitchenSinkMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<ComplexTestMsg>(1, _omitFieldNames ? '' : 'val',
        subBuilder: ComplexTestMsg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KitchenSinkMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KitchenSinkMessage copyWith(void Function(KitchenSinkMessage) updates) =>
      super.copyWith((message) => updates(message as KitchenSinkMessage))
          as KitchenSinkMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KitchenSinkMessage create() => KitchenSinkMessage._();
  @$core.override
  KitchenSinkMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static KitchenSinkMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KitchenSinkMessage>(create);
  static KitchenSinkMessage? _defaultInstance;

  @$pb.TagNumber(1)
  ComplexTestMsg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(ComplexTestMsg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  ComplexTestMsg ensureVal() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
