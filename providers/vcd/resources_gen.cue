// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package vcd

#VcdCatalogResource: {
	delete_force:     bool
	delete_recursive: bool
	name:             string
	created?:         string
	description?:     string
	id?:              string
	org?:             string
}
#VcdCatalogItemResource: {
	catalog:      string
	name:         string
	ova_path:     string
	created?:     string
	description?: string
	id?:          string
	metadata?: [_]: string
	org?:                  string
	show_upload_progress?: bool
	upload_piece_size?:    number
}
#VcdCatalogMediaResource: {
	catalog:        string
	media_path:     string
	name:           string
	creation_date?: string
	description?:   string
	id?:            string
	is_iso?:        bool
	is_published?:  bool
	metadata?: [_]: string
	org?:                  string
	owner_name?:           string
	show_upload_progress?: bool
	size?:                 number
	status?:               string
	storage_profile_name?: string
	upload_piece_size?:    number
}
#VcdDnatResource: {
	edge_gateway:     string
	external_ip:      string
	internal_ip:      string
	description?:     string
	icmp_sub_type?:   string
	id?:              string
	network_name?:    string
	network_type?:    string
	org?:             string
	port?:            number
	protocol?:        string
	translated_port?: number
	vdc?:             string
}
#VcdEdgegatewayResource: {
	configuration:                string
	name:                         string
	advanced?:                    bool
	default_external_network_ip?: string
	default_gateway_network?:     string
	description?:                 string
	distributed_routing?:         bool
	external_network_ips?: [string, ...]
	external_networks?: [string, ...]
	fips_mode_enabled?:               bool
	fw_default_rule_action?:          string
	fw_default_rule_logging_enabled?: bool
	fw_enabled?:                      bool
	ha_enabled?:                      bool
	id?:                              string
	lb_acceleration_enabled?:         bool
	lb_enabled?:                      bool
	lb_logging_enabled?:              bool
	lb_loglevel?:                     string
	org?:                             string
	use_default_route_for_dns_relay?: bool
	vdc?:                             string
	external_network?: [{
		name:                 string
		enable_rate_limit?:   bool
		incoming_rate_limit?: number
		outgoing_rate_limit?: number
		subnet?: [{
			gateway:                string
			netmask:                string
			ip_address?:            string
			use_for_default_route?: bool
			suballocate_pool?: [{
				end_address:   string
				start_address: string
			}, ...]
		}, ...]
	}, ...]
}
#VcdEdgegatewayVpnResource: {
	edge_gateway:        string
	encryption_protocol: string
	local_id:            string
	local_ip_address:    string
	mtu:                 number
	name:                string
	peer_id:             string
	peer_ip_address:     string
	shared_secret:       string
	description?:        string
	id?:                 string
	org?:                string
	vdc?:                string
	local_subnets?: [{
		local_subnet_gateway: string
		local_subnet_mask:    string
		local_subnet_name:    string
	}, ...]
	peer_subnets?: [{
		peer_subnet_gateway: string
		peer_subnet_mask:    string
		peer_subnet_name:    string
	}, ...]
}
#VcdExternalNetworkResource: {
	name:                                string
	description?:                        string
	id?:                                 string
	retain_net_info_across_deployments?: bool
	ip_scope?: [{
		gateway:     string
		netmask:     string
		dns1?:       string
		dns2?:       string
		dns_suffix?: string
		static_ip_pool?: [{
			end_address:   string
			start_address: string
		}, ...]
	}, ...]
	vsphere_network?: [{
		name:    string
		type:    string
		vcenter: string
	}, ...]
}
#VcdFirewallRulesResource: {
	default_action: string
	edge_gateway:   string
	id?:            string
	org?:           string
	vdc?:           string
	rule?: [{
		description:      string
		destination_ip:   string
		destination_port: string
		policy:           string
		protocol:         string
		source_ip:        string
		source_port:      string
		id?:              string
	}, ...]
}
#VcdIndependentDiskResource: {
	name:             string
	size:             number
	bus_sub_type?:    string
	bus_type?:        string
	datastore_name?:  string
	description?:     string
	id?:              string
	iops?:            number
	is_attached?:     bool
	org?:             string
	owner_name?:      string
	storage_profile?: string
	vdc?:             string
}
#VcdInsertedMediaResource: {
	catalog:      string
	name:         string
	vapp_name:    string
	vm_name:      string
	eject_force?: bool
	id?:          string
	org?:         string
	vdc?:         string
}
#VcdLbAppProfileResource: {
	edge_gateway:                    string
	name:                            string
	type:                            string
	cookie_mode?:                    string
	cookie_name?:                    string
	enable_pool_side_ssl?:           bool
	enable_ssl_passthrough?:         bool
	expiration?:                     number
	http_redirect_url?:              string
	id?:                             string
	insert_x_forwarded_http_header?: bool
	org?:                            string
	persistence_mechanism?:          string
	vdc?:                            string
}
#VcdLbAppRuleResource: {
	edge_gateway: string
	name:         string
	script:       string
	id?:          string
	org?:         string
	vdc?:         string
}
#VcdLbServerPoolResource: {
	algorithm:             string
	edge_gateway:          string
	name:                  string
	algorithm_parameters?: string
	description?:          string
	enable_transparency?:  bool
	id?:                   string
	monitor_id?:           string
	org?:                  string
	vdc?:                  string
	member?: [{
		condition:        string
		ip_address:       string
		monitor_port:     number
		name:             string
		port:             number
		weight:           number
		id?:              string
		max_connections?: number
		min_connections?: number
	}, ...]
}
#VcdLbServiceMonitorResource: {
	edge_gateway: string
	name:         string
	type:         string
	expected?:    string
	extension?: [_]: string
	id?:          string
	interval?:    number
	max_retries?: number
	method?:      string
	org?:         string
	receive?:     string
	send?:        string
	timeout?:     number
	url?:         string
	vdc?:         string
}
#VcdLbVirtualServerResource: {
	edge_gateway:    string
	ip_address:      string
	name:            string
	port:            number
	protocol:        string
	app_profile_id?: string
	app_rule_ids?: [string, ...]
	connection_limit?:      number
	connection_rate_limit?: number
	description?:           string
	enable_acceleration?:   bool
	enabled?:               bool
	id?:                    string
	org?:                   string
	server_pool_id?:        string
	vdc?:                   string
}
#VcdNetworkResource: {
	edge_gateway:    string
	name:            string
	description?:    string
	dns1?:           string
	dns2?:           string
	dns_suffix?:     string
	gateway?:        string
	href?:           string
	id?:             string
	interface_type?: string
	netmask?:        string
	org?:            string
	shared?:         bool
	vdc?:            string
	dhcp_pool?: [{
		end_address:         string
		start_address:       string
		default_lease_time?: number
		max_lease_time?:     number
	}, ...]
	static_ip_pool?: [{
		end_address:   string
		start_address: string
	}, ...]
}
#VcdNetworkDirectResource: {
	external_network:             string
	name:                         string
	description?:                 string
	external_network_dns1?:       string
	external_network_dns2?:       string
	external_network_dns_suffix?: string
	external_network_gateway?:    string
	external_network_netmask?:    string
	href?:                        string
	id?:                          string
	org?:                         string
	shared?:                      bool
	vdc?:                         string
}
#VcdNetworkIsolatedResource: {
	name:         string
	description?: string
	dns1?:        string
	dns2?:        string
	dns_suffix?:  string
	gateway?:     string
	href?:        string
	id?:          string
	netmask?:     string
	org?:         string
	shared?:      bool
	vdc?:         string
	dhcp_pool?: [{
		end_address:         string
		start_address:       string
		default_lease_time?: number
		max_lease_time?:     number
	}, ...]
	static_ip_pool?: [{
		end_address:   string
		start_address: string
	}, ...]
}
#VcdNetworkRoutedResource: {
	edge_gateway:    string
	name:            string
	description?:    string
	dns1?:           string
	dns2?:           string
	dns_suffix?:     string
	gateway?:        string
	href?:           string
	id?:             string
	interface_type?: string
	netmask?:        string
	org?:            string
	shared?:         bool
	vdc?:            string
	dhcp_pool?: [{
		end_address:         string
		start_address:       string
		default_lease_time?: number
		max_lease_time?:     number
	}, ...]
	static_ip_pool?: [{
		end_address:   string
		start_address: string
	}, ...]
}
#VcdNsxvDhcpRelayResource: {
	edge_gateway: string
	domain_names?: [string, ...]
	id?: string
	ip_addresses?: [string, ...]
	ip_sets?: [string, ...]
	org?: string
	vdc?: string
	relay_agent?: [{
		network_name:        string
		gateway_ip_address?: string
	}, ...]
}
#VcdNsxvDnatResource: {
	edge_gateway:        string
	network_name:        string
	network_type:        string
	original_address:    string
	description?:        string
	enabled?:            bool
	icmp_type?:          string
	id?:                 string
	logging_enabled?:    bool
	org?:                string
	original_port?:      string
	protocol?:           string
	rule_tag?:           number
	rule_type?:          string
	translated_address?: string
	translated_port?:    string
	vdc?:                string
}
#VcdNsxvFirewallRuleResource: {
	edge_gateway:     string
	above_rule_id?:   string
	action?:          string
	enabled?:         bool
	id?:              string
	logging_enabled?: bool
	name?:            string
	org?:             string
	rule_tag?:        number
	rule_type?:       string
	vdc?:             string
	destination?: [{
		exclude?: bool
		gateway_interfaces?: [string, ...]
		ip_addresses?: [string, ...]
		ip_sets?: [string, ...]
		org_networks?: [string, ...]
		virtual_machine_ids?: [string, ...]
	}, ...]
	service?: [{
		protocol:     string
		port?:        string
		source_port?: string
	}, ...]
	source?: [{
		exclude?: bool
		gateway_interfaces?: [string, ...]
		ip_addresses?: [string, ...]
		ip_sets?: [string, ...]
		org_networks?: [string, ...]
		virtual_machine_ids?: [string, ...]
	}, ...]
}
#VcdNsxvIpSetResource: {
	ip_addresses: [string, ...]
	name:                    string
	description?:            string
	id?:                     string
	is_inheritance_allowed?: bool
	org?:                    string
	vdc?:                    string
}
#VcdNsxvSnatResource: {
	edge_gateway:        string
	network_name:        string
	network_type:        string
	original_address:    string
	description?:        string
	enabled?:            bool
	id?:                 string
	logging_enabled?:    bool
	org?:                string
	rule_tag?:           number
	rule_type?:          string
	translated_address?: string
	vdc?:                string
}
#VcdOrgResource: {
	delete_force:                  bool
	delete_recursive:              bool
	full_name:                     string
	name:                          string
	can_publish_catalogs?:         bool
	delay_after_power_on_seconds?: number
	deployed_vm_quota?:            number
	description?:                  string
	id?:                           string
	is_enabled?:                   bool
	stored_vm_quota?:              number
	vapp_lease?: [{
		delete_on_storage_lease_expiration:    bool
		maximum_runtime_lease_in_sec:          number
		maximum_storage_lease_in_sec:          number
		power_off_on_runtime_lease_expiration: bool
	}, ...]
	vapp_template_lease?: [{
		delete_on_storage_lease_expiration: bool
		maximum_storage_lease_in_sec:       number
	}, ...]
}
#VcdOrgGroupResource: {
	name:          string
	provider_type: string
	role:          string
	description?:  string
	id?:           string
	org?:          string
}
#VcdOrgUserResource: {
	name:               string
	role:               string
	deployed_vm_quota?: number
	description?:       string
	email_address?:     string
	enabled?:           bool
	full_name?:         string
	id?:                string
	instant_messaging?: string
	is_group_role?:     bool
	is_locked?:         bool
	org?:               string
	password?:          string
	password_file?:     string
	provider_type?:     string
	stored_vm_quota?:   number
	take_ownership?:    bool
	telephone?:         string
}
#VcdOrgVdcResource: {
	allocation_model:            string
	delete_force:                bool
	delete_recursive:            bool
	name:                        string
	provider_vdc_name:           string
	allow_over_commit?:          bool
	cpu_guaranteed?:             number
	cpu_speed?:                  number
	description?:                string
	elasticity?:                 bool
	enable_fast_provisioning?:   bool
	enable_thin_provisioning?:   bool
	enable_vm_discovery?:        bool
	enabled?:                    bool
	id?:                         string
	include_vm_memory_overhead?: bool
	memory_guaranteed?:          number
	metadata?: [_]: string
	network_pool_name?: string
	network_quota?:     number
	nic_quota?:         number
	org?:               string
	vm_quota?:          number
	compute_capacity?: [{
		cpu?: [{
			allocated?: number
			limit?:     number
			reserved?:  number
			used?:      number
		}, ...]
		memory?: [{
			allocated?: number
			limit?:     number
			reserved?:  number
			used?:      number
		}, ...]
	}, ...]
	storage_profile?: [{
		default:  bool
		limit:    number
		name:     string
		enabled?: bool
	}, ...]
}
#VcdSnatResource: {
	edge_gateway:  string
	external_ip:   string
	internal_ip:   string
	description?:  string
	id?:           string
	network_name?: string
	network_type?: string
	org?:          string
	vdc?:          string
}
#VcdVappResource: {
	name:              string
	accept_all_eulas?: bool
	catalog_name?:     string
	cpus?:             number
	description?:      string
	guest_properties?: [_]: string
	href?:       string
	id?:         string
	initscript?: string
	ip?:         string
	memory?:     number
	metadata?: [_]: string
	network_name?: string
	org?:          string
	ovf?: [_]: string
	power_on?:        bool
	status?:          number
	status_text?:     string
	storage_profile?: string
	template_name?:   string
	vdc?:             string
}
#VcdVappFirewallRulesResource: {
	default_action:      string
	network_id:          string
	vapp_id:             string
	enabled?:            bool
	id?:                 string
	log_default_action?: bool
	org?:                string
	vdc?:                string
	rule?: [{
		destination_ip?:         string
		destination_port?:       string
		destination_vm_id?:      string
		destination_vm_ip_type?: string
		destination_vm_nic_id?:  number
		enable_logging?:         bool
		enabled?:                bool
		name?:                   string
		policy?:                 string
		protocol?:               string
		source_ip?:              string
		source_port?:            string
		source_vm_id?:           string
		source_vm_ip_type?:      string
		source_vm_nic_id?:       number
	}, ...]
}
#VcdVappNatRulesResource: {
	nat_type:              string
	network_id:            string
	vapp_id:               string
	enable_ip_masquerade?: bool
	enabled?:              bool
	id?:                   string
	org?:                  string
	vdc?:                  string
	rule?: [{
		vm_id:            string
		vm_nic_id:        number
		external_ip?:     string
		external_port?:   number
		forward_to_port?: number
		id?:              string
		mapping_mode?:    string
		protocol?:        string
	}, ...]
}
#VcdVappNetworkResource: {
	gateway:                string
	name:                   string
	vapp_name:              string
	description?:           string
	dns1?:                  string
	dns2?:                  string
	dns_suffix?:            string
	firewall_enabled?:      bool
	guest_vlan_allowed?:    bool
	id?:                    string
	nat_enabled?:           bool
	netmask?:               string
	org?:                   string
	org_network_name?:      string
	retain_ip_mac_enabled?: bool
	vdc?:                   string
	dhcp_pool?: [{
		start_address:       string
		default_lease_time?: number
		enabled?:            bool
		end_address?:        string
		max_lease_time?:     number
	}, ...]
	static_ip_pool?: [{
		end_address:   string
		start_address: string
	}, ...]
}
#VcdVappOrgNetworkResource: {
	org_network_name:       string
	vapp_name:              string
	id?:                    string
	is_fenced?:             bool
	org?:                   string
	retain_ip_mac_enabled?: bool
	vdc?:                   string
}
#VcdVappStaticRoutingResource: {
	network_id: string
	vapp_id:    string
	enabled?:   bool
	id?:        string
	org?:       string
	vdc?:       string
	rule?: [{
		name:         string
		network_cidr: string
		next_hop_ip:  string
	}, ...]
}
#VcdVappVmResource: {
	name:                            string
	vapp_name:                       string
	accept_all_eulas?:               bool
	boot_image?:                     string
	catalog_name?:                   string
	computer_name?:                  string
	cpu_cores?:                      number
	cpus?:                           number
	description?:                    string
	expose_hardware_virtualization?: bool
	guest_properties?: [_]: string
	hardware_version?: string
	href?:             string
	id?:               string
	initscript?:       string
	internal_disk?: [{
		bus_number:       number
		bus_type:         string
		disk_id:          string
		iops:             number
		size_in_mb:       number
		storage_profile:  string
		thin_provisioned: bool
		unit_number:      number
	}, ...]
	ip?:     string
	mac?:    string
	memory?: number
	metadata?: [_]: string
	network_dhcp_wait_seconds?: number
	network_href?:              string
	network_name?:              string
	org?:                       string
	os_type?:                   string
	power_on?:                  bool
	storage_profile?:           string
	template_name?:             string
	vapp_network_name?:         string
	vdc?:                       string
	vm_name_in_template?:       string
	customization?: [{
		admin_password?:                      string
		allow_local_admin_password?:          bool
		auto_generate_password?:              bool
		change_sid?:                          bool
		enabled?:                             bool
		force?:                               bool
		initscript?:                          string
		join_domain?:                         bool
		join_domain_account_ou?:              string
		join_domain_name?:                    string
		join_domain_password?:                string
		join_domain_user?:                    string
		join_org_domain?:                     bool
		must_change_password_on_first_login?: bool
		number_of_auto_logons?:               number
	}, ...]
	disk?: [{
		bus_number:  string
		name:        string
		unit_number: string
		size_in_mb?: number
	}, ...]
	network?: [{
		type:                string
		adapter_type?:       string
		ip?:                 string
		ip_allocation_mode?: string
		is_primary?:         bool
		mac?:                string
		name?:               string
	}, ...]
	override_template_disk?: [{
		bus_number:       number
		bus_type:         string
		size_in_mb:       number
		unit_number:      number
		iops?:            number
		storage_profile?: string
	}, ...]
}
#VcdVmAffinityRuleResource: {
	name:     string
	polarity: string
	virtual_machine_ids: [string, ...]
	enabled?:  bool
	id?:       string
	org?:      string
	required?: bool
	vdc?:      string
}
#VcdVmInternalDiskResource: {
	bus_number:        number
	bus_type:          string
	size_in_mb:        number
	unit_number:       number
	vapp_name:         string
	vm_name:           string
	allow_vm_reboot?:  bool
	id?:               string
	iops?:             number
	org?:              string
	storage_profile?:  string
	thin_provisioned?: bool
	vdc?:              string
}
#Resources: {
	vcd_catalog?: [_]:             #VcdCatalogResource
	vcd_catalog_item?: [_]:        #VcdCatalogItemResource
	vcd_catalog_media?: [_]:       #VcdCatalogMediaResource
	vcd_dnat?: [_]:                #VcdDnatResource
	vcd_edgegateway?: [_]:         #VcdEdgegatewayResource
	vcd_edgegateway_vpn?: [_]:     #VcdEdgegatewayVpnResource
	vcd_external_network?: [_]:    #VcdExternalNetworkResource
	vcd_firewall_rules?: [_]:      #VcdFirewallRulesResource
	vcd_independent_disk?: [_]:    #VcdIndependentDiskResource
	vcd_inserted_media?: [_]:      #VcdInsertedMediaResource
	vcd_lb_app_profile?: [_]:      #VcdLbAppProfileResource
	vcd_lb_app_rule?: [_]:         #VcdLbAppRuleResource
	vcd_lb_server_pool?: [_]:      #VcdLbServerPoolResource
	vcd_lb_service_monitor?: [_]:  #VcdLbServiceMonitorResource
	vcd_lb_virtual_server?: [_]:   #VcdLbVirtualServerResource
	vcd_network?: [_]:             #VcdNetworkResource
	vcd_network_direct?: [_]:      #VcdNetworkDirectResource
	vcd_network_isolated?: [_]:    #VcdNetworkIsolatedResource
	vcd_network_routed?: [_]:      #VcdNetworkRoutedResource
	vcd_nsxv_dhcp_relay?: [_]:     #VcdNsxvDhcpRelayResource
	vcd_nsxv_dnat?: [_]:           #VcdNsxvDnatResource
	vcd_nsxv_firewall_rule?: [_]:  #VcdNsxvFirewallRuleResource
	vcd_nsxv_ip_set?: [_]:         #VcdNsxvIpSetResource
	vcd_nsxv_snat?: [_]:           #VcdNsxvSnatResource
	vcd_org?: [_]:                 #VcdOrgResource
	vcd_org_group?: [_]:           #VcdOrgGroupResource
	vcd_org_user?: [_]:            #VcdOrgUserResource
	vcd_org_vdc?: [_]:             #VcdOrgVdcResource
	vcd_snat?: [_]:                #VcdSnatResource
	vcd_vapp?: [_]:                #VcdVappResource
	vcd_vapp_firewall_rules?: [_]: #VcdVappFirewallRulesResource
	vcd_vapp_nat_rules?: [_]:      #VcdVappNatRulesResource
	vcd_vapp_network?: [_]:        #VcdVappNetworkResource
	vcd_vapp_org_network?: [_]:    #VcdVappOrgNetworkResource
	vcd_vapp_static_routing?: [_]: #VcdVappStaticRoutingResource
	vcd_vapp_vm?: [_]:             #VcdVappVmResource
	vcd_vm_affinity_rule?: [_]:    #VcdVmAffinityRuleResource
	vcd_vm_internal_disk?: [_]:    #VcdVmInternalDiskResource
}
