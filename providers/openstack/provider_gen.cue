// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package openstack

#Provider: openstack: {
	allow_reauth?:                  bool
	application_credential_id?:     string
	application_credential_name?:   string
	application_credential_secret?: string
	auth_url?:                      string
	cacert_file?:                   string
	cert?:                          string
	cloud?:                         string
	default_domain?:                string
	delayed_auth?:                  bool
	disable_no_cache_header?:       bool
	domain_id?:                     string
	domain_name?:                   string
	endpoint_overrides?: [_]: string
	endpoint_type?:       string
	insecure?:            bool
	key?:                 string
	max_retries?:         number
	password?:            string
	project_domain_id?:   string
	project_domain_name?: string
	region?:              string
	swauth?:              bool
	tenant_id?:           string
	tenant_name?:         string
	token?:               string
	use_octavia?:         bool
	user_domain_id?:      string
	user_domain_name?:    string
	user_id?:             string
	user_name?:           string
}
