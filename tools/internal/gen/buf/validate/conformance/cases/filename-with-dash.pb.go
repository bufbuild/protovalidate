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
// source: buf/validate/conformance/cases/filename-with-dash.proto

package cases

import (
	_ "github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	unsafe "unsafe"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

var File_buf_validate_conformance_cases_filename_with_dash_proto protoreflect.FileDescriptor

const file_buf_validate_conformance_cases_filename_with_dash_proto_rawDesc = "" +
	"\n" +
	"7buf/validate/conformance/cases/filename-with-dash.proto\x12\x1ebuf.validate.conformance.cases\x1a\x1bbuf/validate/validate.protoB\xac\x02\n" +
	"\"com.buf.validate.conformance.casesB\x15FilenameWithDashProtoP\x01ZSgithub.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases\xa2\x02\x04BVCC\xaa\x02\x1eBuf.Validate.Conformance.Cases\xca\x02\x1eBuf\\Validate\\Conformance\\Cases\xe2\x02*Buf\\Validate\\Conformance\\Cases\\GPBMetadata\xea\x02!Buf::Validate::Conformance::Casesb\x06proto3"

var file_buf_validate_conformance_cases_filename_with_dash_proto_goTypes = []any{}
var file_buf_validate_conformance_cases_filename_with_dash_proto_depIdxs = []int32{
	0, // [0:0] is the sub-list for method output_type
	0, // [0:0] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_buf_validate_conformance_cases_filename_with_dash_proto_init() }
func file_buf_validate_conformance_cases_filename_with_dash_proto_init() {
	if File_buf_validate_conformance_cases_filename_with_dash_proto != nil {
		return
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: unsafe.Slice(unsafe.StringData(file_buf_validate_conformance_cases_filename_with_dash_proto_rawDesc), len(file_buf_validate_conformance_cases_filename_with_dash_proto_rawDesc)),
			NumEnums:      0,
			NumMessages:   0,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_buf_validate_conformance_cases_filename_with_dash_proto_goTypes,
		DependencyIndexes: file_buf_validate_conformance_cases_filename_with_dash_proto_depIdxs,
	}.Build()
	File_buf_validate_conformance_cases_filename_with_dash_proto = out.File
	file_buf_validate_conformance_cases_filename_with_dash_proto_goTypes = nil
	file_buf_validate_conformance_cases_filename_with_dash_proto_depIdxs = nil
}
