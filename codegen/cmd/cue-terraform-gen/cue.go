package main

import (
	"sort"

	"cuelang.org/go/cue/ast"
	"cuelang.org/go/cue/token"
)

func appendCueFields(elts []ast.Decl, fields map[string]ast.Expr) []ast.Decl {
	var keys []string
	for k := range fields {
		keys = append(keys, k)
	}
	sort.Strings(keys)
	for _, k := range keys {
		elts = append(elts, cueField(k, fields[k]))
	}
	return elts
}

func cuePackage(pname string) *ast.Package {
	return &ast.Package{Name: &ast.Ident{Name: pname}}
}

func cueStruct(fields map[string]ast.Expr) *ast.StructLit {
	var elts []ast.Decl
	if fields != nil {
		elts = appendCueFields(elts, fields)
	}
	return &ast.StructLit{Elts: elts}
}

func cueAnyStruct(expr ast.Expr) *ast.StructLit {
	return &ast.StructLit{
		Elts: []ast.Decl{
			cueAnyField(expr),
		},
	}
}

func cueField(k string, v ast.Expr) *ast.Field {
	var label ast.Label
	if ast.IsValidIdent(k) {
		label = &ast.Ident{Name: k}
	} else {
		label = &ast.BasicLit{
			Kind:  token.STRING,
			Value: k,
		}
	}

	return &ast.Field{
		Label: label,
		Token: token.COLON,
		Value: v,
	}
}

func cueFieldOpt(k string, v ast.Expr) *ast.Field {
	var label ast.Label
	if ast.IsValidIdent(k) {
		label = &ast.Ident{Name: k}
	} else {
		label = &ast.BasicLit{
			Kind:  token.STRING,
			Value: k,
		}
	}

	p := token.Pos{}
	return &ast.Field{
		Label:    label,
		Optional: p.Add(1),
		Token:    token.COLON,
		Value:    v,
	}
}

func cueAnyField(v ast.Expr) *ast.Field {
	return &ast.Field{
		Label: &ast.ListLit{
			Elts: []ast.Expr{
				&ast.Ident{
					Name: "_",
				},
			},
		},
		Token: token.COLON,
		Value: v,
	}
}

func cueIdent(name string) ast.Expr {
	return &ast.Ident{
		Name: name,
	}
}

func cueComment(msg string) *ast.Comment {
	return &ast.Comment{
		Text: "// " + msg,
	}
}

func cueCommentGroupDoc(comments ...*ast.Comment) *ast.CommentGroup {
	return &ast.CommentGroup{
		Doc:  true,
		List: comments,
	}
}

func cueAnyString() *ast.Ident {
	return &ast.Ident{Name: "string"}
}

func cueAnyStringList() *ast.ListLit {
	return ast.NewList(
		cueAnyString(),
		&ast.UnaryExpr{
			Op: token.ELLIPSIS,
			X:  cueAnyString(),
		},
	)
}

func cueAnyBool() *ast.Ident {
	return &ast.Ident{Name: "bool"}
}

func cueAnyNumber() *ast.Ident {
	return &ast.Ident{Name: "number"}
}

func cueRegex(pat string) *ast.UnaryExpr {
	return &ast.UnaryExpr{
		Op: token.MAT,
		X:  ast.NewString(pat),
	}
}
