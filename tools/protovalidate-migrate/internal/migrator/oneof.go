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

package migrator

import (
	"github.com/bufbuild/protocompile/ast"
)

type OneofVisitor struct {
	PrinterVisitor
}

func (v *OneofVisitor) VisitOptionNode(node *ast.OptionNode) error {
	name := node.Name.Parts[0].Value()
	isPGV := name == "(validate.required)"
	isPV := name == "(buf.validate.oneof)"

	if v.ShouldPrintOriginal(isPGV, isPV) {
		if err := v.PrintNodes(true, node); err != nil {
			return err
		}
	}

	if v.ShouldPrintReplacement(isPGV) {
		return v.PrintNodes(
			false,
			node.Keyword,
			v.replaceNode(node.Name, "(buf.validate.oneof).required"),
			node.Equals,
			node.Val,
			node.Semicolon,
		)
	}

	return nil
}

func (v *OneofVisitor) VisitFieldNode(node *ast.FieldNode) error {
	return ast.VisitChildren(node, &FieldVisitor{PrinterVisitor: v.PrinterVisitor})
}
