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

package annotated

import (
	"slices"
	"strings"

	conformancepb "github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/reflect/protoreflect"
	"google.golang.org/protobuf/reflect/protoregistry"
)

// CollectMessageDescriptors returns every message descriptor in the global
// registry that carries a TestCases option, in deterministic order.
func CollectMessageDescriptors() []protoreflect.MessageDescriptor {
	var messageDescriptors []protoreflect.MessageDescriptor
	protoregistry.GlobalFiles.RangeFiles(func(file protoreflect.FileDescriptor) bool {
		visitMessages(file.Messages(), func(msg protoreflect.MessageDescriptor) {
			if proto.HasExtension(msg.Options(), conformancepb.E_TestCases) {
				messageDescriptors = append(messageDescriptors, msg)
			}
		})
		return true
	})
	slices.SortFunc(messageDescriptors, func(h1, h2 protoreflect.MessageDescriptor) int {
		return strings.Compare(string(h1.FullName()), string(h2.FullName()))
	})
	return messageDescriptors
}

// visitMessages walks msgs and any nested messages, calling fn for each.
func visitMessages(msgs protoreflect.MessageDescriptors, fn func(protoreflect.MessageDescriptor)) {
	for i := range msgs.Len() {
		msg := msgs.Get(i)
		fn(msg)
		visitMessages(msg.Messages(), fn)
	}
}
