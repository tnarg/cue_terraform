// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package helm

#HelmReleaseResource: {
	chart:                       string
	name:                        string
	atomic?:                     bool
	cleanup_on_fail?:            bool
	create_namespace?:           bool
	dependency_update?:          bool
	description?:                string
	devel?:                      bool
	disable_crd_hooks?:          bool
	disable_openapi_validation?: bool
	disable_webhooks?:           bool
	force_update?:               bool
	id?:                         string
	keyring?:                    string
	lint?:                       bool
	max_history?:                number
	metadata?: [{
		app_version: string
		chart:       string
		name:        string
		namespace:   string
		revision:    number
		values:      string
		version:     string
	}, ...]
	namespace?:             string
	recreate_pods?:         bool
	render_subchart_notes?: bool
	replace?:               bool
	repository?:            string
	repository_ca_file?:    string
	repository_cert_file?:  string
	repository_key_file?:   string
	repository_password?:   string
	repository_username?:   string
	reset_values?:          bool
	reuse_values?:          bool
	skip_crds?:             bool
	status?:                string
	timeout?:               number
	values?: [string, ...]
	verify?:  bool
	version?: string
	wait?:    bool
	postrender?: [{
		binary_path: string
	}, ...]
	set?: [{
		name:  string
		value: string
		type?: string
	}, ...]
	set_sensitive?: [{
		name:  string
		value: string
		type?: string
	}, ...]
	set_string?: [{
		name:  string
		value: string
	}, ...]
}
#HelmRepositoryResource: {
	name:       string
	url:        string
	ca_file?:   string
	cert_file?: string
	id?:        string
	key_file?:  string
	metadata?: [{
		name: string
		url:  string
	}, ...]
	password?: string
	username?: string
}
#Resources: {
	helm_release?: [_]:    #HelmReleaseResource
	helm_repository?: [_]: #HelmRepositoryResource
}
