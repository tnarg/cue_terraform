// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package skytap

#SkytapProjectDataSource: {
	name:                  string
	auto_add_role_name?:   string
	id?:                   string
	show_project_members?: bool
	summary?:              string
}
#SkytapTemplateDataSource: {
	name:         string
	id?:          string
	most_recent?: bool
}
#DataSources: {
	skytap_project?: [_]:  #SkytapProjectDataSource
	skytap_template?: [_]: #SkytapTemplateDataSource
}
