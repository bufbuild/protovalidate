// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/harness/results.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/any.pb.dart' as $2;
import '../../../../google/protobuf/descriptor.pb.dart' as $0;
import 'harness.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// ResultOptions are the options passed to the test runner to configure the
/// test run.
class ResultOptions extends $pb.GeneratedMessage {
  factory ResultOptions({
    $core.String? suiteFilter,
    $core.String? caseFilter,
    $core.bool? verbose,
    $core.bool? strictMessage,
    $core.bool? strictError,
  }) {
    final result = create();
    if (suiteFilter != null) result.suiteFilter = suiteFilter;
    if (caseFilter != null) result.caseFilter = caseFilter;
    if (verbose != null) result.verbose = verbose;
    if (strictMessage != null) result.strictMessage = strictMessage;
    if (strictError != null) result.strictError = strictError;
    return result;
  }

  ResultOptions._();

  factory ResultOptions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResultOptions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultOptions',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.harness'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'suiteFilter')
    ..aOS(2, _omitFieldNames ? '' : 'caseFilter')
    ..aOB(3, _omitFieldNames ? '' : 'verbose')
    ..aOB(5, _omitFieldNames ? '' : 'strictMessage')
    ..aOB(6, _omitFieldNames ? '' : 'strictError')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResultOptions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResultOptions copyWith(void Function(ResultOptions) updates) =>
      super.copyWith((message) => updates(message as ResultOptions))
          as ResultOptions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultOptions create() => ResultOptions._();
  @$core.override
  ResultOptions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResultOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultOptions>(create);
  static ResultOptions? _defaultInstance;

  /// The suite filter is a regex that matches against the suite name.
  @$pb.TagNumber(1)
  $core.String get suiteFilter => $_getSZ(0);
  @$pb.TagNumber(1)
  set suiteFilter($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuiteFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuiteFilter() => $_clearField(1);

  /// The case filter is a regex that matches against the case name.
  @$pb.TagNumber(2)
  $core.String get caseFilter => $_getSZ(1);
  @$pb.TagNumber(2)
  set caseFilter($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCaseFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearCaseFilter() => $_clearField(2);

  /// If the test runner should print verbose output.
  @$pb.TagNumber(3)
  $core.bool get verbose => $_getBF(2);
  @$pb.TagNumber(3)
  set verbose($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVerbose() => $_has(2);
  @$pb.TagNumber(3)
  void clearVerbose() => $_clearField(3);

  /// If the violation message must be an exact match.
  @$pb.TagNumber(5)
  $core.bool get strictMessage => $_getBF(3);
  @$pb.TagNumber(5)
  set strictMessage($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(5)
  $core.bool hasStrictMessage() => $_has(3);
  @$pb.TagNumber(5)
  void clearStrictMessage() => $_clearField(5);

  /// If the distinction between runtime and compile time errors must be exact.
  @$pb.TagNumber(6)
  $core.bool get strictError => $_getBF(4);
  @$pb.TagNumber(6)
  set strictError($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(6)
  $core.bool hasStrictError() => $_has(4);
  @$pb.TagNumber(6)
  void clearStrictError() => $_clearField(6);
}

/// A result is the result of a test run.
class ResultSet extends $pb.GeneratedMessage {
  factory ResultSet({
    $core.int? successes,
    $core.int? failures,
    $core.Iterable<SuiteResults>? suites,
    ResultOptions? options,
    $core.int? expectedFailures,
  }) {
    final result = create();
    if (successes != null) result.successes = successes;
    if (failures != null) result.failures = failures;
    if (suites != null) result.suites.addAll(suites);
    if (options != null) result.options = options;
    if (expectedFailures != null) result.expectedFailures = expectedFailures;
    return result;
  }

  ResultSet._();

  factory ResultSet.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResultSet.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultSet',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.harness'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'successes')
    ..aI(2, _omitFieldNames ? '' : 'failures')
    ..pPM<SuiteResults>(3, _omitFieldNames ? '' : 'suites',
        subBuilder: SuiteResults.create)
    ..aOM<ResultOptions>(4, _omitFieldNames ? '' : 'options',
        subBuilder: ResultOptions.create)
    ..aI(5, _omitFieldNames ? '' : 'expectedFailures');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResultSet clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResultSet copyWith(void Function(ResultSet) updates) =>
      super.copyWith((message) => updates(message as ResultSet)) as ResultSet;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultSet create() => ResultSet._();
  @$core.override
  ResultSet createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResultSet getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultSet>(create);
  static ResultSet? _defaultInstance;

  /// Count of successes.
  @$pb.TagNumber(1)
  $core.int get successes => $_getIZ(0);
  @$pb.TagNumber(1)
  set successes($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccesses() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccesses() => $_clearField(1);

  /// Count of failures.
  @$pb.TagNumber(2)
  $core.int get failures => $_getIZ(1);
  @$pb.TagNumber(2)
  set failures($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFailures() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailures() => $_clearField(2);

  /// List of suite results.
  @$pb.TagNumber(3)
  $pb.PbList<SuiteResults> get suites => $_getList(2);

  /// Options used to generate this result.
  @$pb.TagNumber(4)
  ResultOptions get options => $_getN(3);
  @$pb.TagNumber(4)
  set options(ResultOptions value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOptions() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptions() => $_clearField(4);
  @$pb.TagNumber(4)
  ResultOptions ensureOptions() => $_ensure(3);

  /// Count of expected failures.
  @$pb.TagNumber(5)
  $core.int get expectedFailures => $_getIZ(4);
  @$pb.TagNumber(5)
  set expectedFailures($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasExpectedFailures() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpectedFailures() => $_clearField(5);
}

/// A suite result is a single test suite result.
class SuiteResults extends $pb.GeneratedMessage {
  factory SuiteResults({
    $core.String? name,
    $core.int? successes,
    $core.int? failures,
    $core.Iterable<CaseResult>? cases,
    $0.FileDescriptorSet? fdset,
    $core.int? expectedFailures,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (successes != null) result.successes = successes;
    if (failures != null) result.failures = failures;
    if (cases != null) result.cases.addAll(cases);
    if (fdset != null) result.fdset = fdset;
    if (expectedFailures != null) result.expectedFailures = expectedFailures;
    return result;
  }

  SuiteResults._();

  factory SuiteResults.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SuiteResults.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SuiteResults',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.harness'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aI(2, _omitFieldNames ? '' : 'successes')
    ..aI(3, _omitFieldNames ? '' : 'failures')
    ..pPM<CaseResult>(4, _omitFieldNames ? '' : 'cases',
        subBuilder: CaseResult.create)
    ..aOM<$0.FileDescriptorSet>(5, _omitFieldNames ? '' : 'fdset',
        subBuilder: $0.FileDescriptorSet.create)
    ..aI(6, _omitFieldNames ? '' : 'expectedFailures');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SuiteResults clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SuiteResults copyWith(void Function(SuiteResults) updates) =>
      super.copyWith((message) => updates(message as SuiteResults))
          as SuiteResults;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SuiteResults create() => SuiteResults._();
  @$core.override
  SuiteResults createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SuiteResults getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SuiteResults>(create);
  static SuiteResults? _defaultInstance;

  /// The suite name.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Count of successes.
  @$pb.TagNumber(2)
  $core.int get successes => $_getIZ(1);
  @$pb.TagNumber(2)
  set successes($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSuccesses() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccesses() => $_clearField(2);

  /// Count of failures.
  @$pb.TagNumber(3)
  $core.int get failures => $_getIZ(2);
  @$pb.TagNumber(3)
  set failures($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFailures() => $_has(2);
  @$pb.TagNumber(3)
  void clearFailures() => $_clearField(3);

  /// List of case results.
  @$pb.TagNumber(4)
  $pb.PbList<CaseResult> get cases => $_getList(3);

  /// The file descriptor set used to generate this result.
  @$pb.TagNumber(5)
  $0.FileDescriptorSet get fdset => $_getN(4);
  @$pb.TagNumber(5)
  set fdset($0.FileDescriptorSet value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFdset() => $_has(4);
  @$pb.TagNumber(5)
  void clearFdset() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.FileDescriptorSet ensureFdset() => $_ensure(4);

  /// Count of expected failures.
  @$pb.TagNumber(6)
  $core.int get expectedFailures => $_getIZ(5);
  @$pb.TagNumber(6)
  set expectedFailures($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasExpectedFailures() => $_has(5);
  @$pb.TagNumber(6)
  void clearExpectedFailures() => $_clearField(6);
}

/// A case result is a single test case result.
class CaseResult extends $pb.GeneratedMessage {
  factory CaseResult({
    $core.String? name,
    $core.bool? success,
    $1.TestResult? wanted,
    $1.TestResult? got,
    $2.Any? input,
    $core.bool? expectedFailure,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (success != null) result.success = success;
    if (wanted != null) result.wanted = wanted;
    if (got != null) result.got = got;
    if (input != null) result.input = input;
    if (expectedFailure != null) result.expectedFailure = expectedFailure;
    return result;
  }

  CaseResult._();

  factory CaseResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CaseResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CaseResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.harness'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..aOM<$1.TestResult>(3, _omitFieldNames ? '' : 'wanted',
        subBuilder: $1.TestResult.create)
    ..aOM<$1.TestResult>(4, _omitFieldNames ? '' : 'got',
        subBuilder: $1.TestResult.create)
    ..aOM<$2.Any>(5, _omitFieldNames ? '' : 'input', subBuilder: $2.Any.create)
    ..aOB(6, _omitFieldNames ? '' : 'expectedFailure')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CaseResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CaseResult copyWith(void Function(CaseResult) updates) =>
      super.copyWith((message) => updates(message as CaseResult)) as CaseResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CaseResult create() => CaseResult._();
  @$core.override
  CaseResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CaseResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CaseResult>(create);
  static CaseResult? _defaultInstance;

  /// The case name.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Success state of the test case. True if the test case succeeded.
  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => $_clearField(2);

  /// The expected result.
  @$pb.TagNumber(3)
  $1.TestResult get wanted => $_getN(2);
  @$pb.TagNumber(3)
  set wanted($1.TestResult value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasWanted() => $_has(2);
  @$pb.TagNumber(3)
  void clearWanted() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.TestResult ensureWanted() => $_ensure(2);

  /// The actual result.
  @$pb.TagNumber(4)
  $1.TestResult get got => $_getN(3);
  @$pb.TagNumber(4)
  set got($1.TestResult value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasGot() => $_has(3);
  @$pb.TagNumber(4)
  void clearGot() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.TestResult ensureGot() => $_ensure(3);

  /// The input used to invoke the test case.
  @$pb.TagNumber(5)
  $2.Any get input => $_getN(4);
  @$pb.TagNumber(5)
  set input($2.Any value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasInput() => $_has(4);
  @$pb.TagNumber(5)
  void clearInput() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.Any ensureInput() => $_ensure(4);

  /// Denotes if the test is expected to fail. True, if the test case was expected to fail.
  @$pb.TagNumber(6)
  $core.bool get expectedFailure => $_getBF(5);
  @$pb.TagNumber(6)
  set expectedFailure($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasExpectedFailure() => $_has(5);
  @$pb.TagNumber(6)
  void clearExpectedFailure() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
