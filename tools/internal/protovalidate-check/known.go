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

package main

import (
	"google.golang.org/protobuf/reflect/protoreflect"
)

// rulesMessageToThisType maps from a *Rules message for a field to a protobuf type.
var rulesMessageToThisType = map[protoreflect.FullName]protoType{
	"buf.validate.FloatRules":     singularType{singularKind: protoreflect.FloatKind},
	"buf.validate.DoubleRules":    singularType{singularKind: protoreflect.DoubleKind},
	"buf.validate.Int32Rules":     singularType{singularKind: protoreflect.Int32Kind},
	"buf.validate.Int64Rules":     singularType{singularKind: protoreflect.Int64Kind},
	"buf.validate.UInt32Rules":    singularType{singularKind: protoreflect.Uint32Kind},
	"buf.validate.UInt64Rules":    singularType{singularKind: protoreflect.Uint64Kind},
	"buf.validate.SInt32Rules":    singularType{singularKind: protoreflect.Sint32Kind},
	"buf.validate.SInt64Rules":    singularType{singularKind: protoreflect.Sint64Kind},
	"buf.validate.Fixed32Rules":   singularType{singularKind: protoreflect.Fixed32Kind},
	"buf.validate.Fixed64Rules":   singularType{singularKind: protoreflect.Fixed64Kind},
	"buf.validate.SFixed32Rules":  singularType{singularKind: protoreflect.Sfixed32Kind},
	"buf.validate.SFixed64Rules":  singularType{singularKind: protoreflect.Sfixed64Kind},
	"buf.validate.BoolRules":      singularType{singularKind: protoreflect.BoolKind},
	"buf.validate.StringRules":    singularType{singularKind: protoreflect.StringKind},
	"buf.validate.BytesRules":     singularType{singularKind: protoreflect.BytesKind},
	"buf.validate.EnumRules":      singularType{singularKind: protoreflect.EnumKind},
	"buf.validate.RepeatedRules":  listType{},
	"buf.validate.MapRules":       mapType{},
	"buf.validate.AnyRules":       singularType{singularKind: protoreflect.MessageKind, singularFullName: "google.protobuf.Any"},
	"buf.validate.DurationRules":  singularType{singularKind: protoreflect.MessageKind, singularFullName: "google.protobuf.Duration"},
	"buf.validate.FieldMaskRules": singularType{singularKind: protoreflect.MessageKind, singularFullName: "google.protobuf.FieldMask"},
	"buf.validate.TimestampRules": singularType{singularKind: protoreflect.MessageKind, singularFullName: "google.protobuf.Timestamp"},
}

// noExtensionRange is the set of rule messages that must not have
// `extensions 1000 to max;`.
var noExtensionRange = map[protoreflect.FullName]bool{
	"buf.validate.AnyRules": true,
}

// noExample is the set of rule messages that must not have an
// `example` field.
var noExample = map[protoreflect.FullName]bool{
	"buf.validate.AnyRules":      true,
	"buf.validate.RepeatedRules": true,
	"buf.validate.MapRules":      true,
}

// noCEL is the set of rule fields validated by implementations
// directly, exempt from requiring `(predefined).cel`.
var noCEL = map[protoreflect.FullName]bool{
	"buf.validate.EnumRules.defined_only": true,
	"buf.validate.RepeatedRules.items":    true,
	"buf.validate.MapRules.keys":          true,
	"buf.validate.MapRules.values":        true,
	"buf.validate.StringRules.strict":     true,
	"buf.validate.AnyRules.in":            true,
	"buf.validate.AnyRules.not_in":        true,
}
