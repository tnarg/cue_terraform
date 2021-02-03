// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package alicloud

#AlicloudAccountDataSource: {}
#AlicloudActiontrailsDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudAdbClustersDataSource: {
	description_regex?: string
	output_file?:       string
	tags?: [_]: string
}
#AlicloudAdbZonesDataSource: {
	multi?:       bool
	output_file?: string
}
#AlicloudAlikafkaConsumerGroupsDataSource: {
	instance_id:        string
	consumer_id_regex?: string
	output_file?:       string
}
#AlicloudAlikafkaInstancesDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudAlikafkaSaslAclsDataSource: {
	acl_resource_name: string
	acl_resource_type: string
	instance_id:       string
	username:          string
	output_file?:      string
}
#AlicloudAlikafkaSaslUsersDataSource: {
	instance_id:  string
	name_regex?:  string
	output_file?: string
}
#AlicloudAlikafkaTopicsDataSource: {
	instance_id:  string
	name_regex?:  string
	output_file?: string
}
#AlicloudApiGatewayApisDataSource: {
	api_id?:      string
	group_id?:    string
	name_regex?:  string
	output_file?: string
}
#AlicloudApiGatewayAppsDataSource: {
	name_regex?:  string
	output_file?: string
	tags?: [_]: string
}
#AlicloudApiGatewayGroupsDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudCallerIdentityDataSource: {}
#AlicloudCasCertificatesDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudCenBandwidthLimitsDataSource: {
	instance_ids?: [string, ...]
	output_file?: string
}
#AlicloudCenBandwidthPackagesDataSource: {
	instance_id?: string
	name_regex?:  string
	output_file?: string
}
#AlicloudCenFlowlogsDataSource: {
	cen_id?:         string
	description?:    string
	log_store_name?: string
	name_regex?:     string
	output_file?:    string
	project_name?:   string
	status?:         string
}
#AlicloudCenInstancesDataSource: {
	name_regex?:  string
	output_file?: string
	tags?: [_]: string
}
#AlicloudCenRegionRouteEntriesDataSource: {
	instance_id:  string
	region_id:    string
	output_file?: string
}
#AlicloudCenRouteEntriesDataSource: {
	instance_id:    string
	route_table_id: string
	cidr_block?:    string
	output_file?:   string
}
#AlicloudCloudConnectNetworksDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudCommonBandwidthPackagesDataSource: {
	name_regex?:        string
	output_file?:       string
	resource_group_id?: string
}
#AlicloudCrNamespacesDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudCrReposDataSource: {
	enable_details?: bool
	name_regex?:     string
	namespace?:      string
	output_file?:    string
}
#AlicloudCsKubernetesClustersDataSource: {
	enable_details?: bool
	name_regex?:     string
	output_file?:    string
}
#AlicloudCsManagedKubernetesClustersDataSource: {
	enable_details?: bool
	name_regex?:     string
	output_file?:    string
}
#AlicloudCsServerlessKubernetesClustersDataSource: {
	enable_details?: bool
	name_regex?:     string
	output_file?:    string
}
#AlicloudDbInstanceClassesDataSource: {
	category?:             string
	db_instance_class?:    string
	engine?:               string
	engine_version?:       string
	instance_charge_type?: string
	multi_zone?:           bool
	output_file?:          string
	sorted_by?:            string
	storage_type?:         string
	zone_id?:              string
}
#AlicloudDbInstanceEnginesDataSource: {
	engine?:               string
	engine_version?:       string
	instance_charge_type?: string
	multi_zone?:           bool
	output_file?:          string
	zone_id?:              string
}
#AlicloudDbInstancesDataSource: {
	connection_mode?: string
	db_type?:         string
	engine?:          string
	name_regex?:      string
	output_file?:     string
	status?:          string
	tags?: [_]: string
	vpc_id?:     string
	vswitch_id?: string
}
#AlicloudDbZonesDataSource: {
	instance_charge_type?: string
	multi?:                bool
	output_file?:          string
}
#AlicloudDdosbgpInstancesDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudDdoscooInstancesDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudDisksDataSource: {
	category?:          string
	encrypted?:         string
	instance_id?:       string
	name_regex?:        string
	output_file?:       string
	resource_group_id?: string
	tags?: [_]: string
	type?: string
}
#AlicloudDnsDomainGroupsDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudDnsDomainRecordsDataSource: {
	domain_name:        string
	host_record_regex?: string
	is_locked?:         bool
	line?:              string
	output_file?:       string
	status?:            string
	type?:              string
	value_regex?:       string
}
#AlicloudDnsDomainTxtGuidDataSource: {
	domain_name:  string
	type:         string
	lang?:        string
	output_file?: string
}
#AlicloudDnsDomainsDataSource: {
	ali_domain?:        bool
	domain_name_regex?: string
	group_name_regex?:  string
	instance_id?:       string
	output_file?:       string
	resource_group_id?: string
	version_code?:      string
}
#AlicloudDnsGroupsDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudDnsInstancesDataSource: output_file?: string
#AlicloudDnsRecordsDataSource: {
	domain_name:        string
	host_record_regex?: string
	is_locked?:         bool
	line?:              string
	output_file?:       string
	status?:            string
	type?:              string
	value_regex?:       string
}
#AlicloudDnsResolutionLinesDataSource: {
	domain_name?: string
	lang?:        string
	line_names?: [string, ...]
	output_file?:    string
	user_client_ip?: string
}
#AlicloudDrdsInstancesDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudEdasApplicationsDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudEdasClustersDataSource: {
	logical_region_id: string
	name_regex?:       string
	output_file?:      string
}
#AlicloudEdasDeployGroupsDataSource: {
	app_id:       string
	name_regex?:  string
	output_file?: string
}
#AlicloudEipsDataSource: {
	in_use?: bool
	ip_addresses?: [string, ...]
	output_file?:       string
	resource_group_id?: string
	tags?: [_]: string
}
#AlicloudElasticsearchInstancesDataSource: {
	description_regex?: string
	output_file?:       string
	tags?: [_]: string
	version?: string
}
#AlicloudElasticsearchZonesDataSource: {
	multi?:       bool
	output_file?: string
}
#AlicloudEmrDiskTypesDataSource: {
	cluster_type:         string
	destination_resource: string
	instance_charge_type: string
	instance_type:        string
	output_file?:         string
	zone_id?:             string
}
#AlicloudEmrInstanceTypesDataSource: {
	cluster_type:           string
	destination_resource:   string
	instance_charge_type:   string
	instance_type?:         string
	output_file?:           string
	support_local_storage?: bool
	support_node_type?: [string, ...]
	zone_id?: string
}
#AlicloudEmrMainVersionsDataSource: {
	cluster_type?: [string, ...]
	emr_version?: string
	output_file?: string
}
#AlicloudEssAlarmsDataSource: {
	metric_type?:      string
	name_regex?:       string
	output_file?:      string
	scaling_group_id?: string
}
#AlicloudEssLifecycleHooksDataSource: {
	name_regex?:       string
	output_file?:      string
	scaling_group_id?: string
}
#AlicloudEssNotificationsDataSource: {
	scaling_group_id: string
	ids?: [string, ...]
	output_file?: string
}
#AlicloudEssScalingConfigurationsDataSource: {
	name_regex?:       string
	output_file?:      string
	scaling_group_id?: string
}
#AlicloudEssScalingGroupsDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudEssScalingRulesDataSource: {
	name_regex?:       string
	output_file?:      string
	scaling_group_id?: string
	type?:             string
}
#AlicloudEssScheduledTasksDataSource: {
	name_regex?:        string
	output_file?:       string
	scheduled_action?:  string
	scheduled_task_id?: string
}
#AlicloudFcFunctionsDataSource: {
	service_name: string
	name_regex?:  string
	output_file?: string
}
#AlicloudFcServicesDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudFcTriggersDataSource: {
	function_name: string
	service_name:  string
	name_regex?:   string
	output_file?:  string
}
#AlicloudFcZonesDataSource: output_file?: string
#AlicloudFileCrc64ChecksumDataSource: {
	filename:     string
	output_file?: string
}
#AlicloudForwardEntriesDataSource: {
	forward_table_id: string
	external_ip?:     string
	internal_ip?:     string
	name_regex?:      string
	names?: [string, ...]
	output_file?: string
}
#AlicloudGpdbInstancesDataSource: {
	availability_zone?: string
	name_regex?:        string
	output_file?:       string
	tags?: [_]: string
	vswitch_id?: string
}
#AlicloudGpdbZonesDataSource: {
	multi?:       bool
	output_file?: string
}
#AlicloudHbaseInstancesDataSource: {
	availability_zone?: string
	name_regex?:        string
	output_file?:       string
	tags?: [_]: string
}
#AlicloudHbaseZonesDataSource: {
	multi?:       bool
	output_file?: string
}
#AlicloudImagesDataSource: {
	most_recent?: bool
	name_regex?:  string
	output_file?: string
	owners?:      string
}
#AlicloudInstanceTypeFamiliesDataSource: {
	generation?:           string
	instance_charge_type?: string
	output_file?:          string
	spot_strategy?:        string
	zone_id?:              string
}
#AlicloudInstanceTypesDataSource: {
	availability_zone?:    string
	cpu_core_count?:       number
	eni_amount?:           number
	gpu_amount?:           number
	gpu_spec?:             string
	instance_charge_type?: string
	instance_type_family?: string
	is_outdated?:          bool
	kubernetes_node_role?: string
	memory_size?:          number
	network_type?:         string
	output_file?:          string
	sorted_by?:            string
	spot_strategy?:        string
}
#AlicloudInstancesDataSource: {
	availability_zone?: string
	image_id?:          string
	name_regex?:        string
	output_file?:       string
	ram_role_name?:     string
	resource_group_id?: string
	status?:            string
	tags?: [_]: string
	vpc_id?:     string
	vswitch_id?: string
}
#AlicloudKeyPairsDataSource: {
	name_regex?:        string
	output_file?:       string
	resource_group_id?: string
	tags?: [_]: string
}
#AlicloudKmsAliasesDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudKmsCiphertextDataSource: {
	key_id:    string
	plaintext: string
	encryption_context?: [_]: string
}
#AlicloudKmsKeysDataSource: {
	description_regex?: string
	output_file?:       string
	status?:            string
}
#AlicloudKmsPlaintextDataSource: {
	ciphertext_blob: string
	encryption_context?: [_]: string
}
#AlicloudKvstoreInstanceClassesDataSource: {
	zone_id:               string
	architecture?:         string
	edition_type?:         string
	engine?:               string
	engine_version?:       string
	instance_charge_type?: string
	node_type?:            string
	output_file?:          string
	package_type?:         string
	performance_type?:     string
	series_type?:          string
	shard_number?:         number
	sorted_by?:            string
	storage_type?:         string
}
#AlicloudKvstoreInstanceEnginesDataSource: {
	zone_id:               string
	engine?:               string
	engine_version?:       string
	instance_charge_type?: string
	output_file?:          string
}
#AlicloudKvstoreInstancesDataSource: {
	instance_class?: string
	instance_type?:  string
	name_regex?:     string
	output_file?:    string
	status?:         string
	tags?: [_]: string
	vpc_id?:     string
	vswitch_id?: string
}
#AlicloudKvstoreZonesDataSource: {
	instance_charge_type?: string
	multi?:                bool
	output_file?:          string
}
#AlicloudMarketProductDataSource: {
	product_code:      string
	available_region?: string
}
#AlicloudMarketProductsDataSource: {
	category_id?:           string
	name_regex?:            string
	output_file?:           string
	product_type?:          string
	search_term?:           string
	sort?:                  string
	suggested_price?:       number
	supplier_id?:           string
	supplier_name_keyword?: string
}
#AlicloudMnsQueuesDataSource: {
	name_prefix?: string
	output_file?: string
}
#AlicloudMnsTopicSubscriptionsDataSource: {
	topic_name:   string
	name_prefix?: string
	output_file?: string
}
#AlicloudMnsTopicsDataSource: {
	name_prefix?: string
	output_file?: string
}
#AlicloudMongoInstancesDataSource: {
	availability_zone?: string
	instance_class?:    string
	instance_type?:     string
	name_regex?:        string
	output_file?:       string
	tags?: [_]: string
}
#AlicloudMongodbInstancesDataSource: {
	availability_zone?: string
	instance_class?:    string
	instance_type?:     string
	name_regex?:        string
	output_file?:       string
	tags?: [_]: string
}
#AlicloudMongodbZonesDataSource: {
	multi?:       bool
	output_file?: string
}
#AlicloudNasAccessGroupsDataSource: {
	description?: string
	name_regex?:  string
	output_file?: string
	type?:        string
}
#AlicloudNasAccessRulesDataSource: {
	access_group_name: string
	output_file?:      string
	rw_access?:        string
	source_cidr_ip?:   string
	user_access?:      string
}
#AlicloudNasFileSystemsDataSource: {
	description_regex?: string
	output_file?:       string
	protocol_type?:     string
	storage_type?:      string
}
#AlicloudNasMountTargetsDataSource: {
	file_system_id:       string
	access_group_name?:   string
	mount_target_domain?: string
	output_file?:         string
	type?:                string
	vpc_id?:              string
	vswitch_id?:          string
}
#AlicloudNasProtocolsDataSource: {
	type:         string
	output_file?: string
	zone_id?:     string
}
#AlicloudNatGatewaysDataSource: {
	name_regex?:  string
	output_file?: string
	vpc_id?:      string
}
#AlicloudNetworkInterfacesDataSource: {
	instance_id?:       string
	name_regex?:        string
	output_file?:       string
	private_ip?:        string
	resource_group_id?: string
	security_group_id?: string
	tags?: [_]: string
	type?:       string
	vpc_id?:     string
	vswitch_id?: string
}
#AlicloudOnsGroupsDataSource: {
	instance_id:     string
	group_id_regex?: string
	output_file?:    string
}
#AlicloudOnsInstancesDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudOnsTopicsDataSource: {
	instance_id:  string
	name_regex?:  string
	output_file?: string
}
#AlicloudOssBucketObjectsDataSource: {
	bucket_name:  string
	key_prefix?:  string
	key_regex?:   string
	output_file?: string
}
#AlicloudOssBucketsDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudOtsInstanceAttachmentsDataSource: {
	instance_name: string
	name_regex?:   string
	output_file?:  string
}
#AlicloudOtsInstancesDataSource: {
	name_regex?:  string
	output_file?: string
	tags?: [_]: string
}
#AlicloudOtsTablesDataSource: {
	instance_name: string
	name_regex?:   string
	output_file?:  string
}
#AlicloudPolardbAccountsDataSource: {
	db_cluster_id: string
	name_regex?:   string
}
#AlicloudPolardbClustersDataSource: {
	db_type?:           string
	description_regex?: string
	output_file?:       string
	status?:            string
	tags?: [_]: string
}
#AlicloudPolardbDatabasesDataSource: {
	db_cluster_id: string
	name_regex?:   string
}
#AlicloudPolardbEndpointsDataSource: {
	db_cluster_id:   string
	db_endpoint_id?: string
}
#AlicloudPolardbNodeClassesDataSource: {
	pay_type:       string
	db_node_class?: string
	db_type?:       string
	db_version?:    string
	output_file?:   string
	region_id?:     string
	zone_id?:       string
}
#AlicloudPolardbZonesDataSource: {
	multi?:       bool
	output_file?: string
}
#AlicloudPvtzZoneRecordsDataSource: {
	zone_id:      string
	keyword?:     string
	output_file?: string
}
#AlicloudPvtzZonesDataSource: {
	keyword?:     string
	output_file?: string
}
#AlicloudRamAccountAliasDataSource: output_file?:   string
#AlicloudRamAccountAliasesDataSource: output_file?: string
#AlicloudRamGroupsDataSource: {
	name_regex?:  string
	output_file?: string
	policy_name?: string
	policy_type?: string
	user_name?:   string
}
#AlicloudRamPoliciesDataSource: {
	group_name?:  string
	name_regex?:  string
	output_file?: string
	role_name?:   string
	type?:        string
	user_name?:   string
}
#AlicloudRamRolesDataSource: {
	name_regex?:  string
	output_file?: string
	policy_name?: string
	policy_type?: string
}
#AlicloudRamUsersDataSource: {
	group_name?:  string
	name_regex?:  string
	output_file?: string
	policy_name?: string
	policy_type?: string
}
#AlicloudRegionsDataSource: output_file?: string
#AlicloudResourceManagerFoldersDataSource: {
	name_regex?:       string
	output_file?:      string
	parent_folder_id?: string
}
#AlicloudResourceManagerResourceGroupsDataSource: {
	name_regex?:  string
	output_file?: string
	status?:      string
}
#AlicloudRouteEntriesDataSource: {
	route_table_id: string
	cidr_block?:    string
	instance_id?:   string
	output_file?:   string
	type?:          string
}
#AlicloudRouteTablesDataSource: {
	name_regex?:        string
	output_file?:       string
	resource_group_id?: string
	tags?: [_]: string
	vpc_id?: string
}
#AlicloudRouterInterfacesDataSource: {
	name_regex?:                  string
	opposite_interface_id?:       string
	opposite_interface_owner_id?: string
	output_file?:                 string
	role?:                        string
	router_id?:                   string
	router_type?:                 string
	specification?:               string
	status?:                      string
}
#AlicloudSagAclsDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudSecurityGroupRulesDataSource: {
	group_id:     string
	direction?:   string
	ip_protocol?: string
	nic_type?:    string
	output_file?: string
	policy?:      string
}
#AlicloudSecurityGroupsDataSource: {
	name_regex?:        string
	output_file?:       string
	resource_group_id?: string
	tags?: [_]: string
	vpc_id?: string
}
#AlicloudSlbAclsDataSource: {
	name_regex?:        string
	output_file?:       string
	resource_group_id?: string
	tags?: [_]: string
}
#AlicloudSlbAttachmentsDataSource: {
	load_balancer_id: string
	instance_ids?: [string, ...]
	output_file?: string
}
#AlicloudSlbBackendServersDataSource: {
	load_balancer_id: string
	output_file?:     string
}
#AlicloudSlbCaCertificatesDataSource: {
	name_regex?:        string
	output_file?:       string
	resource_group_id?: string
	tags?: [_]: string
}
#AlicloudSlbDomainExtensionsDataSource: {
	frontend_port:    number
	load_balancer_id: string
	output_file?:     string
}
#AlicloudSlbListenersDataSource: {
	load_balancer_id:   string
	description_regex?: string
	frontend_port?:     number
	output_file?:       string
	protocol?:          string
}
#AlicloudSlbMasterSlaveServerGroupsDataSource: {
	load_balancer_id: string
	name_regex?:      string
	output_file?:     string
}
#AlicloudSlbRulesDataSource: {
	frontend_port:    number
	load_balancer_id: string
	name_regex?:      string
	output_file?:     string
}
#AlicloudSlbServerCertificatesDataSource: {
	name_regex?:        string
	output_file?:       string
	resource_group_id?: string
	tags?: [_]: string
}
#AlicloudSlbServerGroupsDataSource: {
	load_balancer_id: string
	name_regex?:      string
	output_file?:     string
}
#AlicloudSlbZonesDataSource: {
	available_slb_address_ip_version?: string
	available_slb_address_type?:       string
	enable_details?:                   bool
	output_file?:                      string
}
#AlicloudSlbsDataSource: {
	address?:                  string
	master_availability_zone?: string
	name_regex?:               string
	network_type?:             string
	output_file?:              string
	resource_group_id?:        string
	slave_availability_zone?:  string
	tags?: [_]: string
	vpc_id?:     string
	vswitch_id?: string
}
#AlicloudSnapshotsDataSource: {
	disk_id?:          string
	encrypted?:        bool
	instance_id?:      string
	name_regex?:       string
	output_file?:      string
	source_disk_type?: string
	status?:           string
	tags?: [_]: string
	type?:  string
	usage?: string
}
#AlicloudSnatEntriesDataSource: {
	snat_table_id: string
	output_file?:  string
	snat_ip?:      string
	source_cidr?:  string
}
#AlicloudSslVpnClientCertsDataSource: {
	name_regex?:        string
	output_file?:       string
	ssl_vpn_server_id?: string
}
#AlicloudSslVpnServersDataSource: {
	name_regex?:     string
	output_file?:    string
	vpn_gateway_id?: string
}
#AlicloudVpcsDataSource: {
	cidr_block?:        string
	is_default?:        bool
	name_regex?:        string
	output_file?:       string
	resource_group_id?: string
	status?:            string
	tags?: [_]: string
	vswitch_id?: string
}
#AlicloudVpnConnectionsDataSource: {
	customer_gateway_id?: string
	name_regex?:          string
	output_file?:         string
	vpn_gateway_id?:      string
}
#AlicloudVpnCustomerGatewaysDataSource: {
	name_regex?:  string
	output_file?: string
}
#AlicloudVpnGatewaysDataSource: {
	business_status?: string
	name_regex?:      string
	output_file?:     string
	status?:          string
	vpc_id?:          string
}
#AlicloudVswitchesDataSource: {
	cidr_block?:        string
	is_default?:        bool
	name_regex?:        string
	output_file?:       string
	resource_group_id?: string
	tags?: [_]: string
	vpc_id?:  string
	zone_id?: string
}
#AlicloudYundunBastionhostInstancesDataSource: {
	description_regex?: string
	output_file?:       string
	tags?: [_]: string
}
#AlicloudYundunDbauditInstanceDataSource: {
	description_regex?: string
	output_file?:       string
	tags?: [_]: string
}
#AlicloudZonesDataSource: {
	available_disk_category?:          string
	available_instance_type?:          string
	available_resource_creation?:      string
	available_slb_address_ip_version?: string
	available_slb_address_type?:       string
	enable_details?:                   bool
	instance_charge_type?:             string
	multi?:                            bool
	network_type?:                     string
	output_file?:                      string
	spot_strategy?:                    string
}
#DataSources: {
	alicloud_account?: [_]:                           #AlicloudAccountDataSource
	alicloud_actiontrails?: [_]:                      #AlicloudActiontrailsDataSource
	alicloud_adb_clusters?: [_]:                      #AlicloudAdbClustersDataSource
	alicloud_adb_zones?: [_]:                         #AlicloudAdbZonesDataSource
	alicloud_alikafka_consumer_groups?: [_]:          #AlicloudAlikafkaConsumerGroupsDataSource
	alicloud_alikafka_instances?: [_]:                #AlicloudAlikafkaInstancesDataSource
	alicloud_alikafka_sasl_acls?: [_]:                #AlicloudAlikafkaSaslAclsDataSource
	alicloud_alikafka_sasl_users?: [_]:               #AlicloudAlikafkaSaslUsersDataSource
	alicloud_alikafka_topics?: [_]:                   #AlicloudAlikafkaTopicsDataSource
	alicloud_api_gateway_apis?: [_]:                  #AlicloudApiGatewayApisDataSource
	alicloud_api_gateway_apps?: [_]:                  #AlicloudApiGatewayAppsDataSource
	alicloud_api_gateway_groups?: [_]:                #AlicloudApiGatewayGroupsDataSource
	alicloud_caller_identity?: [_]:                   #AlicloudCallerIdentityDataSource
	alicloud_cas_certificates?: [_]:                  #AlicloudCasCertificatesDataSource
	alicloud_cen_bandwidth_limits?: [_]:              #AlicloudCenBandwidthLimitsDataSource
	alicloud_cen_bandwidth_packages?: [_]:            #AlicloudCenBandwidthPackagesDataSource
	alicloud_cen_flowlogs?: [_]:                      #AlicloudCenFlowlogsDataSource
	alicloud_cen_instances?: [_]:                     #AlicloudCenInstancesDataSource
	alicloud_cen_region_route_entries?: [_]:          #AlicloudCenRegionRouteEntriesDataSource
	alicloud_cen_route_entries?: [_]:                 #AlicloudCenRouteEntriesDataSource
	alicloud_cloud_connect_networks?: [_]:            #AlicloudCloudConnectNetworksDataSource
	alicloud_common_bandwidth_packages?: [_]:         #AlicloudCommonBandwidthPackagesDataSource
	alicloud_cr_namespaces?: [_]:                     #AlicloudCrNamespacesDataSource
	alicloud_cr_repos?: [_]:                          #AlicloudCrReposDataSource
	alicloud_cs_kubernetes_clusters?: [_]:            #AlicloudCsKubernetesClustersDataSource
	alicloud_cs_managed_kubernetes_clusters?: [_]:    #AlicloudCsManagedKubernetesClustersDataSource
	alicloud_cs_serverless_kubernetes_clusters?: [_]: #AlicloudCsServerlessKubernetesClustersDataSource
	alicloud_db_instance_classes?: [_]:               #AlicloudDbInstanceClassesDataSource
	alicloud_db_instance_engines?: [_]:               #AlicloudDbInstanceEnginesDataSource
	alicloud_db_instances?: [_]:                      #AlicloudDbInstancesDataSource
	alicloud_db_zones?: [_]:                          #AlicloudDbZonesDataSource
	alicloud_ddosbgp_instances?: [_]:                 #AlicloudDdosbgpInstancesDataSource
	alicloud_ddoscoo_instances?: [_]:                 #AlicloudDdoscooInstancesDataSource
	alicloud_disks?: [_]:                             #AlicloudDisksDataSource
	alicloud_dns_domain_groups?: [_]:                 #AlicloudDnsDomainGroupsDataSource
	alicloud_dns_domain_records?: [_]:                #AlicloudDnsDomainRecordsDataSource
	alicloud_dns_domain_txt_guid?: [_]:               #AlicloudDnsDomainTxtGuidDataSource
	alicloud_dns_domains?: [_]:                       #AlicloudDnsDomainsDataSource
	alicloud_dns_groups?: [_]:                        #AlicloudDnsGroupsDataSource
	alicloud_dns_instances?: [_]:                     #AlicloudDnsInstancesDataSource
	alicloud_dns_records?: [_]:                       #AlicloudDnsRecordsDataSource
	alicloud_dns_resolution_lines?: [_]:              #AlicloudDnsResolutionLinesDataSource
	alicloud_drds_instances?: [_]:                    #AlicloudDrdsInstancesDataSource
	alicloud_edas_applications?: [_]:                 #AlicloudEdasApplicationsDataSource
	alicloud_edas_clusters?: [_]:                     #AlicloudEdasClustersDataSource
	alicloud_edas_deploy_groups?: [_]:                #AlicloudEdasDeployGroupsDataSource
	alicloud_eips?: [_]:                              #AlicloudEipsDataSource
	alicloud_elasticsearch_instances?: [_]:           #AlicloudElasticsearchInstancesDataSource
	alicloud_elasticsearch_zones?: [_]:               #AlicloudElasticsearchZonesDataSource
	alicloud_emr_disk_types?: [_]:                    #AlicloudEmrDiskTypesDataSource
	alicloud_emr_instance_types?: [_]:                #AlicloudEmrInstanceTypesDataSource
	alicloud_emr_main_versions?: [_]:                 #AlicloudEmrMainVersionsDataSource
	alicloud_ess_alarms?: [_]:                        #AlicloudEssAlarmsDataSource
	alicloud_ess_lifecycle_hooks?: [_]:               #AlicloudEssLifecycleHooksDataSource
	alicloud_ess_notifications?: [_]:                 #AlicloudEssNotificationsDataSource
	alicloud_ess_scaling_configurations?: [_]:        #AlicloudEssScalingConfigurationsDataSource
	alicloud_ess_scaling_groups?: [_]:                #AlicloudEssScalingGroupsDataSource
	alicloud_ess_scaling_rules?: [_]:                 #AlicloudEssScalingRulesDataSource
	alicloud_ess_scheduled_tasks?: [_]:               #AlicloudEssScheduledTasksDataSource
	alicloud_fc_functions?: [_]:                      #AlicloudFcFunctionsDataSource
	alicloud_fc_services?: [_]:                       #AlicloudFcServicesDataSource
	alicloud_fc_triggers?: [_]:                       #AlicloudFcTriggersDataSource
	alicloud_fc_zones?: [_]:                          #AlicloudFcZonesDataSource
	alicloud_file_crc64_checksum?: [_]:               #AlicloudFileCrc64ChecksumDataSource
	alicloud_forward_entries?: [_]:                   #AlicloudForwardEntriesDataSource
	alicloud_gpdb_instances?: [_]:                    #AlicloudGpdbInstancesDataSource
	alicloud_gpdb_zones?: [_]:                        #AlicloudGpdbZonesDataSource
	alicloud_hbase_instances?: [_]:                   #AlicloudHbaseInstancesDataSource
	alicloud_hbase_zones?: [_]:                       #AlicloudHbaseZonesDataSource
	alicloud_images?: [_]:                            #AlicloudImagesDataSource
	alicloud_instance_type_families?: [_]:            #AlicloudInstanceTypeFamiliesDataSource
	alicloud_instance_types?: [_]:                    #AlicloudInstanceTypesDataSource
	alicloud_instances?: [_]:                         #AlicloudInstancesDataSource
	alicloud_key_pairs?: [_]:                         #AlicloudKeyPairsDataSource
	alicloud_kms_aliases?: [_]:                       #AlicloudKmsAliasesDataSource
	alicloud_kms_ciphertext?: [_]:                    #AlicloudKmsCiphertextDataSource
	alicloud_kms_keys?: [_]:                          #AlicloudKmsKeysDataSource
	alicloud_kms_plaintext?: [_]:                     #AlicloudKmsPlaintextDataSource
	alicloud_kvstore_instance_classes?: [_]:          #AlicloudKvstoreInstanceClassesDataSource
	alicloud_kvstore_instance_engines?: [_]:          #AlicloudKvstoreInstanceEnginesDataSource
	alicloud_kvstore_instances?: [_]:                 #AlicloudKvstoreInstancesDataSource
	alicloud_kvstore_zones?: [_]:                     #AlicloudKvstoreZonesDataSource
	alicloud_market_product?: [_]:                    #AlicloudMarketProductDataSource
	alicloud_market_products?: [_]:                   #AlicloudMarketProductsDataSource
	alicloud_mns_queues?: [_]:                        #AlicloudMnsQueuesDataSource
	alicloud_mns_topic_subscriptions?: [_]:           #AlicloudMnsTopicSubscriptionsDataSource
	alicloud_mns_topics?: [_]:                        #AlicloudMnsTopicsDataSource
	alicloud_mongo_instances?: [_]:                   #AlicloudMongoInstancesDataSource
	alicloud_mongodb_instances?: [_]:                 #AlicloudMongodbInstancesDataSource
	alicloud_mongodb_zones?: [_]:                     #AlicloudMongodbZonesDataSource
	alicloud_nas_access_groups?: [_]:                 #AlicloudNasAccessGroupsDataSource
	alicloud_nas_access_rules?: [_]:                  #AlicloudNasAccessRulesDataSource
	alicloud_nas_file_systems?: [_]:                  #AlicloudNasFileSystemsDataSource
	alicloud_nas_mount_targets?: [_]:                 #AlicloudNasMountTargetsDataSource
	alicloud_nas_protocols?: [_]:                     #AlicloudNasProtocolsDataSource
	alicloud_nat_gateways?: [_]:                      #AlicloudNatGatewaysDataSource
	alicloud_network_interfaces?: [_]:                #AlicloudNetworkInterfacesDataSource
	alicloud_ons_groups?: [_]:                        #AlicloudOnsGroupsDataSource
	alicloud_ons_instances?: [_]:                     #AlicloudOnsInstancesDataSource
	alicloud_ons_topics?: [_]:                        #AlicloudOnsTopicsDataSource
	alicloud_oss_bucket_objects?: [_]:                #AlicloudOssBucketObjectsDataSource
	alicloud_oss_buckets?: [_]:                       #AlicloudOssBucketsDataSource
	alicloud_ots_instance_attachments?: [_]:          #AlicloudOtsInstanceAttachmentsDataSource
	alicloud_ots_instances?: [_]:                     #AlicloudOtsInstancesDataSource
	alicloud_ots_tables?: [_]:                        #AlicloudOtsTablesDataSource
	alicloud_polardb_accounts?: [_]:                  #AlicloudPolardbAccountsDataSource
	alicloud_polardb_clusters?: [_]:                  #AlicloudPolardbClustersDataSource
	alicloud_polardb_databases?: [_]:                 #AlicloudPolardbDatabasesDataSource
	alicloud_polardb_endpoints?: [_]:                 #AlicloudPolardbEndpointsDataSource
	alicloud_polardb_node_classes?: [_]:              #AlicloudPolardbNodeClassesDataSource
	alicloud_polardb_zones?: [_]:                     #AlicloudPolardbZonesDataSource
	alicloud_pvtz_zone_records?: [_]:                 #AlicloudPvtzZoneRecordsDataSource
	alicloud_pvtz_zones?: [_]:                        #AlicloudPvtzZonesDataSource
	alicloud_ram_account_alias?: [_]:                 #AlicloudRamAccountAliasDataSource
	alicloud_ram_account_aliases?: [_]:               #AlicloudRamAccountAliasesDataSource
	alicloud_ram_groups?: [_]:                        #AlicloudRamGroupsDataSource
	alicloud_ram_policies?: [_]:                      #AlicloudRamPoliciesDataSource
	alicloud_ram_roles?: [_]:                         #AlicloudRamRolesDataSource
	alicloud_ram_users?: [_]:                         #AlicloudRamUsersDataSource
	alicloud_regions?: [_]:                           #AlicloudRegionsDataSource
	alicloud_resource_manager_folders?: [_]:          #AlicloudResourceManagerFoldersDataSource
	alicloud_resource_manager_resource_groups?: [_]:  #AlicloudResourceManagerResourceGroupsDataSource
	alicloud_route_entries?: [_]:                     #AlicloudRouteEntriesDataSource
	alicloud_route_tables?: [_]:                      #AlicloudRouteTablesDataSource
	alicloud_router_interfaces?: [_]:                 #AlicloudRouterInterfacesDataSource
	alicloud_sag_acls?: [_]:                          #AlicloudSagAclsDataSource
	alicloud_security_group_rules?: [_]:              #AlicloudSecurityGroupRulesDataSource
	alicloud_security_groups?: [_]:                   #AlicloudSecurityGroupsDataSource
	alicloud_slb_acls?: [_]:                          #AlicloudSlbAclsDataSource
	alicloud_slb_attachments?: [_]:                   #AlicloudSlbAttachmentsDataSource
	alicloud_slb_backend_servers?: [_]:               #AlicloudSlbBackendServersDataSource
	alicloud_slb_ca_certificates?: [_]:               #AlicloudSlbCaCertificatesDataSource
	alicloud_slb_domain_extensions?: [_]:             #AlicloudSlbDomainExtensionsDataSource
	alicloud_slb_listeners?: [_]:                     #AlicloudSlbListenersDataSource
	alicloud_slb_master_slave_server_groups?: [_]:    #AlicloudSlbMasterSlaveServerGroupsDataSource
	alicloud_slb_rules?: [_]:                         #AlicloudSlbRulesDataSource
	alicloud_slb_server_certificates?: [_]:           #AlicloudSlbServerCertificatesDataSource
	alicloud_slb_server_groups?: [_]:                 #AlicloudSlbServerGroupsDataSource
	alicloud_slb_zones?: [_]:                         #AlicloudSlbZonesDataSource
	alicloud_slbs?: [_]:                              #AlicloudSlbsDataSource
	alicloud_snapshots?: [_]:                         #AlicloudSnapshotsDataSource
	alicloud_snat_entries?: [_]:                      #AlicloudSnatEntriesDataSource
	alicloud_ssl_vpn_client_certs?: [_]:              #AlicloudSslVpnClientCertsDataSource
	alicloud_ssl_vpn_servers?: [_]:                   #AlicloudSslVpnServersDataSource
	alicloud_vpcs?: [_]:                              #AlicloudVpcsDataSource
	alicloud_vpn_connections?: [_]:                   #AlicloudVpnConnectionsDataSource
	alicloud_vpn_customer_gateways?: [_]:             #AlicloudVpnCustomerGatewaysDataSource
	alicloud_vpn_gateways?: [_]:                      #AlicloudVpnGatewaysDataSource
	alicloud_vswitches?: [_]:                         #AlicloudVswitchesDataSource
	alicloud_yundun_bastionhost_instances?: [_]:      #AlicloudYundunBastionhostInstancesDataSource
	alicloud_yundun_dbaudit_instance?: [_]:           #AlicloudYundunDbauditInstanceDataSource
	alicloud_zones?: [_]:                             #AlicloudZonesDataSource
}