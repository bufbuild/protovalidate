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
// source: buf/validate/conformance/cases/wkt_any.proto

package cases

import (
	_ "github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
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

type AnyNone struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           *anypb.Any             `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *AnyNone) Reset() {
	*x = AnyNone{}
	mi := &file_buf_validate_conformance_cases_wkt_any_proto_msgTypes[0]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *AnyNone) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AnyNone) ProtoMessage() {}

func (x *AnyNone) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_wkt_any_proto_msgTypes[0]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AnyNone.ProtoReflect.Descriptor instead.
func (*AnyNone) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_wkt_any_proto_rawDescGZIP(), []int{0}
}

func (x *AnyNone) GetVal() *anypb.Any {
	if x != nil {
		return x.Val
	}
	return nil
}

type AnyRequired struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           *anypb.Any             `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *AnyRequired) Reset() {
	*x = AnyRequired{}
	mi := &file_buf_validate_conformance_cases_wkt_any_proto_msgTypes[1]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *AnyRequired) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AnyRequired) ProtoMessage() {}

func (x *AnyRequired) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_wkt_any_proto_msgTypes[1]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AnyRequired.ProtoReflect.Descriptor instead.
func (*AnyRequired) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_wkt_any_proto_rawDescGZIP(), []int{1}
}

func (x *AnyRequired) GetVal() *anypb.Any {
	if x != nil {
		return x.Val
	}
	return nil
}

type AnyIn struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           *anypb.Any             `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *AnyIn) Reset() {
	*x = AnyIn{}
	mi := &file_buf_validate_conformance_cases_wkt_any_proto_msgTypes[2]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *AnyIn) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AnyIn) ProtoMessage() {}

func (x *AnyIn) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_wkt_any_proto_msgTypes[2]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AnyIn.ProtoReflect.Descriptor instead.
func (*AnyIn) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_wkt_any_proto_rawDescGZIP(), []int{2}
}

func (x *AnyIn) GetVal() *anypb.Any {
	if x != nil {
		return x.Val
	}
	return nil
}

type AnyNotIn struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           *anypb.Any             `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *AnyNotIn) Reset() {
	*x = AnyNotIn{}
	mi := &file_buf_validate_conformance_cases_wkt_any_proto_msgTypes[3]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *AnyNotIn) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AnyNotIn) ProtoMessage() {}

func (x *AnyNotIn) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_wkt_any_proto_msgTypes[3]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AnyNotIn.ProtoReflect.Descriptor instead.
func (*AnyNotIn) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_wkt_any_proto_rawDescGZIP(), []int{3}
}

func (x *AnyNotIn) GetVal() *anypb.Any {
	if x != nil {
		return x.Val
	}
	return nil
}

var File_buf_validate_conformance_cases_wkt_any_proto protoreflect.FileDescriptor

const file_buf_validate_conformance_cases_wkt_any_proto_rawDesc = "" +
	"\n" +
	",buf/validate/conformance/cases/wkt_any.proto\x12\x1ebuf.validate.conformance.cases\x1a\x1bbuf/validate/validate.proto\x1a\x19google/protobuf/any.proto\"1\n" +
	"\aAnyNone\x12&\n" +
	"\x03val\x18\x01 \x01(\v2\x14.google.protobuf.AnyR\x03val\"=\n" +
	"\vAnyRequired\x12.\n" +
	"\x03val\x18\x01 \x01(\v2\x14.google.protobuf.AnyB\x06\xbaH\x03\xc8\x01\x01R\x03val\"e\n" +
	"\x05AnyIn\x12\\\n" +
	"\x03val\x18\x01 \x01(\v2\x14.google.protobuf.AnyB4\xbaH1\xa2\x01.\x12,type.googleapis.com/google.protobuf.DurationR\x03val\"i\n" +
	"\bAnyNotIn\x12]\n" +
	"\x03val\x18\x01 \x01(\v2\x14.google.protobuf.AnyB5\xbaH2\xa2\x01/\x1a-type.googleapis.com/google.protobuf.TimestampR\x03valB\xa2\x02\n" +
	"\"com.buf.validate.conformance.casesB\vWktAnyProtoP\x01ZSgithub.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases\xa2\x02\x04BVCC\xaa\x02\x1eBuf.Validate.Conformance.Cases\xca\x02\x1eBuf\\Validate\\Conformance\\Cases\xe2\x02*Buf\\Validate\\Conformance\\Cases\\GPBMetadata\xea\x02!Buf::Validate::Conformance::Casesb\x06proto3"

var (
	file_buf_validate_conformance_cases_wkt_any_proto_rawDescOnce sync.Once
	file_buf_validate_conformance_cases_wkt_any_proto_rawDescData []byte
)

func file_buf_validate_conformance_cases_wkt_any_proto_rawDescGZIP() []byte {
	file_buf_validate_conformance_cases_wkt_any_proto_rawDescOnce.Do(func() {
		file_buf_validate_conformance_cases_wkt_any_proto_rawDescData = protoimpl.X.CompressGZIP(unsafe.Slice(unsafe.StringData(file_buf_validate_conformance_cases_wkt_any_proto_rawDesc), len(file_buf_validate_conformance_cases_wkt_any_proto_rawDesc)))
	})
	return file_buf_validate_conformance_cases_wkt_any_proto_rawDescData
}

var file_buf_validate_conformance_cases_wkt_any_proto_msgTypes = make([]protoimpl.MessageInfo, 4)
var file_buf_validate_conformance_cases_wkt_any_proto_goTypes = []any{
	(*AnyNone)(nil),     // 0: buf.validate.conformance.cases.AnyNone
	(*AnyRequired)(nil), // 1: buf.validate.conformance.cases.AnyRequired
	(*AnyIn)(nil),       // 2: buf.validate.conformance.cases.AnyIn
	(*AnyNotIn)(nil),    // 3: buf.validate.conformance.cases.AnyNotIn
	(*anypb.Any)(nil),   // 4: google.protobuf.Any
}
var file_buf_validate_conformance_cases_wkt_any_proto_depIdxs = []int32{
	4, // 0: buf.validate.conformance.cases.AnyNone.val:type_name -> google.protobuf.Any
	4, // 1: buf.validate.conformance.cases.AnyRequired.val:type_name -> google.protobuf.Any
	4, // 2: buf.validate.conformance.cases.AnyIn.val:type_name -> google.protobuf.Any
	4, // 3: buf.validate.conformance.cases.AnyNotIn.val:type_name -> google.protobuf.Any
	4, // [4:4] is the sub-list for method output_type
	4, // [4:4] is the sub-list for method input_type
	4, // [4:4] is the sub-list for extension type_name
	4, // [4:4] is the sub-list for extension extendee
	0, // [0:4] is the sub-list for field type_name
}

func init() { file_buf_validate_conformance_cases_wkt_any_proto_init() }
func file_buf_validate_conformance_cases_wkt_any_proto_init() {
	if File_buf_validate_conformance_cases_wkt_any_proto != nil {
		return
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: unsafe.Slice(unsafe.StringData(file_buf_validate_conformance_cases_wkt_any_proto_rawDesc), len(file_buf_validate_conformance_cases_wkt_any_proto_rawDesc)),
			NumEnums:      0,
			NumMessages:   4,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_buf_validate_conformance_cases_wkt_any_proto_goTypes,
		DependencyIndexes: file_buf_validate_conformance_cases_wkt_any_proto_depIdxs,
		MessageInfos:      file_buf_validate_conformance_cases_wkt_any_proto_msgTypes,
	}.Build()
	File_buf_validate_conformance_cases_wkt_any_proto = out.File
	file_buf_validate_conformance_cases_wkt_any_proto_goTypes = nil
	file_buf_validate_conformance_cases_wkt_any_proto_depIdxs = nil
}
