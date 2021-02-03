// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package aviatrix

#AviatrixAccountResource: {
	account_name:                         string
	cloud_type:                           number
	arm_application_id?:                  string
	arm_application_key?:                 string
	arm_directory_id?:                    string
	arm_subscription_id?:                 string
	aws_access_key?:                      string
	aws_account_number?:                  string
	aws_iam?:                             bool
	aws_role_app?:                        string
	aws_role_ec2?:                        string
	aws_secret_key?:                      string
	awsgov_access_key?:                   string
	awsgov_account_number?:               string
	awsgov_secret_key?:                   string
	gcloud_project_credentials_filepath?: string
	gcloud_project_id?:                   string
	oci_api_private_key_filepath?:        string
	oci_compartment_id?:                  string
	oci_tenancy_id?:                      string
	oci_user_id?:                         string
}
#AviatrixAccountUserResource: {
	email:    string
	password: string
	username: string
}
#AviatrixArmPeerResource: {
	account_name1:             string
	account_name2:             string
	vnet_name_resource_group1: string
	vnet_name_resource_group2: string
	vnet_reg1:                 string
	vnet_reg2:                 string
}
#AviatrixAwsPeerResource: {
	account_name1: string
	account_name2: string
	vpc_id1:       string
	vpc_id2:       string
	vpc_reg1:      string
	vpc_reg2:      string
	rtb_list1?: [string, ...]
	rtb_list2?: [string, ...]
}
#AviatrixAwsTgwResource: {
	account_name:       string
	aws_side_as_number: string
	region:             string
	tgw_name:           string
	attached_aviatrix_transit_gateway?: [string, ...]
	manage_transit_gateway_attachment?: bool
	manage_vpc_attachment?:             bool
	security_domains?: [{
		security_domain_name: string
		aviatrix_firewall?:   bool
		connected_domains?: [string, ...]
		native_egress?:   bool
		native_firewall?: bool
		attached_vpc?: [{
			vpc_account_name:                 string
			vpc_id:                           string
			vpc_region:                       string
			customized_route_advertisement?:  string
			customized_routes?:               string
			disable_local_route_propagation?: bool
			route_tables?:                    string
			subnets?:                         string
		}, ...]
	}, ...]
}
#AviatrixAwsTgwDirectconnectResource: {
	allowed_prefix:                 string
	directconnect_account_name:     string
	dx_gateway_id:                  string
	security_domain_name:           string
	tgw_name:                       string
	enable_learned_cidrs_approval?: bool
}
#AviatrixAwsTgwPeeringResource: {
	tgw_name1: string
	tgw_name2: string
}
#AviatrixAwsTgwPeeringDomainConnResource: {
	domain_name1: string
	domain_name2: string
	tgw_name1:    string
	tgw_name2:    string
}
#AviatrixAwsTgwTransitGatewayAttachmentResource: {
	region:               string
	tgw_name:             string
	transit_gateway_name: string
	vpc_account_name:     string
	vpc_id:               string
}
#AviatrixAwsTgwVpcAttachmentResource: {
	region:                           string
	security_domain_name:             string
	tgw_name:                         string
	vpc_account_name:                 string
	vpc_id:                           string
	customized_route_advertisement?:  string
	customized_routes?:               string
	disable_local_route_propagation?: bool
}
#AviatrixAwsTgwVpnConnResource: {
	connection_name:                string
	public_ip:                      string
	route_domain_name:              string
	tgw_name:                       string
	connection_type?:               string
	enable_learned_cidrs_approval?: bool
	inside_ip_cidr_tun_1?:          string
	inside_ip_cidr_tun_2?:          string
	pre_shared_key_tun_1?:          string
	pre_shared_key_tun_2?:          string
	remote_as_number?:              string
	remote_cidr?:                   string
}
#AviatrixAzurePeerResource: {
	account_name1:             string
	account_name2:             string
	vnet_name_resource_group1: string
	vnet_name_resource_group2: string
	vnet_reg1:                 string
	vnet_reg2:                 string
}
#AviatrixAzureSpokeNativePeeringResource: {
	spoke_account_name:   string
	spoke_region:         string
	spoke_vpc_id:         string
	transit_gateway_name: string
}
#AviatrixControllerConfigResource: {
	backup_account_name?:        string
	backup_bucket_name?:         string
	backup_cloud_type?:          number
	backup_configuration?:       bool
	fqdn_exception_rule?:        bool
	http_access?:                bool
	multiple_backups?:           bool
	security_group_management?:  bool
	sg_management_account_name?: string
	target_version?:             string
}
#AviatrixFirenetResource: {
	vpc_id:              string
	egress_enabled?:     bool
	inspection_enabled?: bool
	firewall_instance_association?: [{
		firenet_gw_name:       string
		instance_id:           string
		attached?:             bool
		egress_interface?:     string
		firewall_name?:        string
		lan_interface?:        string
		management_interface?: string
		vendor_type?:          string
	}, ...]
}
#AviatrixFirewallResource: {
	gw_name:           string
	base_log_enabled?: bool
	base_policy?:      string
	policy?: [{
		action:       string
		dst_ip:       string
		port:         string
		src_ip:       string
		description?: string
		log_enabled?: bool
		protocol?:    string
	}, ...]
}
#AviatrixFirewallInstanceResource: {
	egress_subnet:          string
	firenet_gw_name:        string
	firewall_image:         string
	firewall_name:          string
	firewall_size:          string
	management_subnet:      string
	vpc_id:                 string
	bootstrap_bucket_name?: string
	iam_role?:              string
	key_name?:              string
	password?:              string
	username?:              string
}
#AviatrixFirewallManagementAccessResource: {
	management_access_resource_name: string
	transit_firenet_gateway_name:    string
}
#AviatrixFirewallTagResource: {
	firewall_tag: string
	cidr_list?: [{
		cidr:          string
		cidr_tag_name: string
	}, ...]
}
#AviatrixFqdnResource: {
	fqdn_tag:      string
	fqdn_enabled?: bool
	fqdn_mode?:    string
	domain_names?: [{
		fqdn:  string
		port:  string
		proto: string
	}, ...]
	gw_filter_tag_list?: [{
		gw_name: string
		source_ip_list?: [string, ...]
	}, ...]
}
#AviatrixGatewayResource: {
	account_name:                         string
	cloud_type:                           number
	gw_name:                              string
	gw_size:                              string
	subnet:                               string
	vpc_id:                               string
	vpc_reg:                              string
	additional_cidrs?:                    string
	additional_cidrs_designated_gateway?: string
	allocate_new_eip?:                    bool
	customer_managed_keys?:               string
	duo_api_hostname?:                    string
	duo_integration_key?:                 string
	duo_push_mode?:                       string
	duo_secret_key?:                      string
	enable_designated_gateway?:           bool
	enable_elb?:                          bool
	enable_encrypt_volume?:               bool
	enable_ldap?:                         bool
	enable_vpc_dns_server?:               bool
	enable_vpn_nat?:                      bool
	insane_mode?:                         bool
	insane_mode_az?:                      string
	ldap_base_dn?:                        string
	ldap_bind_dn?:                        string
	ldap_password?:                       string
	ldap_server?:                         string
	ldap_username_attribute?:             string
	max_vpn_conn?:                        string
	name_servers?:                        string
	okta_token?:                          string
	okta_url?:                            string
	okta_username_suffix?:                string
	otp_mode?:                            string
	peering_ha_gw_size?:                  string
	peering_ha_insane_mode_az?:           string
	peering_ha_subnet?:                   string
	peering_ha_zone?:                     string
	saml_enabled?:                        bool
	search_domains?:                      string
	single_az_ha?:                        bool
	single_ip_snat?:                      bool
	split_tunnel?:                        bool
	tag_list?: [string, ...]
	vpn_access?: bool
	vpn_cidr?:   string
}
#AviatrixGatewayDnatResource: {
	gw_name: string
	dnat_policy?: [{
		connection?:  string
		dnat_ips?:    string
		dnat_port?:   string
		dst_cidr?:    string
		dst_port?:    string
		exclude_rtb?: string
		interface?:   string
		mark?:        string
		protocol?:    string
		src_cidr?:    string
		src_port?:    string
	}, ...]
}
#AviatrixGatewaySnatResource: {
	gw_name:    string
	snat_mode?: string
	snat_policy?: [{
		connection?:  string
		dst_cidr?:    string
		dst_port?:    string
		exclude_rtb?: string
		interface?:   string
		mark?:        string
		protocol?:    string
		snat_ips?:    string
		snat_port?:   string
		src_cidr?:    string
		src_port?:    string
	}, ...]
}
#AviatrixGeoVpnResource: {
	account_name: string
	cloud_type:   number
	domain_name:  string
	elb_dns_names: [string, ...]
	service_name: string
}
#AviatrixRbacGroupResource: group_name: string
#AviatrixRbacGroupAccessAccountAttachmentResource: {
	access_account_name: string
	group_name:          string
}
#AviatrixRbacGroupPermissionAttachmentResource: {
	group_name:      string
	permission_name: string
}
#AviatrixRbacGroupUserAttachmentResource: {
	group_name: string
	user_name:  string
}
#AviatrixSamlEndpointResource: {
	endpoint_name:                 string
	idp_metadata:                  string
	idp_metadata_type:             string
	access_set_by?:                string
	controller_login?:             bool
	custom_entity_id?:             string
	custom_saml_request_template?: string
	rbac_groups?: [string, ...]
}
#AviatrixSite2CloudResource: {
	connection_name:                  string
	connection_type:                  string
	primary_cloud_gateway_name:       string
	remote_gateway_ip:                string
	remote_gateway_type:              string
	remote_subnet_cidr:               string
	tunnel_type:                      string
	vpc_id:                           string
	backup_gateway_name?:             string
	backup_pre_shared_key?:           string
	backup_remote_gateway_ip?:        string
	backup_remote_gateway_latitude?:  number
	backup_remote_gateway_longitude?: number
	custom_algorithms?:               bool
	enable_active_active?:            bool
	enable_dead_peer_detection?:      bool
	ha_enabled?:                      bool
	local_subnet_virtual?:            string
	phase_1_authentication?:          string
	phase_1_dh_groups?:               string
	phase_1_encryption?:              string
	phase_2_authentication?:          string
	phase_2_dh_groups?:               string
	phase_2_encryption?:              string
	pre_shared_key?:                  string
	private_route_encryption?:        bool
	remote_gateway_latitude?:         number
	remote_gateway_longitude?:        number
	remote_subnet_virtual?:           string
	route_table_list?: [string, ...]
	ssl_server_pool?: string
}
#AviatrixSpokeGatewayResource: {
	account_name:                      string
	cloud_type:                        number
	gw_name:                           string
	gw_size:                           string
	subnet:                            string
	vpc_id:                            string
	vpc_reg:                           string
	allocate_new_eip?:                 bool
	customer_managed_keys?:            string
	customized_spoke_vpc_routes?:      string
	enable_active_mesh?:               bool
	enable_encrypt_volume?:            bool
	enable_vpc_dns_server?:            bool
	filtered_spoke_vpc_routes?:        string
	ha_gw_size?:                       string
	ha_insane_mode_az?:                string
	ha_subnet?:                        string
	ha_zone?:                          string
	included_advertised_spoke_routes?: string
	insane_mode?:                      bool
	insane_mode_az?:                   string
	single_az_ha?:                     bool
	single_ip_snat?:                   bool
	tag_list?: [string, ...]
	transit_gw?: string
}
#AviatrixSpokeVpcResource: {
	account_name:  string
	cloud_type:    number
	gw_name:       string
	subnet:        string
	vpc_id:        string
	vpc_reg:       string
	vpc_size:      string
	enable_nat?:   string
	ha_gw_size?:   string
	ha_subnet?:    string
	ha_zone?:      string
	single_az_ha?: string
	tag_list?: [string, ...]
	transit_gw?: string
}
#AviatrixTransPeerResource: {
	nexthop:        string
	reachable_cidr: string
	source:         string
}
#AviatrixTransitExternalDeviceConnResource: {
	connection_name:           string
	gw_name:                   string
	remote_gateway_ip:         string
	vpc_id:                    string
	backup_bgp_remote_as_num?: string
	backup_direct_connect?:    bool
	backup_pre_shared_key?:    string
	backup_remote_gateway_ip?: string
	bgp_local_as_num?:         string
	bgp_remote_as_num?:        string
	connection_type?:          string
	custom_algorithms?:        bool
	direct_connect?:           bool
	enable_edge_segmentation?: bool
	ha_enabled?:               bool
	phase_1_authentication?:   string
	phase_1_dh_groups?:        string
	phase_1_encryption?:       string
	phase_2_authentication?:   string
	phase_2_dh_groups?:        string
	phase_2_encryption?:       string
	pre_shared_key?:           string
	remote_subnet?:            string
}
#AviatrixTransitFirenetPolicyResource: {
	inspected_resource_name:      string
	transit_firenet_gateway_name: string
}
#AviatrixTransitGatewayResource: {
	account_name:                      string
	cloud_type:                        number
	gw_name:                           string
	gw_size:                           string
	subnet:                            string
	vpc_id:                            string
	vpc_reg:                           string
	allocate_new_eip?:                 bool
	bgp_manual_spoke_advertise_cidrs?: string
	connected_transit?:                bool
	customer_managed_keys?:            string
	customized_spoke_vpc_routes?:      string
	enable_active_mesh?:               bool
	enable_advertise_transit_cidr?:    bool
	enable_encrypt_volume?:            bool
	enable_firenet?:                   bool
	enable_hybrid_connection?:         bool
	enable_learned_cidrs_approval?:    bool
	enable_transit_firenet?:           bool
	enable_vpc_dns_server?:            bool
	excluded_advertised_spoke_routes?: string
	filtered_spoke_vpc_routes?:        string
	ha_gw_size?:                       string
	ha_insane_mode_az?:                string
	ha_subnet?:                        string
	ha_zone?:                          string
	insane_mode?:                      bool
	insane_mode_az?:                   string
	single_az_ha?:                     bool
	single_ip_snat?:                   bool
	tag_list?: [string, ...]
}
#AviatrixTransitGatewayPeeringResource: {
	transit_gateway_name1: string
	transit_gateway_name2: string
}
#AviatrixTransitVpcResource: {
	account_name:               string
	cloud_type:                 number
	gw_name:                    string
	subnet:                     string
	vpc_id:                     string
	vpc_reg:                    string
	vpc_size:                   string
	connected_transit?:         string
	enable_firenet_interfaces?: bool
	enable_hybrid_connection?:  bool
	enable_nat?:                string
	ha_gw_size?:                string
	ha_insane_mode_az?:         string
	ha_subnet?:                 string
	insane_mode?:               bool
	insane_mode_az?:            string
	tag_list?: [string, ...]
}
#AviatrixTunnelResource: {
	gw_name1:   string
	gw_name2:   string
	enable_ha?: bool
}
#AviatrixVgwConnResource: {
	bgp_local_as_num: string
	bgp_vgw_account:  string
	bgp_vgw_id:       string
	bgp_vgw_region:   string
	conn_name:        string
	gw_name:          string
	vpc_id:           string
}
#AviatrixVpcResource: {
	account_name:          string
	cloud_type:            number
	name:                  string
	aviatrix_firenet_vpc?: bool
	aviatrix_transit_vpc?: bool
	cidr?:                 string
	region?:               string
	subnets?: [{
		cidr?:   string
		name?:   string
		region?: string
	}, ...]
}
#AviatrixVpnProfileResource: {
	name:       string
	base_rule?: string
	users?: [string, ...]
	policy?: [{
		action: string
		port:   string
		proto:  string
		target: string
	}, ...]
}
#AviatrixVpnUserResource: {
	gw_name:        string
	user_name:      string
	vpc_id:         string
	saml_endpoint?: string
	user_email?:    string
}
#AviatrixVpnUserAcceleratorResource: elb_name: string
#Resources: {
	aviatrix_account?: [_]:                              #AviatrixAccountResource
	aviatrix_account_user?: [_]:                         #AviatrixAccountUserResource
	aviatrix_arm_peer?: [_]:                             #AviatrixArmPeerResource
	aviatrix_aws_peer?: [_]:                             #AviatrixAwsPeerResource
	aviatrix_aws_tgw?: [_]:                              #AviatrixAwsTgwResource
	aviatrix_aws_tgw_directconnect?: [_]:                #AviatrixAwsTgwDirectconnectResource
	aviatrix_aws_tgw_peering?: [_]:                      #AviatrixAwsTgwPeeringResource
	aviatrix_aws_tgw_peering_domain_conn?: [_]:          #AviatrixAwsTgwPeeringDomainConnResource
	aviatrix_aws_tgw_transit_gateway_attachment?: [_]:   #AviatrixAwsTgwTransitGatewayAttachmentResource
	aviatrix_aws_tgw_vpc_attachment?: [_]:               #AviatrixAwsTgwVpcAttachmentResource
	aviatrix_aws_tgw_vpn_conn?: [_]:                     #AviatrixAwsTgwVpnConnResource
	aviatrix_azure_peer?: [_]:                           #AviatrixAzurePeerResource
	aviatrix_azure_spoke_native_peering?: [_]:           #AviatrixAzureSpokeNativePeeringResource
	aviatrix_controller_config?: [_]:                    #AviatrixControllerConfigResource
	aviatrix_firenet?: [_]:                              #AviatrixFirenetResource
	aviatrix_firewall?: [_]:                             #AviatrixFirewallResource
	aviatrix_firewall_instance?: [_]:                    #AviatrixFirewallInstanceResource
	aviatrix_firewall_management_access?: [_]:           #AviatrixFirewallManagementAccessResource
	aviatrix_firewall_tag?: [_]:                         #AviatrixFirewallTagResource
	aviatrix_fqdn?: [_]:                                 #AviatrixFqdnResource
	aviatrix_gateway?: [_]:                              #AviatrixGatewayResource
	aviatrix_gateway_dnat?: [_]:                         #AviatrixGatewayDnatResource
	aviatrix_gateway_snat?: [_]:                         #AviatrixGatewaySnatResource
	aviatrix_geo_vpn?: [_]:                              #AviatrixGeoVpnResource
	aviatrix_rbac_group?: [_]:                           #AviatrixRbacGroupResource
	aviatrix_rbac_group_access_account_attachment?: [_]: #AviatrixRbacGroupAccessAccountAttachmentResource
	aviatrix_rbac_group_permission_attachment?: [_]:     #AviatrixRbacGroupPermissionAttachmentResource
	aviatrix_rbac_group_user_attachment?: [_]:           #AviatrixRbacGroupUserAttachmentResource
	aviatrix_saml_endpoint?: [_]:                        #AviatrixSamlEndpointResource
	aviatrix_site2cloud?: [_]:                           #AviatrixSite2CloudResource
	aviatrix_spoke_gateway?: [_]:                        #AviatrixSpokeGatewayResource
	aviatrix_spoke_vpc?: [_]:                            #AviatrixSpokeVpcResource
	aviatrix_trans_peer?: [_]:                           #AviatrixTransPeerResource
	aviatrix_transit_external_device_conn?: [_]:         #AviatrixTransitExternalDeviceConnResource
	aviatrix_transit_firenet_policy?: [_]:               #AviatrixTransitFirenetPolicyResource
	aviatrix_transit_gateway?: [_]:                      #AviatrixTransitGatewayResource
	aviatrix_transit_gateway_peering?: [_]:              #AviatrixTransitGatewayPeeringResource
	aviatrix_transit_vpc?: [_]:                          #AviatrixTransitVpcResource
	aviatrix_tunnel?: [_]:                               #AviatrixTunnelResource
	aviatrix_vgw_conn?: [_]:                             #AviatrixVgwConnResource
	aviatrix_vpc?: [_]:                                  #AviatrixVpcResource
	aviatrix_vpn_profile?: [_]:                          #AviatrixVpnProfileResource
	aviatrix_vpn_user?: [_]:                             #AviatrixVpnUserResource
	aviatrix_vpn_user_accelerator?: [_]:                 #AviatrixVpnUserAcceleratorResource
}