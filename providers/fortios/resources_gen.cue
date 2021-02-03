// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package fortios

#FortiosFirewallObjectAddressResource: {
	name:      string
	type:      string
	comment?:  string
	country?:  string
	end_ip?:   string
	fqdn?:     string
	start_ip?: string
	subnet?:   string
}
#FortiosFirewallObjectAddressgroupResource: {
	member: [string, ...]
	name:     string
	comment?: string
}
#FortiosFirewallObjectIppoolResource: {
	endip:      string
	name:       string
	startip:    string
	type:       string
	arp_reply?: string
	comments?:  string
}
#FortiosFirewallObjectServiceResource: {
	category:         string
	name:             string
	protocol:         string
	comment?:         string
	fqdn?:            string
	icmpcode?:        string
	icmptype?:        string
	iprange?:         string
	protocol_number?: string
	sctp_portrange?:  string
	tcp_portrange?:   string
	udp_portrange?:   string
}
#FortiosFirewallObjectServicegroupResource: {
	member: [string, ...]
	name:     string
	comment?: string
}
#FortiosFirewallObjectVipResource: {
	extip: string
	mappedip: [string, ...]
	name:         string
	comment?:     string
	extintf?:     string
	extport?:     string
	mappedport?:  string
	portforward?: string
	protocol?:    string
}
#FortiosFirewallObjectVipgroupResource: {
	member: [string, ...]
	name:       string
	comments?:  string
	interface?: string
}
#FortiosFirewallSecurityPolicyResource: {
	action: string
	dstaddr: [string, ...]
	dstintf: [string, ...]
	name:     string
	schedule: string
	service: [string, ...]
	srcaddr: [string, ...]
	srcintf: [string, ...]
	application_list?: string
	av_profile?:       string
	capture_packet?:   string
	comments?:         string
	devices?: [string, ...]
	dnsfilter_profile?: string
	groups?: [string, ...]
	internet_service?: string
	internet_service_id?: [number, ...]
	internet_service_src?: string
	internet_service_src_id?: [number, ...]
	ippool?:           string
	ips_sensor?:       string
	logtraffic?:       string
	logtraffic_start?: string
	nat?:              string
	poolname?: [string, ...]
	profile_protocol_options?: string
	ssl_ssh_profile?:          string
	status?:                   string
	users?: [string, ...]
	utm_status?:        string
	webfilter_profile?: string
}
#FortiosLogFortianalyzerSettingResource: {
	status:          string
	enc_algorithm?:  string
	hmac_algorithm?: string
	reliable?:       string
	server?:         string
	source_ip?:      string
	upload_option?:  string
}
#FortiosLogSyslogSettingResource: {
	status:     string
	facility?:  string
	format?:    string
	mode?:      string
	port?:      string
	server?:    string
	source_ip?: string
}
#FortiosNetworkingInterfacePortResource: {
	name:                   string
	type:                   string
	alias?:                 string
	allowaccess?:           string
	defaultgw?:             string
	description?:           string
	device_identification?: string
	distance?:              string
	dns_server_override?:   string
	interface?:             string
	ip?:                    string
	mode?:                  string
	mtu?:                   string
	mtu_override?:          string
	role?:                  string
	speed?:                 string
	status?:                string
	tcp_mss?:               string
	vdom?:                  string
	vlanid?:                string
}
#FortiosNetworkingRouteStaticResource: {
	device:     string
	dst:        string
	gateway:    string
	blackhole?: string
	comment?:   string
	distance?:  string
	priority?:  string
	weight?:    string
}
#FortiosSystemAdminAdministratorResource: {
	accprofile: string
	name:       string
	password:   string
	vdom: [string, ...]
	comments?:    string
	trusthost1?:  string
	trusthost10?: string
	trusthost2?:  string
	trusthost3?:  string
	trusthost4?:  string
	trusthost5?:  string
	trusthost6?:  string
	trusthost7?:  string
	trusthost8?:  string
	trusthost9?:  string
}
#FortiosSystemAdminProfilesResource: {
	name:                   string
	admintimeout_override?: string
	authgrp?:               string
	comments?:              string
	ftviewgrp?:             string
	fwgrp?:                 string
	loggrp?:                string
	netgrp?:                string
	scope?:                 string
	secfabgrp?:             string
	sysgrp?:                string
	utmgrp?:                string
	vpngrp?:                string
	wanoptgrp?:             string
	wifi?:                  string
}
#FortiosSystemApiuserSettingResource: {
	accprofile: string
	name:       string
	vdom: [string, ...]
	comments?: string
	trusthost?: [{
		ipv4_trusthost: string
		type:           string
	}, ...]
}
#FortiosSystemLicenseForticareResource: registration_code: string
#FortiosSystemLicenseVdomResource: license:                string
#FortiosSystemLicenseVmResource: file_content:             string
#FortiosSystemSettingDnsResource: {
	primary?:   string
	secondary?: string
}
#FortiosSystemSettingGlobalResource: {
	hostname:        string
	admin_sport?:    string
	admin_ssh_port?: string
	admintimeout?:   string
	timezone?:       string
}
#FortiosSystemSettingNtpResource: {
	type: string
	ntpserver?: [string, ...]
	ntpsync?: string
}
#FortiosSystemVdomSettingResource: {
	name:        string
	short_name?: string
	temporary?:  string
}
#FortiosVpnIpsecPhase1InterfaceResource: {
	interface:          string
	name:               string
	psksecret:          string
	remote_gw:          string
	type:               string
	authmethod?:        string
	authmethod_remote?: string
	certificate?: [string, ...]
	comments?:              string
	ipv4_split_exclude?:    string
	ipv4_split_include?:    string
	mode_cfg?:              string
	peer?:                  string
	peergrp?:               string
	peerid?:                string
	peertype?:              string
	proposal?:              string
	split_include_service?: string
	wizard_type?:           string
}
#FortiosVpnIpsecPhase2InterfaceResource: {
	name:           string
	phase1name:     string
	comments?:      string
	dst_addr_type?: string
	dst_end_ip?:    string
	dst_name?:      string
	dst_start_ip?:  string
	dst_subnet?:    string
	proposal?:      string
	src_addr_type?: string
	src_end_ip?:    string
	src_name?:      string
	src_start_ip?:  string
	src_subnet?:    string
}
#Resources: {
	fortios_firewall_object_address?: [_]:      #FortiosFirewallObjectAddressResource
	fortios_firewall_object_addressgroup?: [_]: #FortiosFirewallObjectAddressgroupResource
	fortios_firewall_object_ippool?: [_]:       #FortiosFirewallObjectIppoolResource
	fortios_firewall_object_service?: [_]:      #FortiosFirewallObjectServiceResource
	fortios_firewall_object_servicegroup?: [_]: #FortiosFirewallObjectServicegroupResource
	fortios_firewall_object_vip?: [_]:          #FortiosFirewallObjectVipResource
	fortios_firewall_object_vipgroup?: [_]:     #FortiosFirewallObjectVipgroupResource
	fortios_firewall_security_policy?: [_]:     #FortiosFirewallSecurityPolicyResource
	fortios_log_fortianalyzer_setting?: [_]:    #FortiosLogFortianalyzerSettingResource
	fortios_log_syslog_setting?: [_]:           #FortiosLogSyslogSettingResource
	fortios_networking_interface_port?: [_]:    #FortiosNetworkingInterfacePortResource
	fortios_networking_route_static?: [_]:      #FortiosNetworkingRouteStaticResource
	fortios_system_admin_administrator?: [_]:   #FortiosSystemAdminAdministratorResource
	fortios_system_admin_profiles?: [_]:        #FortiosSystemAdminProfilesResource
	fortios_system_apiuser_setting?: [_]:       #FortiosSystemApiuserSettingResource
	fortios_system_license_forticare?: [_]:     #FortiosSystemLicenseForticareResource
	fortios_system_license_vdom?: [_]:          #FortiosSystemLicenseVdomResource
	fortios_system_license_vm?: [_]:            #FortiosSystemLicenseVmResource
	fortios_system_setting_dns?: [_]:           #FortiosSystemSettingDnsResource
	fortios_system_setting_global?: [_]:        #FortiosSystemSettingGlobalResource
	fortios_system_setting_ntp?: [_]:           #FortiosSystemSettingNtpResource
	fortios_system_vdom_setting?: [_]:          #FortiosSystemVdomSettingResource
	fortios_vpn_ipsec_phase1interface?: [_]:    #FortiosVpnIpsecPhase1InterfaceResource
	fortios_vpn_ipsec_phase2interface?: [_]:    #FortiosVpnIpsecPhase2InterfaceResource
}