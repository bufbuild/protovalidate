// Copyright 2023-2025 Buf Technologies, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.36.6
// 	protoc        (unknown)
// source: buf/validate/conformance/harness/results.proto

package harness

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	descriptorpb "google.golang.org/protobuf/types/descriptorpb"
	anypb "google.golang.org/protobuf/types/known/anypb"
	reflect "reflect"
	sync "sync"
	unsafe "unsafe"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// ResultOptions are the options passed to the test runner to configure the
// test run.
type ResultOptions struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// The suite filter is a regex that matches against the suite name.
	SuiteFilter string `protobuf:"bytes,1,opt,name=suite_filter,json=suiteFilter,proto3" json:"suite_filter,omitempty"`
	// The case filter is a regex that matches against the case name.
	CaseFilter string `protobuf:"bytes,2,opt,name=case_filter,json=caseFilter,proto3" json:"case_filter,omitempty"`
	// If the test runner should print verbose output.
	Verbose bool `protobuf:"varint,3,opt,name=verbose,proto3" json:"verbose,omitempty"`
	// If the violation message must be an exact match.
	StrictMessage bool `protobuf:"varint,5,opt,name=strict_message,json=strictMessage,proto3" json:"strict_message,omitempty"`
	// If the distinction between runtime and compile time errors must be exact.
	StrictError   bool `protobuf:"varint,6,opt,name=strict_error,json=strictError,proto3" json:"strict_error,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *ResultOptions) Reset() {
	*x = ResultOptions{}
	mi := &file_buf_validate_conformance_harness_results_proto_msgTypes[0]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *ResultOptions) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ResultOptions) ProtoMessage() {}

func (x *ResultOptions) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_harness_results_proto_msgTypes[0]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ResultOptions.ProtoReflect.Descriptor instead.
func (*ResultOptions) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_harness_results_proto_rawDescGZIP(), []int{0}
}

func (x *ResultOptions) GetSuiteFilter() string {
	if x != nil {
		return x.SuiteFilter
	}
	return ""
}

func (x *ResultOptions) GetCaseFilter() string {
	if x != nil {
		return x.CaseFilter
	}
	return ""
}

func (x *ResultOptions) GetVerbose() bool {
	if x != nil {
		return x.Verbose
	}
	return false
}

func (x *ResultOptions) GetStrictMessage() bool {
	if x != nil {
		return x.StrictMessage
	}
	return false
}

func (x *ResultOptions) GetStrictError() bool {
	if x != nil {
		return x.StrictError
	}
	return false
}

// A result is the result of a test run.
type ResultSet struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// Count of successes.
	Successes int32 `protobuf:"varint,1,opt,name=successes,proto3" json:"successes,omitempty"`
	// Count of failures.
	Failures int32 `protobuf:"varint,2,opt,name=failures,proto3" json:"failures,omitempty"`
	// List of suite results.
	Suites []*SuiteResults `protobuf:"bytes,3,rep,name=suites,proto3" json:"suites,omitempty"`
	// Options used to generate this result.
	Options *ResultOptions `protobuf:"bytes,4,opt,name=options,proto3" json:"options,omitempty"`
	// Count of expected failures.
	ExpectedFailures int32 `protobuf:"varint,5,opt,name=expected_failures,json=expectedFailures,proto3" json:"expected_failures,omitempty"`
	unknownFields    protoimpl.UnknownFields
	sizeCache        protoimpl.SizeCache
}

func (x *ResultSet) Reset() {
	*x = ResultSet{}
	mi := &file_buf_validate_conformance_harness_results_proto_msgTypes[1]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *ResultSet) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ResultSet) ProtoMessage() {}

func (x *ResultSet) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_harness_results_proto_msgTypes[1]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ResultSet.ProtoReflect.Descriptor instead.
func (*ResultSet) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_harness_results_proto_rawDescGZIP(), []int{1}
}

func (x *ResultSet) GetSuccesses() int32 {
	if x != nil {
		return x.Successes
	}
	return 0
}

func (x *ResultSet) GetFailures() int32 {
	if x != nil {
		return x.Failures
	}
	return 0
}

func (x *ResultSet) GetSuites() []*SuiteResults {
	if x != nil {
		return x.Suites
	}
	return nil
}

func (x *ResultSet) GetOptions() *ResultOptions {
	if x != nil {
		return x.Options
	}
	return nil
}

func (x *ResultSet) GetExpectedFailures() int32 {
	if x != nil {
		return x.ExpectedFailures
	}
	return 0
}

// A suite result is a single test suite result.
type SuiteResults struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// The suite name.
	Name string `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`
	// Count of successes.
	Successes int32 `protobuf:"varint,2,opt,name=successes,proto3" json:"successes,omitempty"`
	// Count of failures.
	Failures int32 `protobuf:"varint,3,opt,name=failures,proto3" json:"failures,omitempty"`
	// List of case results.
	Cases []*CaseResult `protobuf:"bytes,4,rep,name=cases,proto3" json:"cases,omitempty"`
	// The file descriptor set used to generate this result.
	Fdset *descriptorpb.FileDescriptorSet `protobuf:"bytes,5,opt,name=fdset,proto3" json:"fdset,omitempty"`
	// Count of expected failures.
	ExpectedFailures int32 `protobuf:"varint,6,opt,name=expected_failures,json=expectedFailures,proto3" json:"expected_failures,omitempty"`
	unknownFields    protoimpl.UnknownFields
	sizeCache        protoimpl.SizeCache
}

func (x *SuiteResults) Reset() {
	*x = SuiteResults{}
	mi := &file_buf_validate_conformance_harness_results_proto_msgTypes[2]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *SuiteResults) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SuiteResults) ProtoMessage() {}

func (x *SuiteResults) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_harness_results_proto_msgTypes[2]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SuiteResults.ProtoReflect.Descriptor instead.
func (*SuiteResults) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_harness_results_proto_rawDescGZIP(), []int{2}
}

func (x *SuiteResults) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *SuiteResults) GetSuccesses() int32 {
	if x != nil {
		return x.Successes
	}
	return 0
}

func (x *SuiteResults) GetFailures() int32 {
	if x != nil {
		return x.Failures
	}
	return 0
}

func (x *SuiteResults) GetCases() []*CaseResult {
	if x != nil {
		return x.Cases
	}
	return nil
}

func (x *SuiteResults) GetFdset() *descriptorpb.FileDescriptorSet {
	if x != nil {
		return x.Fdset
	}
	return nil
}

func (x *SuiteResults) GetExpectedFailures() int32 {
	if x != nil {
		return x.ExpectedFailures
	}
	return 0
}

// A case result is a single test case result.
type CaseResult struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// The case name.
	Name string `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`
	// Success state of the test case. True if the test case succeeded.
	Success bool `protobuf:"varint,2,opt,name=success,proto3" json:"success,omitempty"`
	// The expected result.
	Wanted *TestResult `protobuf:"bytes,3,opt,name=wanted,proto3" json:"wanted,omitempty"`
	// The actual result.
	Got *TestResult `protobuf:"bytes,4,opt,name=got,proto3" json:"got,omitempty"`
	// The input used to invoke the test case.
	Input *anypb.Any `protobuf:"bytes,5,opt,name=input,proto3" json:"input,omitempty"`
	// Denotes if the test is expected to fail. True, if the test case was expected to fail.
	ExpectedFailure bool `protobuf:"varint,6,opt,name=expected_failure,json=expectedFailure,proto3" json:"expected_failure,omitempty"`
	unknownFields   protoimpl.UnknownFields
	sizeCache       protoimpl.SizeCache
}

func (x *CaseResult) Reset() {
	*x = CaseResult{}
	mi := &file_buf_validate_conformance_harness_results_proto_msgTypes[3]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *CaseResult) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CaseResult) ProtoMessage() {}

func (x *CaseResult) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_harness_results_proto_msgTypes[3]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CaseResult.ProtoReflect.Descriptor instead.
func (*CaseResult) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_harness_results_proto_rawDescGZIP(), []int{3}
}

func (x *CaseResult) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *CaseResult) GetSuccess() bool {
	if x != nil {
		return x.Success
	}
	return false
}

func (x *CaseResult) GetWanted() *TestResult {
	if x != nil {
		return x.Wanted
	}
	return nil
}

func (x *CaseResult) GetGot() *TestResult {
	if x != nil {
		return x.Got
	}
	return nil
}

func (x *CaseResult) GetInput() *anypb.Any {
	if x != nil {
		return x.Input
	}
	return nil
}

func (x *CaseResult) GetExpectedFailure() bool {
	if x != nil {
		return x.ExpectedFailure
	}
	return false
}

var File_buf_validate_conformance_harness_results_proto protoreflect.FileDescriptor

const file_buf_validate_conformance_harness_results_proto_rawDesc = "" +
	"\n" +
	".buf/validate/conformance/harness/results.proto\x12 buf.validate.conformance.harness\x1a.buf/validate/conformance/harness/harness.proto\x1a\x19google/protobuf/any.proto\x1a google/protobuf/descriptor.proto\"\xc5\x01\n" +
	"\rResultOptions\x12!\n" +
	"\fsuite_filter\x18\x01 \x01(\tR\vsuiteFilter\x12\x1f\n" +
	"\vcase_filter\x18\x02 \x01(\tR\n" +
	"caseFilter\x12\x18\n" +
	"\averbose\x18\x03 \x01(\bR\averbose\x12%\n" +
	"\x0estrict_message\x18\x05 \x01(\bR\rstrictMessage\x12!\n" +
	"\fstrict_error\x18\x06 \x01(\bR\vstrictErrorJ\x04\b\x04\x10\x05R\x06strict\"\x85\x02\n" +
	"\tResultSet\x12\x1c\n" +
	"\tsuccesses\x18\x01 \x01(\x05R\tsuccesses\x12\x1a\n" +
	"\bfailures\x18\x02 \x01(\x05R\bfailures\x12F\n" +
	"\x06suites\x18\x03 \x03(\v2..buf.validate.conformance.harness.SuiteResultsR\x06suites\x12I\n" +
	"\aoptions\x18\x04 \x01(\v2/.buf.validate.conformance.harness.ResultOptionsR\aoptions\x12+\n" +
	"\x11expected_failures\x18\x05 \x01(\x05R\x10expectedFailures\"\x87\x02\n" +
	"\fSuiteResults\x12\x12\n" +
	"\x04name\x18\x01 \x01(\tR\x04name\x12\x1c\n" +
	"\tsuccesses\x18\x02 \x01(\x05R\tsuccesses\x12\x1a\n" +
	"\bfailures\x18\x03 \x01(\x05R\bfailures\x12B\n" +
	"\x05cases\x18\x04 \x03(\v2,.buf.validate.conformance.harness.CaseResultR\x05cases\x128\n" +
	"\x05fdset\x18\x05 \x01(\v2\".google.protobuf.FileDescriptorSetR\x05fdset\x12+\n" +
	"\x11expected_failures\x18\x06 \x01(\x05R\x10expectedFailures\"\x97\x02\n" +
	"\n" +
	"CaseResult\x12\x12\n" +
	"\x04name\x18\x01 \x01(\tR\x04name\x12\x18\n" +
	"\asuccess\x18\x02 \x01(\bR\asuccess\x12D\n" +
	"\x06wanted\x18\x03 \x01(\v2,.buf.validate.conformance.harness.TestResultR\x06wanted\x12>\n" +
	"\x03got\x18\x04 \x01(\v2,.buf.validate.conformance.harness.TestResultR\x03got\x12*\n" +
	"\x05input\x18\x05 \x01(\v2\x14.google.protobuf.AnyR\x05input\x12)\n" +
	"\x10expected_failure\x18\x06 \x01(\bR\x0fexpectedFailureB\xaf\x02\n" +
	"$com.buf.validate.conformance.harnessB\fResultsProtoP\x01ZUgithub.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/harness\xa2\x02\x04BVCH\xaa\x02 Buf.Validate.Conformance.Harness\xca\x02 Buf\\Validate\\Conformance\\Harness\xe2\x02,Buf\\Validate\\Conformance\\Harness\\GPBMetadata\xea\x02#Buf::Validate::Conformance::Harnessb\x06proto3"

var (
	file_buf_validate_conformance_harness_results_proto_rawDescOnce sync.Once
	file_buf_validate_conformance_harness_results_proto_rawDescData []byte
)

func file_buf_validate_conformance_harness_results_proto_rawDescGZIP() []byte {
	file_buf_validate_conformance_harness_results_proto_rawDescOnce.Do(func() {
		file_buf_validate_conformance_harness_results_proto_rawDescData = protoimpl.X.CompressGZIP(unsafe.Slice(unsafe.StringData(file_buf_validate_conformance_harness_results_proto_rawDesc), len(file_buf_validate_conformance_harness_results_proto_rawDesc)))
	})
	return file_buf_validate_conformance_harness_results_proto_rawDescData
}

var file_buf_validate_conformance_harness_results_proto_msgTypes = make([]protoimpl.MessageInfo, 4)
var file_buf_validate_conformance_harness_results_proto_goTypes = []any{
	(*ResultOptions)(nil),                  // 0: buf.validate.conformance.harness.ResultOptions
	(*ResultSet)(nil),                      // 1: buf.validate.conformance.harness.ResultSet
	(*SuiteResults)(nil),                   // 2: buf.validate.conformance.harness.SuiteResults
	(*CaseResult)(nil),                     // 3: buf.validate.conformance.harness.CaseResult
	(*descriptorpb.FileDescriptorSet)(nil), // 4: google.protobuf.FileDescriptorSet
	(*TestResult)(nil),                     // 5: buf.validate.conformance.harness.TestResult
	(*anypb.Any)(nil),                      // 6: google.protobuf.Any
}
var file_buf_validate_conformance_harness_results_proto_depIdxs = []int32{
	2, // 0: buf.validate.conformance.harness.ResultSet.suites:type_name -> buf.validate.conformance.harness.SuiteResults
	0, // 1: buf.validate.conformance.harness.ResultSet.options:type_name -> buf.validate.conformance.harness.ResultOptions
	3, // 2: buf.validate.conformance.harness.SuiteResults.cases:type_name -> buf.validate.conformance.harness.CaseResult
	4, // 3: buf.validate.conformance.harness.SuiteResults.fdset:type_name -> google.protobuf.FileDescriptorSet
	5, // 4: buf.validate.conformance.harness.CaseResult.wanted:type_name -> buf.validate.conformance.harness.TestResult
	5, // 5: buf.validate.conformance.harness.CaseResult.got:type_name -> buf.validate.conformance.harness.TestResult
	6, // 6: buf.validate.conformance.harness.CaseResult.input:type_name -> google.protobuf.Any
	7, // [7:7] is the sub-list for method output_type
	7, // [7:7] is the sub-list for method input_type
	7, // [7:7] is the sub-list for extension type_name
	7, // [7:7] is the sub-list for extension extendee
	0, // [0:7] is the sub-list for field type_name
}

func init() { file_buf_validate_conformance_harness_results_proto_init() }
func file_buf_validate_conformance_harness_results_proto_init() {
	if File_buf_validate_conformance_harness_results_proto != nil {
		return
	}
	file_buf_validate_conformance_harness_harness_proto_init()
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: unsafe.Slice(unsafe.StringData(file_buf_validate_conformance_harness_results_proto_rawDesc), len(file_buf_validate_conformance_harness_results_proto_rawDesc)),
			NumEnums:      0,
			NumMessages:   4,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_buf_validate_conformance_harness_results_proto_goTypes,
		DependencyIndexes: file_buf_validate_conformance_harness_results_proto_depIdxs,
		MessageInfos:      file_buf_validate_conformance_harness_results_proto_msgTypes,
	}.Build()
	File_buf_validate_conformance_harness_results_proto = out.File
	file_buf_validate_conformance_harness_results_proto_goTypes = nil
	file_buf_validate_conformance_harness_results_proto_depIdxs = nil
}
