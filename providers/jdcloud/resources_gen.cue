// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package jdcloud

#JdcloudAvailabilityGroupResource: {
	availability_group_name: string
	az: [string, ...]
	instance_template_id: string
	ag_type?:             string
	description?:         string
	id?:                  string
}
#JdcloudDiskResource: {
	az:               string
	disk_size_gb:     number
	disk_type:        string
	name:             string
	charge_duration?: number
	charge_mode?:     string
	charge_unit?:     string
	description?:     string
	id?:              string
	snapshot_id?:     string
}
#JdcloudDiskAttachmentResource: {
	disk_id:       string
	instance_id:   string
	auto_delete?:  bool
	device_name?:  string
	force_detach?: bool
	id?:           string
}
#JdcloudEipResource: {
	bandwidth_mbps:      number
	eip_provider:        string
	elastic_ip_address?: string
	id?:                 string
}
#JdcloudEipAssociationResource: {
	elastic_ip_id: string
	instance_id:   string
	id?:           string
}
#JdcloudInstanceResource: {
	az:                         string
	image_id:                   string
	instance_name:              string
	instance_type:              string
	subnet_id:                  string
	description?:               string
	elastic_ip_bandwidth_mbps?: number
	elastic_ip_provider?:       string
	id?:                        string
	ip_addresses?: [string, ...]
	key_names?:              string
	network_interface_name?: string
	password?:               string
	primary_ip?:             string
	secondary_ip_count?:     number
	security_group_ids?: [string, ...]
	data_disk?: [{
		auto_delete?:   bool
		az?:            string
		description?:   string
		device_name?:   string
		disk_category?: string
		disk_id?:       string
		disk_name?:     string
		disk_size_gb?:  number
		disk_type?:     string
		snapshot_id?:   string
	}, ...]
	system_disk?: [{
		auto_delete?:   bool
		az?:            string
		description?:   string
		device_name?:   string
		disk_category?: string
		disk_id?:       string
		disk_name?:     string
		disk_size_gb?:  number
		disk_type?:     string
		snapshot_id?:   string
	}, ...]
}
#JdcloudInstanceAgInstanceResource: {
	availability_group_id: string
	id?:                   string
	instances?: [{
		instance_name: string
		description?:  string
		instance_id?:  string
	}, ...]
}
#JdcloudInstanceTemplateResource: {
	image_id:      string
	instance_type: string
	security_group_ids: [string, ...]
	subnet_id:            string
	template_name:        string
	bandwidth?:           number
	charge_mode?:         string
	description?:         string
	id?:                  string
	ip_service_provider?: string
	key_names?:           string
	password?:            string
	data_disks?: [{
		disk_category: string
		auto_delete?:  bool
		device_name?:  string
		disk_size?:    number
		disk_type?:    string
		snapshot_id?:  string
	}, ...]
	system_disk?: [{
		disk_category: string
		auto_delete?:  bool
		device_name?:  string
		disk_size?:    number
		disk_type?:    string
		snapshot_id?:  string
	}, ...]
}
#JdcloudKeyPairsResource: {
	key_name:          string
	id?:               string
	key_file?:         string
	key_finger_print?: string
	private_key?:      string
	public_key?:       string
}
#JdcloudNetworkAclResource: {
	name:         string
	vpc_id:       string
	description?: string
	id?:          string
}
#JdcloudNetworkInterfaceResource: {
	network_interface_name: string
	subnet_id:              string
	az?:                    string
	description?:           string
	id?:                    string
	ip_addresses?: [string, ...]
	primary_ip_address?: string
	sanity_check?:       number
	secondary_ip_addresses?: [string, ...]
	secondary_ip_count?: number
	security_groups?: [string, ...]
}
#JdcloudNetworkInterfaceAttachmentResource: {
	instance_id:          string
	network_interface_id: string
	auto_delete?:         bool
	id?:                  string
}
#JdcloudNetworkSecurityGroupResource: {
	network_security_group_name: string
	vpc_id:                      string
	description?:                string
	id?:                         string
}
#JdcloudNetworkSecurityGroupRulesResource: {
	security_group_id: string
	id?:               string
	security_group_rules?: [{
		address_prefix: string
		direction:      number
		protocol:       number
		description?:   string
		from_port?:     number
		rule_id?:       string
		to_port?:       number
	}, ...]
}
#JdcloudOssBucketResource: {
	bucket_name: string
	acl?:        string
	id?:         string
}
#JdcloudOssBucketUploadResource: {
	bucket_name:      string
	file_name:        string
	id?:              string
	remote_location?: string
}
#JdcloudRdsAccountResource: {
	instance_id: string
	password:    string
	username:    string
	id?:         string
}
#JdcloudRdsDatabaseResource: {
	character_set: string
	db_name:       string
	instance_id:   string
	id?:           string
}
#JdcloudRdsInstanceResource: {
	az:                    string
	charge_mode:           string
	engine:                string
	engine_version:        string
	instance_class:        string
	instance_name:         string
	instance_storage_gb:   number
	subnet_id:             string
	vpc_id:                string
	charge_duration?:      number
	charge_unit?:          string
	connection_mode?:      string
	id?:                   string
	instance_port?:        string
	internal_domain_name?: string
	public_domain_name?:   string
}
#JdcloudRdsPrivilegeResource: {
	instance_id: string
	username:    string
	id?:         string
	account_privilege?: [{
		db_name:   string
		privilege: string
	}, ...]
}
#JdcloudRouteTableResource: {
	route_table_name: string
	vpc_id:           string
	description?:     string
	id?:              string
}
#JdcloudRouteTableAssociationResource: {
	route_table_id: string
	subnet_id: [string, ...]
	id?: string
}
#JdcloudRouteTableRulesResource: {
	route_table_id: string
	id?:            string
	rule_specs?: [{
		address_prefix: string
		next_hop_id:    string
		next_hop_type:  string
		priority?:      number
		rule_id?:       string
	}, ...]
}
#JdcloudSubnetResource: {
	cidr_block:   string
	subnet_name:  string
	vpc_id:       string
	description?: string
	id?:          string
}
#JdcloudVpcResource: {
	cidr_block:   string
	vpc_name:     string
	description?: string
	id?:          string
}
#Resources: {
	jdcloud_availability_group?: [_]:           #JdcloudAvailabilityGroupResource
	jdcloud_disk?: [_]:                         #JdcloudDiskResource
	jdcloud_disk_attachment?: [_]:              #JdcloudDiskAttachmentResource
	jdcloud_eip?: [_]:                          #JdcloudEipResource
	jdcloud_eip_association?: [_]:              #JdcloudEipAssociationResource
	jdcloud_instance?: [_]:                     #JdcloudInstanceResource
	jdcloud_instance_ag_instance?: [_]:         #JdcloudInstanceAgInstanceResource
	jdcloud_instance_template?: [_]:            #JdcloudInstanceTemplateResource
	jdcloud_key_pairs?: [_]:                    #JdcloudKeyPairsResource
	jdcloud_network_acl?: [_]:                  #JdcloudNetworkAclResource
	jdcloud_network_interface?: [_]:            #JdcloudNetworkInterfaceResource
	jdcloud_network_interface_attachment?: [_]: #JdcloudNetworkInterfaceAttachmentResource
	jdcloud_network_security_group?: [_]:       #JdcloudNetworkSecurityGroupResource
	jdcloud_network_security_group_rules?: [_]: #JdcloudNetworkSecurityGroupRulesResource
	jdcloud_oss_bucket?: [_]:                   #JdcloudOssBucketResource
	jdcloud_oss_bucket_upload?: [_]:            #JdcloudOssBucketUploadResource
	jdcloud_rds_account?: [_]:                  #JdcloudRdsAccountResource
	jdcloud_rds_database?: [_]:                 #JdcloudRdsDatabaseResource
	jdcloud_rds_instance?: [_]:                 #JdcloudRdsInstanceResource
	jdcloud_rds_privilege?: [_]:                #JdcloudRdsPrivilegeResource
	jdcloud_route_table?: [_]:                  #JdcloudRouteTableResource
	jdcloud_route_table_association?: [_]:      #JdcloudRouteTableAssociationResource
	jdcloud_route_table_rules?: [_]:            #JdcloudRouteTableRulesResource
	jdcloud_subnet?: [_]:                       #JdcloudSubnetResource
	jdcloud_vpc?: [_]:                          #JdcloudVpcResource
}
