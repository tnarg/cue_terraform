// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package nomad

#NomadAclPolicyResource: {
	name:         string
	rules_hcl:    string
	description?: string
}
#NomadAclTokenResource: {
	type:    string
	global?: bool
	name?:   string
	policies?: [string, ...]
}
#NomadJobResource: {
	jobspec:                  string
	deregister_on_destroy?:   bool
	deregister_on_id_change?: bool
	detach?:                  bool
	json?:                    bool
	policy_override?:         bool
}
#NomadNamespaceResource: {
	name:         string
	description?: string
	quota?:       string
}
#NomadQuotaSpecificationResource: {
	name:         string
	description?: string
	limits?: [{
		region: string
		region_limit?: [{
			cpu?:       number
			memory_mb?: number
		}, ...]
	}, ...]
}
#NomadSentinelPolicyResource: {
	enforcement_level: string
	name:              string
	policy:            string
	scope:             string
	description?:      string
}
#Resources: {
	nomad_acl_policy?: [_]:          #NomadAclPolicyResource
	nomad_acl_token?: [_]:           #NomadAclTokenResource
	nomad_job?: [_]:                 #NomadJobResource
	nomad_namespace?: [_]:           #NomadNamespaceResource
	nomad_quota_specification?: [_]: #NomadQuotaSpecificationResource
	nomad_sentinel_policy?: [_]:     #NomadSentinelPolicyResource
}