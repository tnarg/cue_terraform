// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package template

#TemplateCloudinitConfigResource: {
	base64_encode?: bool
	gzip?:          bool
	part?: [{
		content:       string
		content_type?: string
		filename?:     string
		merge_type?:   string
	}, ...]
}
#TemplateDirResource: {
	destination_dir: string
	source_dir:      string
	vars?: [_]: string
}
#TemplateFileResource: {
	filename?: string
	template?: string
	vars?: [_]: string
}
#Resources: {
	template_cloudinit_config?: [_]: #TemplateCloudinitConfigResource
	template_dir?: [_]:              #TemplateDirResource
	template_file?: [_]:             #TemplateFileResource
}