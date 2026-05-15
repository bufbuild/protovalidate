// Copyright 2023-2026 Buf Technologies, Inc.
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

package validateschema

import (
	"github.com/bufbuild/protovalidate/tools/internal/celenv"
	"github.com/google/cel-go/cel"
	"google.golang.org/protobuf/reflect/protoreflect"
)

// NoExtensionRange is the set of *Rules messages that must not have
// `extensions 1000 to max;`.
//
//nolint:gochecknoglobals
var NoExtensionRange = map[protoreflect.FullName]bool{
	"buf.validate.AnyRules": true,
}

// NoExample is the set of *Rules messages that must not have an
// `example` field.
//
//nolint:gochecknoglobals
var NoExample = map[protoreflect.FullName]bool{
	"buf.validate.AnyRules":      true,
	"buf.validate.RepeatedRules": true,
	"buf.validate.MapRules":      true,
}

// NoCEL is the set of rule fields validated by implementations
// directly, exempt from requiring `(predefined).cel`.
//
//nolint:gochecknoglobals
var NoCEL = map[protoreflect.FullName]bool{
	"buf.validate.EnumRules.defined_only": true,
	"buf.validate.RepeatedRules.items":    true,
	"buf.validate.MapRules.keys":          true,
	"buf.validate.MapRules.values":        true,
	"buf.validate.StringRules.strict":     true,
	"buf.validate.AnyRules.in":            true,
	"buf.validate.AnyRules.not_in":        true,
}

// thisTypeByRulesMessage maps each *Rules message to the type that
// `this` binds to when its rules run.
//
//nolint:gochecknoglobals
var thisTypeByRulesMessage = map[protoreflect.FullName]ThisType{
	"buf.validate.FloatRules":     singularThis(protoreflect.FloatKind, ""),
	"buf.validate.DoubleRules":    singularThis(protoreflect.DoubleKind, ""),
	"buf.validate.Int32Rules":     singularThis(protoreflect.Int32Kind, ""),
	"buf.validate.Int64Rules":     singularThis(protoreflect.Int64Kind, ""),
	"buf.validate.UInt32Rules":    singularThis(protoreflect.Uint32Kind, ""),
	"buf.validate.UInt64Rules":    singularThis(protoreflect.Uint64Kind, ""),
	"buf.validate.SInt32Rules":    singularThis(protoreflect.Sint32Kind, ""),
	"buf.validate.SInt64Rules":    singularThis(protoreflect.Sint64Kind, ""),
	"buf.validate.Fixed32Rules":   singularThis(protoreflect.Fixed32Kind, ""),
	"buf.validate.Fixed64Rules":   singularThis(protoreflect.Fixed64Kind, ""),
	"buf.validate.SFixed32Rules":  singularThis(protoreflect.Sfixed32Kind, ""),
	"buf.validate.SFixed64Rules":  singularThis(protoreflect.Sfixed64Kind, ""),
	"buf.validate.BoolRules":      singularThis(protoreflect.BoolKind, ""),
	"buf.validate.StringRules":    singularThis(protoreflect.StringKind, ""),
	"buf.validate.BytesRules":     singularThis(protoreflect.BytesKind, ""),
	"buf.validate.EnumRules":      singularThis(protoreflect.EnumKind, ""),
	"buf.validate.AnyRules":       singularThis(protoreflect.MessageKind, "google.protobuf.Any"),
	"buf.validate.DurationRules":  singularThis(protoreflect.MessageKind, "google.protobuf.Duration"),
	"buf.validate.FieldMaskRules": singularThis(protoreflect.MessageKind, "google.protobuf.FieldMask"),
	"buf.validate.TimestampRules": singularThis(protoreflect.MessageKind, "google.protobuf.Timestamp"),
	"buf.validate.RepeatedRules":  {CELType: cel.ListType(cel.DynType)},
	"buf.validate.MapRules":       {CELType: cel.MapType(cel.DynType, cel.DynType)},
}

func singularThis(kind protoreflect.Kind, fullName protoreflect.FullName) ThisType {
	return ThisType{
		Kind:     kind,
		FullName: fullName,
		CELType:  celenv.KindToType(kind, fullName),
	}
}
