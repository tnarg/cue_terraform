// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package brightbox

#BrightboxDatabaseTypeDataSource: {
	description?: string
	disk_size?:   number
	id?:          string
	name?:        string
	ram?:         number
}
#BrightboxImageDataSource: {
	ancestor_id?:        string
	arch?:               string
	compatibility_mode?: bool
	created_at?:         string
	description?:        string
	disk_size?:          number
	id?:                 string
	licence_name?:       string
	locked?:             bool
	most_recent?:        bool
	name?:               string
	official?:           bool
	owner?:              string
	public?:             bool
	source_type?:        string
	status?:             string
	username?:           string
	virtual_size?:       number
}
#BrightboxServerGroupDataSource: {
	default?:     bool
	description?: string
	fqdn?:        string
	id?:          string
	name?:        string
}
#DataSources: {
	brightbox_database_type?: [_]: #BrightboxDatabaseTypeDataSource
	brightbox_image?: [_]:         #BrightboxImageDataSource
	brightbox_server_group?: [_]:  #BrightboxServerGroupDataSource
}
