package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"path/filepath"
	"sort"

	"cuelang.org/go/cue/ast"
	"cuelang.org/go/cue/format"
	"github.com/iancoleman/strcase"
	"github.com/zclconf/go-cty/cty"
)

const codegenComment = "Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT."

type Schemas struct {
	FormatVersion   string                     `json:"format_version"`
	ProviderSchemas map[string]*ProviderSchema `json:"provider_schemas"`
}

func (s *Schemas) ToCue() []*ast.File {
	var files []*ast.File
	for pname, pschema := range s.ProviderSchemas {
		pkg := cuePackage(pname)
		pkg.AddComment(cueCommentGroupDoc(cueComment(codegenComment)))

		// provider.cue
		{
			var decls []ast.Decl
			decls = append(decls, pkg)

			var body ast.Expr
			if pschema.Provider == nil {
				body = cueStruct(nil)
			} else {
				body = pschema.Provider.ToCue()
			}
			decls = append(decls, cueField(
				"#Provider",
				cueStruct(map[string]ast.Expr{pname: body}),
			))

			files = append(files, &ast.File{
				Filename: fmt.Sprintf("providers/%s/provider_gen.cue", pname),
				Decls:    decls,
			})
		}

		// resources_gen.cue
		{
			var decls []ast.Decl
			decls = append(decls, pkg)

			var rnames []string
			for rname := range pschema.Resources {
				rnames = append(rnames, rname)
			}
			sort.Strings(rnames)

			fields := make(map[string]ast.Expr)
			for _, rname := range rnames {
				block := pschema.Resources[rname]
				defName := "#" + strcase.ToCamel(rname) + "Resource"
				decls = append(decls, cueField(defName, block.ToCue()))
				fields[rname+"?"] = cueAnyStruct(cueIdent(defName))
			}

			decls = append(decls, cueField(
				"#Resources",
				cueStruct(fields),
			))

			files = append(files, &ast.File{
				Filename: fmt.Sprintf("providers/%s/resources_gen.cue", pname),
				Decls:    decls,
			})
		}

		// data_gen.cue
		{
			var decls []ast.Decl
			decls = append(decls, pkg)

			var dnames []string
			for dname := range pschema.DataSources {
				dnames = append(dnames, dname)
			}
			sort.Strings(dnames)

			fields := make(map[string]ast.Expr)
			for _, dname := range dnames {
				block := pschema.DataSources[dname]
				defName := "#" + strcase.ToCamel(dname) + "DataSource"
				decls = append(decls, cueField(defName, block.ToCue()))
				fields[dname+"?"] = cueAnyStruct(cueIdent(defName))
			}

			decls = append(decls, cueField(
				"#DataSources",
				cueStruct(fields),
			))

			files = append(files, &ast.File{
				Filename: fmt.Sprintf("providers/%s/data_sources_gen.cue", pname),
				Decls:    decls,
			})
		}
	}
	return files
}

type ProviderSchema struct {
	Provider    *VersionedBlock            `json:"provider"`
	Resources   map[string]*VersionedBlock `json:"resource_schemas,omitempty"`
	DataSources map[string]*VersionedBlock `json:"data_source_schemas,omitempty"`
}

type VersionedBlock struct {
	Version int    `json:"version"`
	Block   *Block `json:"block"`
}

func (vb *VersionedBlock) ToCue() ast.Expr {
	return vb.Block.ToCue()
}

type Block struct {
	Attributes map[string]*Attribute   `json:"attributes"`
	BlockTypes map[string]*NestedBlock `json:"block_types"`
}

func (b *Block) ToCue() ast.Expr {
	var required []string
	var optional []string
	for k, attr := range b.Attributes {
		switch k[0] {
		case '0':
			break
		case '1':
			break
		case '2':
			break
		case '3':
			break
		case '4':
			break
		case '5':
			break
		case '6':
			break
		case '7':
			break
		case '8':
			break
		case '9':
			break
		case '_':
			break
		default:
			if attr.Computed || attr.Optional {
				optional = append(optional, k)
			} else {
				required = append(required, k)
			}
		}
	}
	sort.Strings(required)
	sort.Strings(optional)

	var elts []ast.Decl
	for _, k := range required {
		elts = append(elts, cueField(k, typeExpr(b.Attributes[k].Type)))
	}

	for _, k := range optional {
		elts = append(elts, cueFieldOpt(k, typeExpr(b.Attributes[k].Type)))
	}

	var block []string
	for k := range b.BlockTypes {
		block = append(block, k)
	}
	sort.Strings(block)
	for _, k := range block {
		elts = append(elts, cueFieldOpt(k, b.BlockTypes[k].ToCue()))
	}

	return &ast.StructLit{
		Elts: elts,
	}
}

type NestingMode string

const (
	NestingModeSingle = "single"
	NestingModeList   = "list"
	NestingModeSet    = "set"
	NestingModeMap    = "map"
)

type NestedBlock struct {
	NestingMode NestingMode `json:"nesting_mode"`
	Block       Block
	MaxItems    int `json:"max_items,omitempty"`
}

func (nb *NestedBlock) ToCue() ast.Expr {
	switch nb.NestingMode {
	case NestingModeSingle:
		return nb.Block.ToCue()
	case NestingModeList:
		return &ast.ListLit{
			Elts: []ast.Expr{
				nb.Block.ToCue(),
				&ast.Ellipsis{},
			},
		}
	case NestingModeSet:
		return &ast.ListLit{
			Elts: []ast.Expr{
				nb.Block.ToCue(),
				&ast.Ellipsis{},
			},
		}
	case NestingModeMap:
		return cueAnyStruct(nb.Block.ToCue())
	default:
		panic("never")
	}
}

type Attribute struct {
	Type        cty.Type `json:"type"`
	Description string   `json:"description,omitempty"`
	Optional    bool     `json:"optional"`
	Computed    bool     `json:"computed"`
}

func typeExpr(t cty.Type) ast.Expr {
	if t.IsPrimitiveType() {
		return &ast.Ident{
			Name: t.FriendlyName(),
		}
	} else if t.IsListType() {
		return &ast.ListLit{
			Elts: []ast.Expr{
				typeExpr(t.ElementType()),
				&ast.Ellipsis{},
			},
		}
	} else if t.IsSetType() {
		return &ast.ListLit{
			Elts: []ast.Expr{
				typeExpr(t.ElementType()),
				&ast.Ellipsis{},
			},
		}
	} else if t.IsMapType() {
		return cueAnyStruct(typeExpr(t.ElementType()))
	} else if t.IsObjectType() {
		var keys []string
		atypes := t.AttributeTypes()
		for k := range atypes {
			keys = append(keys, k)
		}
		sort.Strings(keys)

		var elts []ast.Decl
		for _, k := range keys {
			v := atypes[k]
			elts = append(elts, cueField(k, typeExpr(v)))
		}
		return &ast.StructLit{
			Elts: elts,
		}
	} else {
		return &ast.StructLit{}
	}
}

func main() {
	data, err := ioutil.ReadFile(os.Args[1])
	if err != nil {
		log.Fatal(err)
	}

	var schemas Schemas
	if err := json.Unmarshal(data, &schemas); err != nil {
		log.Fatal(err)
	}

	files := schemas.ToCue()
	for _, file := range files {
		dir := filepath.Dir(file.Filename)
		if err := os.MkdirAll(dir, 0755); err != nil {
			log.Fatal(err)
		}

		odata, err := format.Node(file, format.Simplify())
		if err != nil {
			log.Fatal(err)
		}

		if err := ioutil.WriteFile(file.Filename, odata, 0600); err != nil {
			log.Fatal(err)
		}
		log.Printf("Wrote %s", file.Filename)
	}
}
