// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package chef

#ChefDataBagResource: {
	name:     string
	api_uri?: string
	id?:      string
}
#ChefDataBagItemResource: {
	content_json:  string
	data_bag_name: string
	id?:           string
}
#ChefEnvironmentResource: {
	name: string
	cookbook_constraints?: [_]: string
	default_attributes_json?:  string
	description?:              string
	id?:                       string
	override_attributes_json?: string
}
#ChefNodeResource: {
	name:                       string
	automatic_attributes_json?: string
	default_attributes_json?:   string
	environment_name?:          string
	id?:                        string
	normal_attributes_json?:    string
	override_attributes_json?:  string
	run_list?: [string, ...]
}
#ChefRoleResource: {
	name:                      string
	default_attributes_json?:  string
	description?:              string
	id?:                       string
	override_attributes_json?: string
	run_list?: [string, ...]
}
#Resources: {
	chef_data_bag?: [_]:      #ChefDataBagResource
	chef_data_bag_item?: [_]: #ChefDataBagItemResource
	chef_environment?: [_]:   #ChefEnvironmentResource
	chef_node?: [_]:          #ChefNodeResource
	chef_role?: [_]:          #ChefRoleResource
}
