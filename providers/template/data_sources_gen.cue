// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package template

#TemplateCloudinitConfigDataSource: {
	base64_encode?: bool
	gzip?:          bool
	part?: [{
		content:       string
		content_type?: string
		filename?:     string
		merge_type?:   string
	}, ...]
}
#TemplateFileDataSource: {
	filename?: string
	template?: string
	vars?: [_]: string
}
#DataSources: {
	template_cloudinit_config?: [_]: #TemplateCloudinitConfigDataSource
	template_file?: [_]:             #TemplateFileDataSource
}