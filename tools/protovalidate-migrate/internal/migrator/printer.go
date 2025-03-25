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
	"io"

	"github.com/bufbuild/protocompile/ast"
)

type PrinterVisitor struct {
	*ast.SimpleVisitor

	Config
	HasPGV bool
	HasPV  bool

	file *ast.FileNode
	w    io.Writer
}

func NewPrinterVisitor(cfg Config, file *ast.FileNode, w io.Writer) PrinterVisitor {
	printer := PrinterVisitor{
		SimpleVisitor: &ast.SimpleVisitor{},
		Config:        cfg,
		file:          file,
		w:             w,
	}
	printer.DoVisitNode = func(node ast.Node) error {
		return printer.PrintNodes(true, node)
	}
	return printer
}

func (v PrinterVisitor) PrintNodes(printComments bool, nodes ...ast.Node) error {
	for _, node := range nodes {
		var nodeInfo nodeInfo
		if infoer, ok := node.(wrappedNode); ok {
			nodeInfo = infoer.ToNodeInfo()
		} else {
			nodeInfo = v.file.NodeInfo(node)
		}
		if printComments {
			err := v.PrintComments(nodeInfo.LeadingComments())
			if err != nil {
				return err
			}
		}
		err := v.PrintElement(nodeInfo)
		if err != nil {
			return err
		}
		if printComments {
			err = v.PrintComments(nodeInfo.TrailingComments())
			if err != nil {
				return err
			}
		}
	}
	return nil
}

func (v PrinterVisitor) PrintComments(comments ast.Comments) error {
	for i, n := 0, comments.Len(); i < n; i++ {
		cmt := comments.Index(i)
		if err := v.PrintElement(cmt); err != nil {
			return err
		}
	}
	return nil
}

func (v PrinterVisitor) PrintElement(n element) error {
	_, err := v.w.Write([]byte(n.LeadingWhitespace()))
	if err != nil {
		return err
	}
	_, err = v.w.Write([]byte(n.RawText()))
	return err
}

func (v PrinterVisitor) ShouldPrintOriginal(isPGV, isPV bool) bool {
	return (isPGV && !v.RemovePGV) ||
		(isPV && !v.ReplacePV) ||
		(!isPGV && !isPV)
}

func (v PrinterVisitor) ShouldPrintReplacement(isPGV bool) bool {
	return isPGV && (v.ReplacePV || !v.HasPV)
}

func (v PrinterVisitor) replaceNode(original ast.Node, replacement string) replacementNode {
	return replacementNode{
		Node: original,
		info: replacementNodeInfo{
			NodeInfo:    v.file.NodeInfo(original),
			Replacement: replacement,
		},
	}
}
