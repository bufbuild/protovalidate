// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/harness/harness.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/any.pb.dart' as $1;
import '../../../../google/protobuf/descriptor.pb.dart' as $0;
import '../../validate.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// TestConformanceRequest is the request for Conformance Tests.
/// The FileDescriptorSet is the FileDescriptorSet to test against.
/// The cases map is a map of case name to the Any message that represents the case.
class TestConformanceRequest extends $pb.GeneratedMessage {
  factory TestConformanceRequest({
    $0.FileDescriptorSet? fdset,
    $core.Iterable<$core.MapEntry<$core.String, $1.Any>>? cases,
  }) {
    final result = create();
    if (fdset != null) result.fdset = fdset;
    if (cases != null) result.cases.addEntries(cases);
    return result;
  }

  TestConformanceRequest._();

  factory TestConformanceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TestConformanceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TestConformanceRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.harness'),
      createEmptyInstance: create)
    ..aOM<$0.FileDescriptorSet>(2, _omitFieldNames ? '' : 'fdset',
        subBuilder: $0.FileDescriptorSet.create)
    ..m<$core.String, $1.Any>(3, _omitFieldNames ? '' : 'cases',
        entryClassName: 'TestConformanceRequest.CasesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $1.Any.create,
        valueDefaultOrMaker: $1.Any.getDefault,
        packageName: const $pb.PackageName('buf.validate.conformance.harness'));

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestConformanceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestConformanceRequest copyWith(
          void Function(TestConformanceRequest) updates) =>
      super.copyWith((message) => updates(message as TestConformanceRequest))
          as TestConformanceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestConformanceRequest create() => TestConformanceRequest._();
  @$core.override
  TestConformanceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TestConformanceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TestConformanceRequest>(create);
  static TestConformanceRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $0.FileDescriptorSet get fdset => $_getN(0);
  @$pb.TagNumber(2)
  set fdset($0.FileDescriptorSet value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFdset() => $_has(0);
  @$pb.TagNumber(2)
  void clearFdset() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.FileDescriptorSet ensureFdset() => $_ensure(0);

  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $1.Any> get cases => $_getMap(1);
}

/// TestConformanceResponse is the response for Conformance Tests.
/// The results map is a map of case name to the TestResult.
class TestConformanceResponse extends $pb.GeneratedMessage {
  factory TestConformanceResponse({
    $core.Iterable<$core.MapEntry<$core.String, TestResult>>? results,
  }) {
    final result = create();
    if (results != null) result.results.addEntries(results);
    return result;
  }

  TestConformanceResponse._();

  factory TestConformanceResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TestConformanceResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TestConformanceResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.harness'),
      createEmptyInstance: create)
    ..m<$core.String, TestResult>(1, _omitFieldNames ? '' : 'results',
        entryClassName: 'TestConformanceResponse.ResultsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: TestResult.create,
        valueDefaultOrMaker: TestResult.getDefault,
        packageName: const $pb.PackageName('buf.validate.conformance.harness'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestConformanceResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestConformanceResponse copyWith(
          void Function(TestConformanceResponse) updates) =>
      super.copyWith((message) => updates(message as TestConformanceResponse))
          as TestConformanceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestConformanceResponse create() => TestConformanceResponse._();
  @$core.override
  TestConformanceResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TestConformanceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TestConformanceResponse>(create);
  static TestConformanceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, TestResult> get results => $_getMap(0);
}

enum TestResult_Result {
  success,
  validationError,
  compilationError,
  runtimeError,
  unexpectedError,
  notSet
}

/// TestResult is the result of a single test. Only one of the fields will be set.
class TestResult extends $pb.GeneratedMessage {
  factory TestResult({
    $core.bool? success,
    $2.Violations? validationError,
    $core.String? compilationError,
    $core.String? runtimeError,
    $core.String? unexpectedError,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (validationError != null) result.validationError = validationError;
    if (compilationError != null) result.compilationError = compilationError;
    if (runtimeError != null) result.runtimeError = runtimeError;
    if (unexpectedError != null) result.unexpectedError = unexpectedError;
    return result;
  }

  TestResult._();

  factory TestResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TestResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TestResult_Result> _TestResult_ResultByTag =
      {
    1: TestResult_Result.success,
    2: TestResult_Result.validationError,
    3: TestResult_Result.compilationError,
    4: TestResult_Result.runtimeError,
    5: TestResult_Result.unexpectedError,
    0: TestResult_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TestResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.harness'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOM<$2.Violations>(2, _omitFieldNames ? '' : 'validationError',
        subBuilder: $2.Violations.create)
    ..aOS(3, _omitFieldNames ? '' : 'compilationError')
    ..aOS(4, _omitFieldNames ? '' : 'runtimeError')
    ..aOS(5, _omitFieldNames ? '' : 'unexpectedError')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestResult copyWith(void Function(TestResult) updates) =>
      super.copyWith((message) => updates(message as TestResult)) as TestResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestResult create() => TestResult._();
  @$core.override
  TestResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TestResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TestResult>(create);
  static TestResult? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  TestResult_Result whichResult() => _TestResult_ResultByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearResult() => $_clearField($_whichOneof(0));

  /// success is true if the test succeeded.
  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  /// validation_error is the error if the test failed due to validation errors.
  @$pb.TagNumber(2)
  $2.Violations get validationError => $_getN(1);
  @$pb.TagNumber(2)
  set validationError($2.Violations value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasValidationError() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidationError() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.Violations ensureValidationError() => $_ensure(1);

  /// compilation_error is the error if the test failed due to compilation errors.
  @$pb.TagNumber(3)
  $core.String get compilationError => $_getSZ(2);
  @$pb.TagNumber(3)
  set compilationError($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCompilationError() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompilationError() => $_clearField(3);

  /// runtime_error is the error if the test failed due to runtime errors.
  @$pb.TagNumber(4)
  $core.String get runtimeError => $_getSZ(3);
  @$pb.TagNumber(4)
  set runtimeError($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRuntimeError() => $_has(3);
  @$pb.TagNumber(4)
  void clearRuntimeError() => $_clearField(4);

  /// unexpected_error is any other error that may have occurred.
  @$pb.TagNumber(5)
  $core.String get unexpectedError => $_getSZ(4);
  @$pb.TagNumber(5)
  set unexpectedError($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUnexpectedError() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnexpectedError() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
