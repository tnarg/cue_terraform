// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package cloudflare

#CloudflareApiTokenPermissionGroupsDataSource: {
	id?: string
	permissions?: [_]: string
}
#CloudflareIpRangesDataSource: {
	china_ipv4_cidr_blocks?: [string, ...]
	china_ipv6_cidr_blocks?: [string, ...]
	cidr_blocks?: [string, ...]
	id?: string
	ipv4_cidr_blocks?: [string, ...]
	ipv6_cidr_blocks?: [string, ...]
}
#CloudflareWafGroupsDataSource: {
	zone_id: string
	groups?: [{
		description:          string
		id:                   string
		mode:                 string
		modified_rules_count: number
		name:                 string
		package_id:           string
		rules_count:          number
	}, ...]
	id?:         string
	package_id?: string
	filter?: [{
		mode?: string
		name?: string
	}, ...]
}
#CloudflareWafPackagesDataSource: {
	zone_id: string
	id?:     string
	packages?: [{
		action_mode:    string
		description:    string
		detection_mode: string
		id:             string
		name:           string
		sensitivity:    string
	}, ...]
	filter?: [{
		action_mode?:    string
		detection_mode?: string
		name?:           string
		sensitivity?:    string
	}, ...]
}
#CloudflareWafRulesDataSource: {
	zone_id:     string
	id?:         string
	package_id?: string
	rules?: [{
		allowed_modes: [string, ...]
		description: string
		group_id:    string
		group_name:  string
		id:          string
		mode:        string
		package_id:  string
		priority:    string
	}, ...]
	filter?: [{
		description?: string
		group_id?:    string
		mode?:        string
	}, ...]
}
#CloudflareZoneDnssecDataSource: {
	zone_id:           string
	algorithm?:        string
	digest?:           string
	digest_algorithm?: string
	digest_type?:      string
	ds?:               string
	flags?:            number
	id?:               string
	key_tag?:          number
	key_type?:         string
	public_key?:       string
	status?:           string
}
#CloudflareZonesDataSource: {
	id?: string
	zones?: [{
		id:   string
		name: string
	}, ...]
	filter?: [{
		lookup_type?: string
		match?:       string
		name?:        string
		paused?:      bool
		status?:      string
	}, ...]
}
#DataSources: {
	cloudflare_api_token_permission_groups?: [_]: #CloudflareApiTokenPermissionGroupsDataSource
	cloudflare_ip_ranges?: [_]:                   #CloudflareIpRangesDataSource
	cloudflare_waf_groups?: [_]:                  #CloudflareWafGroupsDataSource
	cloudflare_waf_packages?: [_]:                #CloudflareWafPackagesDataSource
	cloudflare_waf_rules?: [_]:                   #CloudflareWafRulesDataSource
	cloudflare_zone_dnssec?: [_]:                 #CloudflareZoneDnssecDataSource
	cloudflare_zones?: [_]:                       #CloudflareZonesDataSource
}
