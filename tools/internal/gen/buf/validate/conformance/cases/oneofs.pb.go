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
// 	protoc-gen-go v1.36.5
// 	protoc        (unknown)
// source: buf/validate/conformance/cases/oneofs.proto

package cases

import (
	_ "github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
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

type TestOneofMsg struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           bool                   `protobuf:"varint,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *TestOneofMsg) Reset() {
	*x = TestOneofMsg{}
	mi := &file_buf_validate_conformance_cases_oneofs_proto_msgTypes[0]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *TestOneofMsg) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*TestOneofMsg) ProtoMessage() {}

func (x *TestOneofMsg) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_oneofs_proto_msgTypes[0]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use TestOneofMsg.ProtoReflect.Descriptor instead.
func (*TestOneofMsg) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_oneofs_proto_rawDescGZIP(), []int{0}
}

func (x *TestOneofMsg) GetVal() bool {
	if x != nil {
		return x.Val
	}
	return false
}

type OneofNone struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// Types that are valid to be assigned to O:
	//
	//	*OneofNone_X
	//	*OneofNone_Y
	O             isOneofNone_O `protobuf_oneof:"o"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *OneofNone) Reset() {
	*x = OneofNone{}
	mi := &file_buf_validate_conformance_cases_oneofs_proto_msgTypes[1]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *OneofNone) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*OneofNone) ProtoMessage() {}

func (x *OneofNone) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_oneofs_proto_msgTypes[1]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use OneofNone.ProtoReflect.Descriptor instead.
func (*OneofNone) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_oneofs_proto_rawDescGZIP(), []int{1}
}

func (x *OneofNone) GetO() isOneofNone_O {
	if x != nil {
		return x.O
	}
	return nil
}

func (x *OneofNone) GetX() string {
	if x != nil {
		if x, ok := x.O.(*OneofNone_X); ok {
			return x.X
		}
	}
	return ""
}

func (x *OneofNone) GetY() int32 {
	if x != nil {
		if x, ok := x.O.(*OneofNone_Y); ok {
			return x.Y
		}
	}
	return 0
}

type isOneofNone_O interface {
	isOneofNone_O()
}

type OneofNone_X struct {
	X string `protobuf:"bytes,1,opt,name=x,proto3,oneof"`
}

type OneofNone_Y struct {
	Y int32 `protobuf:"varint,2,opt,name=y,proto3,oneof"`
}

func (*OneofNone_X) isOneofNone_O() {}

func (*OneofNone_Y) isOneofNone_O() {}

type Oneof struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// Types that are valid to be assigned to O:
	//
	//	*Oneof_X
	//	*Oneof_Y
	//	*Oneof_Z
	O             isOneof_O `protobuf_oneof:"o"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *Oneof) Reset() {
	*x = Oneof{}
	mi := &file_buf_validate_conformance_cases_oneofs_proto_msgTypes[2]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *Oneof) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Oneof) ProtoMessage() {}

func (x *Oneof) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_oneofs_proto_msgTypes[2]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Oneof.ProtoReflect.Descriptor instead.
func (*Oneof) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_oneofs_proto_rawDescGZIP(), []int{2}
}

func (x *Oneof) GetO() isOneof_O {
	if x != nil {
		return x.O
	}
	return nil
}

func (x *Oneof) GetX() string {
	if x != nil {
		if x, ok := x.O.(*Oneof_X); ok {
			return x.X
		}
	}
	return ""
}

func (x *Oneof) GetY() int32 {
	if x != nil {
		if x, ok := x.O.(*Oneof_Y); ok {
			return x.Y
		}
	}
	return 0
}

func (x *Oneof) GetZ() *TestOneofMsg {
	if x != nil {
		if x, ok := x.O.(*Oneof_Z); ok {
			return x.Z
		}
	}
	return nil
}

type isOneof_O interface {
	isOneof_O()
}

type Oneof_X struct {
	X string `protobuf:"bytes,1,opt,name=x,proto3,oneof"`
}

type Oneof_Y struct {
	Y int32 `protobuf:"varint,2,opt,name=y,proto3,oneof"`
}

type Oneof_Z struct {
	Z *TestOneofMsg `protobuf:"bytes,3,opt,name=z,proto3,oneof"`
}

func (*Oneof_X) isOneof_O() {}

func (*Oneof_Y) isOneof_O() {}

func (*Oneof_Z) isOneof_O() {}

type OneofRequired struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// Types that are valid to be assigned to O:
	//
	//	*OneofRequired_X
	//	*OneofRequired_Y
	//	*OneofRequired_NameWithUnderscores
	//	*OneofRequired_UnderAnd_1Number
	O             isOneofRequired_O `protobuf_oneof:"o"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *OneofRequired) Reset() {
	*x = OneofRequired{}
	mi := &file_buf_validate_conformance_cases_oneofs_proto_msgTypes[3]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *OneofRequired) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*OneofRequired) ProtoMessage() {}

func (x *OneofRequired) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_oneofs_proto_msgTypes[3]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use OneofRequired.ProtoReflect.Descriptor instead.
func (*OneofRequired) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_oneofs_proto_rawDescGZIP(), []int{3}
}

func (x *OneofRequired) GetO() isOneofRequired_O {
	if x != nil {
		return x.O
	}
	return nil
}

func (x *OneofRequired) GetX() string {
	if x != nil {
		if x, ok := x.O.(*OneofRequired_X); ok {
			return x.X
		}
	}
	return ""
}

func (x *OneofRequired) GetY() int32 {
	if x != nil {
		if x, ok := x.O.(*OneofRequired_Y); ok {
			return x.Y
		}
	}
	return 0
}

func (x *OneofRequired) GetNameWithUnderscores() int32 {
	if x != nil {
		if x, ok := x.O.(*OneofRequired_NameWithUnderscores); ok {
			return x.NameWithUnderscores
		}
	}
	return 0
}

func (x *OneofRequired) GetUnderAnd_1Number() int32 {
	if x != nil {
		if x, ok := x.O.(*OneofRequired_UnderAnd_1Number); ok {
			return x.UnderAnd_1Number
		}
	}
	return 0
}

type isOneofRequired_O interface {
	isOneofRequired_O()
}

type OneofRequired_X struct {
	X string `protobuf:"bytes,1,opt,name=x,proto3,oneof"`
}

type OneofRequired_Y struct {
	Y int32 `protobuf:"varint,2,opt,name=y,proto3,oneof"`
}

type OneofRequired_NameWithUnderscores struct {
	NameWithUnderscores int32 `protobuf:"varint,3,opt,name=name_with_underscores,json=nameWithUnderscores,proto3,oneof"`
}

type OneofRequired_UnderAnd_1Number struct {
	UnderAnd_1Number int32 `protobuf:"varint,4,opt,name=under_and_1_number,json=underAnd1Number,proto3,oneof"`
}

func (*OneofRequired_X) isOneofRequired_O() {}

func (*OneofRequired_Y) isOneofRequired_O() {}

func (*OneofRequired_NameWithUnderscores) isOneofRequired_O() {}

func (*OneofRequired_UnderAnd_1Number) isOneofRequired_O() {}

type OneofRequiredWithRequiredField struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// Types that are valid to be assigned to O:
	//
	//	*OneofRequiredWithRequiredField_A
	//	*OneofRequiredWithRequiredField_B
	O             isOneofRequiredWithRequiredField_O `protobuf_oneof:"o"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *OneofRequiredWithRequiredField) Reset() {
	*x = OneofRequiredWithRequiredField{}
	mi := &file_buf_validate_conformance_cases_oneofs_proto_msgTypes[4]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *OneofRequiredWithRequiredField) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*OneofRequiredWithRequiredField) ProtoMessage() {}

func (x *OneofRequiredWithRequiredField) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_oneofs_proto_msgTypes[4]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use OneofRequiredWithRequiredField.ProtoReflect.Descriptor instead.
func (*OneofRequiredWithRequiredField) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_oneofs_proto_rawDescGZIP(), []int{4}
}

func (x *OneofRequiredWithRequiredField) GetO() isOneofRequiredWithRequiredField_O {
	if x != nil {
		return x.O
	}
	return nil
}

func (x *OneofRequiredWithRequiredField) GetA() string {
	if x != nil {
		if x, ok := x.O.(*OneofRequiredWithRequiredField_A); ok {
			return x.A
		}
	}
	return ""
}

func (x *OneofRequiredWithRequiredField) GetB() string {
	if x != nil {
		if x, ok := x.O.(*OneofRequiredWithRequiredField_B); ok {
			return x.B
		}
	}
	return ""
}

type isOneofRequiredWithRequiredField_O interface {
	isOneofRequiredWithRequiredField_O()
}

type OneofRequiredWithRequiredField_A struct {
	A string `protobuf:"bytes,1,opt,name=a,proto3,oneof"`
}

type OneofRequiredWithRequiredField_B struct {
	B string `protobuf:"bytes,2,opt,name=b,proto3,oneof"`
}

func (*OneofRequiredWithRequiredField_A) isOneofRequiredWithRequiredField_O() {}

func (*OneofRequiredWithRequiredField_B) isOneofRequiredWithRequiredField_O() {}

var File_buf_validate_conformance_cases_oneofs_proto protoreflect.FileDescriptor

var file_buf_validate_conformance_cases_oneofs_proto_rawDesc = string([]byte{
	0x0a, 0x2b, 0x62, 0x75, 0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x63,
	0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2f, 0x63, 0x61, 0x73, 0x65, 0x73,
	0x2f, 0x6f, 0x6e, 0x65, 0x6f, 0x66, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x1e, 0x62,
	0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x63, 0x6f, 0x6e, 0x66,
	0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e, 0x63, 0x61, 0x73, 0x65, 0x73, 0x1a, 0x1b, 0x62,
	0x75, 0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x76, 0x61, 0x6c, 0x69,
	0x64, 0x61, 0x74, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x29, 0x0a, 0x0c, 0x54, 0x65,
	0x73, 0x74, 0x4f, 0x6e, 0x65, 0x6f, 0x66, 0x4d, 0x73, 0x67, 0x12, 0x19, 0x0a, 0x03, 0x76, 0x61,
	0x6c, 0x18, 0x01, 0x20, 0x01, 0x28, 0x08, 0x42, 0x07, 0xba, 0x48, 0x04, 0x6a, 0x02, 0x08, 0x01,
	0x52, 0x03, 0x76, 0x61, 0x6c, 0x22, 0x30, 0x0a, 0x09, 0x4f, 0x6e, 0x65, 0x6f, 0x66, 0x4e, 0x6f,
	0x6e, 0x65, 0x12, 0x0e, 0x0a, 0x01, 0x78, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52,
	0x01, 0x78, 0x12, 0x0e, 0x0a, 0x01, 0x79, 0x18, 0x02, 0x20, 0x01, 0x28, 0x05, 0x48, 0x00, 0x52,
	0x01, 0x79, 0x42, 0x03, 0x0a, 0x01, 0x6f, 0x22, 0x7f, 0x0a, 0x05, 0x4f, 0x6e, 0x65, 0x6f, 0x66,
	0x12, 0x1a, 0x0a, 0x01, 0x78, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x42, 0x0a, 0xba, 0x48, 0x07,
	0x72, 0x05, 0x3a, 0x03, 0x66, 0x6f, 0x6f, 0x48, 0x00, 0x52, 0x01, 0x78, 0x12, 0x17, 0x0a, 0x01,
	0x79, 0x18, 0x02, 0x20, 0x01, 0x28, 0x05, 0x42, 0x07, 0xba, 0x48, 0x04, 0x1a, 0x02, 0x20, 0x00,
	0x48, 0x00, 0x52, 0x01, 0x79, 0x12, 0x3c, 0x0a, 0x01, 0x7a, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0b,
	0x32, 0x2c, 0x2e, 0x62, 0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e,
	0x63, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e, 0x63, 0x61, 0x73, 0x65,
	0x73, 0x2e, 0x54, 0x65, 0x73, 0x74, 0x4f, 0x6e, 0x65, 0x6f, 0x66, 0x4d, 0x73, 0x67, 0x48, 0x00,
	0x52, 0x01, 0x7a, 0x42, 0x03, 0x0a, 0x01, 0x6f, 0x22, 0xa0, 0x01, 0x0a, 0x0d, 0x4f, 0x6e, 0x65,
	0x6f, 0x66, 0x52, 0x65, 0x71, 0x75, 0x69, 0x72, 0x65, 0x64, 0x12, 0x0e, 0x0a, 0x01, 0x78, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x01, 0x78, 0x12, 0x0e, 0x0a, 0x01, 0x79, 0x18,
	0x02, 0x20, 0x01, 0x28, 0x05, 0x48, 0x00, 0x52, 0x01, 0x79, 0x12, 0x34, 0x0a, 0x15, 0x6e, 0x61,
	0x6d, 0x65, 0x5f, 0x77, 0x69, 0x74, 0x68, 0x5f, 0x75, 0x6e, 0x64, 0x65, 0x72, 0x73, 0x63, 0x6f,
	0x72, 0x65, 0x73, 0x18, 0x03, 0x20, 0x01, 0x28, 0x05, 0x48, 0x00, 0x52, 0x13, 0x6e, 0x61, 0x6d,
	0x65, 0x57, 0x69, 0x74, 0x68, 0x55, 0x6e, 0x64, 0x65, 0x72, 0x73, 0x63, 0x6f, 0x72, 0x65, 0x73,
	0x12, 0x2d, 0x0a, 0x12, 0x75, 0x6e, 0x64, 0x65, 0x72, 0x5f, 0x61, 0x6e, 0x64, 0x5f, 0x31, 0x5f,
	0x6e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x18, 0x04, 0x20, 0x01, 0x28, 0x05, 0x48, 0x00, 0x52, 0x0f,
	0x75, 0x6e, 0x64, 0x65, 0x72, 0x41, 0x6e, 0x64, 0x31, 0x4e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x42,
	0x0a, 0x0a, 0x01, 0x6f, 0x12, 0x05, 0xba, 0x48, 0x02, 0x08, 0x01, 0x22, 0x54, 0x0a, 0x1e, 0x4f,
	0x6e, 0x65, 0x6f, 0x66, 0x52, 0x65, 0x71, 0x75, 0x69, 0x72, 0x65, 0x64, 0x57, 0x69, 0x74, 0x68,
	0x52, 0x65, 0x71, 0x75, 0x69, 0x72, 0x65, 0x64, 0x46, 0x69, 0x65, 0x6c, 0x64, 0x12, 0x16, 0x0a,
	0x01, 0x61, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x42, 0x06, 0xba, 0x48, 0x03, 0xc8, 0x01, 0x01,
	0x48, 0x00, 0x52, 0x01, 0x61, 0x12, 0x0e, 0x0a, 0x01, 0x62, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09,
	0x48, 0x00, 0x52, 0x01, 0x62, 0x42, 0x0a, 0x0a, 0x01, 0x6f, 0x12, 0x05, 0xba, 0x48, 0x02, 0x08,
	0x01, 0x42, 0xa2, 0x02, 0x0a, 0x22, 0x63, 0x6f, 0x6d, 0x2e, 0x62, 0x75, 0x66, 0x2e, 0x76, 0x61,
	0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x63, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e,
	0x63, 0x65, 0x2e, 0x63, 0x61, 0x73, 0x65, 0x73, 0x42, 0x0b, 0x4f, 0x6e, 0x65, 0x6f, 0x66, 0x73,
	0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x53, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e,
	0x63, 0x6f, 0x6d, 0x2f, 0x62, 0x75, 0x66, 0x62, 0x75, 0x69, 0x6c, 0x64, 0x2f, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x74, 0x6f, 0x6f, 0x6c, 0x73,
	0x2f, 0x69, 0x6e, 0x74, 0x65, 0x72, 0x6e, 0x61, 0x6c, 0x2f, 0x67, 0x65, 0x6e, 0x2f, 0x62, 0x75,
	0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x63, 0x6f, 0x6e, 0x66, 0x6f,
	0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2f, 0x63, 0x61, 0x73, 0x65, 0x73, 0xa2, 0x02, 0x04, 0x42,
	0x56, 0x43, 0x43, 0xaa, 0x02, 0x1e, 0x42, 0x75, 0x66, 0x2e, 0x56, 0x61, 0x6c, 0x69, 0x64, 0x61,
	0x74, 0x65, 0x2e, 0x43, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e, 0x43,
	0x61, 0x73, 0x65, 0x73, 0xca, 0x02, 0x1e, 0x42, 0x75, 0x66, 0x5c, 0x56, 0x61, 0x6c, 0x69, 0x64,
	0x61, 0x74, 0x65, 0x5c, 0x43, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x5c,
	0x43, 0x61, 0x73, 0x65, 0x73, 0xe2, 0x02, 0x2a, 0x42, 0x75, 0x66, 0x5c, 0x56, 0x61, 0x6c, 0x69,
	0x64, 0x61, 0x74, 0x65, 0x5c, 0x43, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65,
	0x5c, 0x43, 0x61, 0x73, 0x65, 0x73, 0x5c, 0x47, 0x50, 0x42, 0x4d, 0x65, 0x74, 0x61, 0x64, 0x61,
	0x74, 0x61, 0xea, 0x02, 0x21, 0x42, 0x75, 0x66, 0x3a, 0x3a, 0x56, 0x61, 0x6c, 0x69, 0x64, 0x61,
	0x74, 0x65, 0x3a, 0x3a, 0x43, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x3a,
	0x3a, 0x43, 0x61, 0x73, 0x65, 0x73, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
})

var (
	file_buf_validate_conformance_cases_oneofs_proto_rawDescOnce sync.Once
	file_buf_validate_conformance_cases_oneofs_proto_rawDescData []byte
)

func file_buf_validate_conformance_cases_oneofs_proto_rawDescGZIP() []byte {
	file_buf_validate_conformance_cases_oneofs_proto_rawDescOnce.Do(func() {
		file_buf_validate_conformance_cases_oneofs_proto_rawDescData = protoimpl.X.CompressGZIP(unsafe.Slice(unsafe.StringData(file_buf_validate_conformance_cases_oneofs_proto_rawDesc), len(file_buf_validate_conformance_cases_oneofs_proto_rawDesc)))
	})
	return file_buf_validate_conformance_cases_oneofs_proto_rawDescData
}

var file_buf_validate_conformance_cases_oneofs_proto_msgTypes = make([]protoimpl.MessageInfo, 5)
var file_buf_validate_conformance_cases_oneofs_proto_goTypes = []any{
	(*TestOneofMsg)(nil),                   // 0: buf.validate.conformance.cases.TestOneofMsg
	(*OneofNone)(nil),                      // 1: buf.validate.conformance.cases.OneofNone
	(*Oneof)(nil),                          // 2: buf.validate.conformance.cases.Oneof
	(*OneofRequired)(nil),                  // 3: buf.validate.conformance.cases.OneofRequired
	(*OneofRequiredWithRequiredField)(nil), // 4: buf.validate.conformance.cases.OneofRequiredWithRequiredField
}
var file_buf_validate_conformance_cases_oneofs_proto_depIdxs = []int32{
	0, // 0: buf.validate.conformance.cases.Oneof.z:type_name -> buf.validate.conformance.cases.TestOneofMsg
	1, // [1:1] is the sub-list for method output_type
	1, // [1:1] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	1, // [1:1] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_buf_validate_conformance_cases_oneofs_proto_init() }
func file_buf_validate_conformance_cases_oneofs_proto_init() {
	if File_buf_validate_conformance_cases_oneofs_proto != nil {
		return
	}
	file_buf_validate_conformance_cases_oneofs_proto_msgTypes[1].OneofWrappers = []any{
		(*OneofNone_X)(nil),
		(*OneofNone_Y)(nil),
	}
	file_buf_validate_conformance_cases_oneofs_proto_msgTypes[2].OneofWrappers = []any{
		(*Oneof_X)(nil),
		(*Oneof_Y)(nil),
		(*Oneof_Z)(nil),
	}
	file_buf_validate_conformance_cases_oneofs_proto_msgTypes[3].OneofWrappers = []any{
		(*OneofRequired_X)(nil),
		(*OneofRequired_Y)(nil),
		(*OneofRequired_NameWithUnderscores)(nil),
		(*OneofRequired_UnderAnd_1Number)(nil),
	}
	file_buf_validate_conformance_cases_oneofs_proto_msgTypes[4].OneofWrappers = []any{
		(*OneofRequiredWithRequiredField_A)(nil),
		(*OneofRequiredWithRequiredField_B)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: unsafe.Slice(unsafe.StringData(file_buf_validate_conformance_cases_oneofs_proto_rawDesc), len(file_buf_validate_conformance_cases_oneofs_proto_rawDesc)),
			NumEnums:      0,
			NumMessages:   5,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_buf_validate_conformance_cases_oneofs_proto_goTypes,
		DependencyIndexes: file_buf_validate_conformance_cases_oneofs_proto_depIdxs,
		MessageInfos:      file_buf_validate_conformance_cases_oneofs_proto_msgTypes,
	}.Build()
	File_buf_validate_conformance_cases_oneofs_proto = out.File
	file_buf_validate_conformance_cases_oneofs_proto_goTypes = nil
	file_buf_validate_conformance_cases_oneofs_proto_depIdxs = nil
}
