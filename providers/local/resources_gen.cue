// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package local

#LocalFileResource: {
	filename:              string
	content?:              string
	content_base64?:       string
	directory_permission?: string
	file_permission?:      string
	sensitive_content?:    string
}
#Resources: local_file?: [_]: #LocalFileResource