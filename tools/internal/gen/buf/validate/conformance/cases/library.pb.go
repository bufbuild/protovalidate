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
// source: buf/validate/conformance/cases/library.proto

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

type IsHostname struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsHostname) Reset() {
	*x = IsHostname{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[0]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsHostname) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsHostname) ProtoMessage() {}

func (x *IsHostname) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[0]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsHostname.ProtoReflect.Descriptor instead.
func (*IsHostname) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{0}
}

func (x *IsHostname) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

type IsHostAndPort struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	PortRequired  bool                   `protobuf:"varint,2,opt,name=port_required,json=portRequired,proto3" json:"port_required,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsHostAndPort) Reset() {
	*x = IsHostAndPort{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[1]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsHostAndPort) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsHostAndPort) ProtoMessage() {}

func (x *IsHostAndPort) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[1]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsHostAndPort.ProtoReflect.Descriptor instead.
func (*IsHostAndPort) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{1}
}

func (x *IsHostAndPort) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

func (x *IsHostAndPort) GetPortRequired() bool {
	if x != nil {
		return x.PortRequired
	}
	return false
}

type IsIpPrefix struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	Version       *int32                 `protobuf:"varint,2,opt,name=version,proto3,oneof" json:"version,omitempty"`
	Strict        *bool                  `protobuf:"varint,3,opt,name=strict,proto3,oneof" json:"strict,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsIpPrefix) Reset() {
	*x = IsIpPrefix{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[2]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsIpPrefix) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsIpPrefix) ProtoMessage() {}

func (x *IsIpPrefix) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[2]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsIpPrefix.ProtoReflect.Descriptor instead.
func (*IsIpPrefix) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{2}
}

func (x *IsIpPrefix) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

func (x *IsIpPrefix) GetVersion() int32 {
	if x != nil && x.Version != nil {
		return *x.Version
	}
	return 0
}

func (x *IsIpPrefix) GetStrict() bool {
	if x != nil && x.Strict != nil {
		return *x.Strict
	}
	return false
}

type IsIp struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	Version       *int32                 `protobuf:"varint,2,opt,name=version,proto3,oneof" json:"version,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsIp) Reset() {
	*x = IsIp{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[3]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsIp) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsIp) ProtoMessage() {}

func (x *IsIp) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[3]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsIp.ProtoReflect.Descriptor instead.
func (*IsIp) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{3}
}

func (x *IsIp) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

func (x *IsIp) GetVersion() int32 {
	if x != nil && x.Version != nil {
		return *x.Version
	}
	return 0
}

type IsEmail struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsEmail) Reset() {
	*x = IsEmail{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[4]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsEmail) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsEmail) ProtoMessage() {}

func (x *IsEmail) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[4]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsEmail.ProtoReflect.Descriptor instead.
func (*IsEmail) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{4}
}

func (x *IsEmail) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

type IsUri struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsUri) Reset() {
	*x = IsUri{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[5]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsUri) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsUri) ProtoMessage() {}

func (x *IsUri) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[5]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsUri.ProtoReflect.Descriptor instead.
func (*IsUri) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{5}
}

func (x *IsUri) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

type IsUriRef struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsUriRef) Reset() {
	*x = IsUriRef{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[6]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsUriRef) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsUriRef) ProtoMessage() {}

func (x *IsUriRef) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[6]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsUriRef.ProtoReflect.Descriptor instead.
func (*IsUriRef) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{6}
}

func (x *IsUriRef) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

var File_buf_validate_conformance_cases_library_proto protoreflect.FileDescriptor

const file_buf_validate_conformance_cases_library_proto_rawDesc = "" +
	"\n" +
	",buf/validate/conformance/cases/library.proto\x12\x1ebuf.validate.conformance.cases\x1a\x1bbuf/validate/validate.proto\"Q\n" +
	"\n" +
	"IsHostname\x12\x10\n" +
	"\x03val\x18\x01 \x01(\tR\x03val:1\xbaH.\x1a,\n" +
	"\x13library.is_hostname\x1a\x15this.val.isHostname()\"\x93\x01\n" +
	"\rIsHostAndPort\x12\x10\n" +
	"\x03val\x18\x01 \x01(\tR\x03val\x12#\n" +
	"\rport_required\x18\x02 \x01(\bR\fportRequired:K\xbaHH\x1aF\n" +
	"\x18library.is_host_and_port\x1a*this.val.isHostAndPort(this.port_required)\"\xf0\x02\n" +
	"\n" +
	"IsIpPrefix\x12\x10\n" +
	"\x03val\x18\x01 \x01(\tR\x03val\x12\x1d\n" +
	"\aversion\x18\x02 \x01(\x05H\x00R\aversion\x88\x01\x01\x12\x1b\n" +
	"\x06strict\x18\x03 \x01(\bH\x01R\x06strict\x88\x01\x01:\xfc\x01\xbaH\xf8\x01\x1a\xf5\x01\n" +
	"\x14library.is_ip_prefix\x1a\xdc\x01has(this.version) && has(this.strict) ? this.val.isIpPrefix(this.version, this.strict) : has(this.version) ? this.val.isIpPrefix(this.version) : has(this.strict) ? this.val.isIpPrefix(this.strict) : this.val.isIpPrefix()B\n" +
	"\n" +
	"\b_versionB\t\n" +
	"\a_strict\"\x9c\x01\n" +
	"\x04IsIp\x12\x10\n" +
	"\x03val\x18\x01 \x01(\tR\x03val\x12\x1d\n" +
	"\aversion\x18\x02 \x01(\x05H\x00R\aversion\x88\x01\x01:W\xbaHT\x1aR\n" +
	"\rlibrary.is_ip\x1aAhas(this.version) ? this.val.isIp(this.version) : this.val.isIp()B\n" +
	"\n" +
	"\b_version\"H\n" +
	"\aIsEmail\x12\x10\n" +
	"\x03val\x18\x01 \x01(\tR\x03val:+\xbaH(\x1a&\n" +
	"\x10library.is_email\x1a\x12this.val.isEmail()\"B\n" +
	"\x05IsUri\x12\x10\n" +
	"\x03val\x18\x01 \x01(\tR\x03val:'\xbaH$\x1a\"\n" +
	"\x0elibrary.is_uri\x1a\x10this.val.isUri()\"L\n" +
	"\bIsUriRef\x12\x10\n" +
	"\x03val\x18\x01 \x01(\tR\x03val:.\xbaH+\x1a)\n" +
	"\x12library.is_uri_ref\x1a\x13this.val.isUriRef()B\xa3\x02\n" +
	"\"com.buf.validate.conformance.casesB\fLibraryProtoP\x01ZSgithub.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases\xa2\x02\x04BVCC\xaa\x02\x1eBuf.Validate.Conformance.Cases\xca\x02\x1eBuf\\Validate\\Conformance\\Cases\xe2\x02*Buf\\Validate\\Conformance\\Cases\\GPBMetadata\xea\x02!Buf::Validate::Conformance::Casesb\x06proto3"

var (
	file_buf_validate_conformance_cases_library_proto_rawDescOnce sync.Once
	file_buf_validate_conformance_cases_library_proto_rawDescData []byte
)

func file_buf_validate_conformance_cases_library_proto_rawDescGZIP() []byte {
	file_buf_validate_conformance_cases_library_proto_rawDescOnce.Do(func() {
		file_buf_validate_conformance_cases_library_proto_rawDescData = protoimpl.X.CompressGZIP(unsafe.Slice(unsafe.StringData(file_buf_validate_conformance_cases_library_proto_rawDesc), len(file_buf_validate_conformance_cases_library_proto_rawDesc)))
	})
	return file_buf_validate_conformance_cases_library_proto_rawDescData
}

var file_buf_validate_conformance_cases_library_proto_msgTypes = make([]protoimpl.MessageInfo, 7)
var file_buf_validate_conformance_cases_library_proto_goTypes = []any{
	(*IsHostname)(nil),    // 0: buf.validate.conformance.cases.IsHostname
	(*IsHostAndPort)(nil), // 1: buf.validate.conformance.cases.IsHostAndPort
	(*IsIpPrefix)(nil),    // 2: buf.validate.conformance.cases.IsIpPrefix
	(*IsIp)(nil),          // 3: buf.validate.conformance.cases.IsIp
	(*IsEmail)(nil),       // 4: buf.validate.conformance.cases.IsEmail
	(*IsUri)(nil),         // 5: buf.validate.conformance.cases.IsUri
	(*IsUriRef)(nil),      // 6: buf.validate.conformance.cases.IsUriRef
}
var file_buf_validate_conformance_cases_library_proto_depIdxs = []int32{
	0, // [0:0] is the sub-list for method output_type
	0, // [0:0] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_buf_validate_conformance_cases_library_proto_init() }
func file_buf_validate_conformance_cases_library_proto_init() {
	if File_buf_validate_conformance_cases_library_proto != nil {
		return
	}
	file_buf_validate_conformance_cases_library_proto_msgTypes[2].OneofWrappers = []any{}
	file_buf_validate_conformance_cases_library_proto_msgTypes[3].OneofWrappers = []any{}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: unsafe.Slice(unsafe.StringData(file_buf_validate_conformance_cases_library_proto_rawDesc), len(file_buf_validate_conformance_cases_library_proto_rawDesc)),
			NumEnums:      0,
			NumMessages:   7,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_buf_validate_conformance_cases_library_proto_goTypes,
		DependencyIndexes: file_buf_validate_conformance_cases_library_proto_depIdxs,
		MessageInfos:      file_buf_validate_conformance_cases_library_proto_msgTypes,
	}.Build()
	File_buf_validate_conformance_cases_library_proto = out.File
	file_buf_validate_conformance_cases_library_proto_goTypes = nil
	file_buf_validate_conformance_cases_library_proto_depIdxs = nil
}
