// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package github

#GithubActionsSecretResource: {
	plaintext_value: string
	repository:      string
	secret_name:     string
	created_at?:     string
	id?:             string
	updated_at?:     string
}
#GithubBranchResource: {
	branch:         string
	repository:     string
	etag?:          string
	id?:            string
	ref?:           string
	sha?:           string
	source_branch?: string
	source_sha?:    string
}
#GithubBranchProtectionResource: {
	branch:                  string
	repository:              string
	enforce_admins?:         bool
	etag?:                   string
	id?:                     string
	require_signed_commits?: bool
	required_pull_request_reviews?: [{
		dismiss_stale_reviews?: bool
		dismissal_teams?: [string, ...]
		dismissal_users?: [string, ...]
		include_admins?:                  bool
		require_code_owner_reviews?:      bool
		required_approving_review_count?: number
	}, ...]
	required_status_checks?: [{
		contexts?: [string, ...]
		include_admins?: bool
		strict?:         bool
	}, ...]
	restrictions?: [{
		apps?: [string, ...]
		teams?: [string, ...]
		users?: [string, ...]
	}, ...]
}
#GithubIssueLabelResource: {
	color:        string
	name:         string
	repository:   string
	description?: string
	etag?:        string
	id?:          string
	url?:         string
}
#GithubMembershipResource: {
	username: string
	etag?:    string
	id?:      string
	role?:    string
}
#GithubOrganizationBlockResource: {
	username: string
	etag?:    string
	id?:      string
}
#GithubOrganizationProjectResource: {
	name:  string
	body?: string
	etag?: string
	id?:   string
	url?:  string
}
#GithubOrganizationWebhookResource: {
	events: [string, ...]
	active?: bool
	etag?:   string
	id?:     string
	name?:   string
	url?:    string
	configuration?: [{
		url:           string
		content_type?: string
		insecure_ssl?: bool
		secret?:       string
	}, ...]
}
#GithubProjectColumnResource: {
	name:       string
	project_id: string
	etag?:      string
	id?:        string
}
#GithubRepositoryResource: {
	name:                    string
	allow_merge_commit?:     bool
	allow_rebase_merge?:     bool
	allow_squash_merge?:     bool
	archived?:               bool
	auto_init?:              bool
	default_branch?:         string
	delete_branch_on_merge?: bool
	description?:            string
	etag?:                   string
	full_name?:              string
	git_clone_url?:          string
	gitignore_template?:     string
	has_downloads?:          bool
	has_issues?:             bool
	has_projects?:           bool
	has_wiki?:               bool
	homepage_url?:           string
	html_url?:               string
	http_clone_url?:         string
	id?:                     string
	is_template?:            bool
	license_template?:       string
	node_id?:                string
	private?:                bool
	ssh_clone_url?:          string
	svn_url?:                string
	topics?: [string, ...]
	template?: [{
		owner:      string
		repository: string
	}, ...]
}
#GithubRepositoryCollaboratorResource: {
	repository:     string
	username:       string
	id?:            string
	invitation_id?: string
	permission?:    string
}
#GithubRepositoryDeployKeyResource: {
	key:        string
	repository: string
	title:      string
	etag?:      string
	id?:        string
	read_only?: bool
}
#GithubRepositoryFileResource: {
	content:         string
	file:            string
	repository:      string
	branch?:         string
	commit_author?:  string
	commit_email?:   string
	commit_message?: string
	id?:             string
	sha?:            string
}
#GithubRepositoryProjectResource: {
	name:       string
	repository: string
	body?:      string
	etag?:      string
	id?:        string
	url?:       string
}
#GithubRepositoryWebhookResource: {
	events: [string, ...]
	repository: string
	active?:    bool
	etag?:      string
	id?:        string
	name?:      string
	url?:       string
	configuration?: [{
		url:           string
		content_type?: string
		insecure_ssl?: bool
		secret?:       string
	}, ...]
}
#GithubTeamResource: {
	name:            string
	description?:    string
	etag?:           string
	id?:             string
	ldap_dn?:        string
	node_id?:        string
	parent_team_id?: number
	privacy?:        string
	slug?:           string
}
#GithubTeamMembershipResource: {
	team_id:  string
	username: string
	etag?:    string
	id?:      string
	role?:    string
}
#GithubTeamRepositoryResource: {
	repository:  string
	team_id:     string
	etag?:       string
	id?:         string
	permission?: string
}
#GithubTeamSyncGroupMappingResource: {
	team_slug: string
	etag?:     string
	id?:       string
	group?: [{
		group_description: string
		group_id:          string
		group_name:        string
	}, ...]
}
#GithubUserGpgKeyResource: {
	armored_public_key: string
	etag?:              string
	id?:                string
	key_id?:            string
}
#GithubUserInvitationAccepterResource: {
	invitation_id: string
	id?:           string
}
#GithubUserSshKeyResource: {
	key:   string
	title: string
	etag?: string
	id?:   string
	url?:  string
}
#Resources: {
	github_actions_secret?: [_]:           #GithubActionsSecretResource
	github_branch?: [_]:                   #GithubBranchResource
	github_branch_protection?: [_]:        #GithubBranchProtectionResource
	github_issue_label?: [_]:              #GithubIssueLabelResource
	github_membership?: [_]:               #GithubMembershipResource
	github_organization_block?: [_]:       #GithubOrganizationBlockResource
	github_organization_project?: [_]:     #GithubOrganizationProjectResource
	github_organization_webhook?: [_]:     #GithubOrganizationWebhookResource
	github_project_column?: [_]:           #GithubProjectColumnResource
	github_repository?: [_]:               #GithubRepositoryResource
	github_repository_collaborator?: [_]:  #GithubRepositoryCollaboratorResource
	github_repository_deploy_key?: [_]:    #GithubRepositoryDeployKeyResource
	github_repository_file?: [_]:          #GithubRepositoryFileResource
	github_repository_project?: [_]:       #GithubRepositoryProjectResource
	github_repository_webhook?: [_]:       #GithubRepositoryWebhookResource
	github_team?: [_]:                     #GithubTeamResource
	github_team_membership?: [_]:          #GithubTeamMembershipResource
	github_team_repository?: [_]:          #GithubTeamRepositoryResource
	github_team_sync_group_mapping?: [_]:  #GithubTeamSyncGroupMappingResource
	github_user_gpg_key?: [_]:             #GithubUserGpgKeyResource
	github_user_invitation_accepter?: [_]: #GithubUserInvitationAccepterResource
	github_user_ssh_key?: [_]:             #GithubUserSshKeyResource
}
