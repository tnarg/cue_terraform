// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package spotinst

#SpotinstElastigroupAwsResource: {
	fallback_to_ondemand:    bool
	instance_types_ondemand: string
	instance_types_spot: [string, ...]
	name:        string
	orientation: string
	product:     string
	security_groups: [string, ...]
	availability_zones?: [string, ...]
	block_devices_mode?: string
	capacity_unit?:      string
	cpu_credits?:        string
	description?:        string
	desired_capacity?:   number
	draining_timeout?:   number
	ebs_optimized?:      bool
	elastic_ips?: [string, ...]
	elastic_load_balancers?: [string, ...]
	enable_monitoring?:                                  bool
	health_check_grace_period?:                          number
	health_check_type?:                                  string
	health_check_unhealthy_duration_before_replacement?: number
	iam_instance_profile?:                               string
	id?:                                                 string
	image_id?:                                           string
	instance_types_preferred_spot?: [string, ...]
	key_name?:              string
	lifetime_period?:       string
	max_size?:              number
	min_size?:              number
	ondemand_count?:        number
	persist_block_devices?: bool
	persist_private_ip?:    bool
	persist_root_device?:   bool
	placement_tenancy?:     string
	preferred_availability_zones?: [string, ...]
	private_ips?: [string, ...]
	region?:          string
	shutdown_script?: string
	spot_percentage?: number
	subnet_ids?: [string, ...]
	target_group_arns?: [string, ...]
	user_data?:                  string
	utilize_reserved_instances?: bool
	wait_for_capacity?:          number
	wait_for_capacity_timeout?:  number
	ebs_block_device?: [{
		device_name:            string
		delete_on_termination?: bool
		encrypted?:             bool
		iops?:                  number
		kms_key_id?:            string
		snapshot_id?:           string
		volume_size?:           number
		volume_type?:           string
	}, ...]
	ephemeral_block_device?: [{
		device_name:  string
		virtual_name: string
	}, ...]
	instance_types_weights?: [{
		instance_type: string
		weight:        number
	}, ...]
	integration_beanstalk?: [{
		environment_id?: string
		deployment_preferences?: [{
			automatic_roll?:        bool
			batch_size_percentage?: number
			grace_period?:          number
			strategy?: [{
				action?:                 string
				should_drain_instances?: bool
			}, ...]
		}, ...]
		managed_actions?: [{
			platform_update?: [{
				perform_at?:   string
				time_window?:  string
				update_level?: string
			}, ...]
		}, ...]
	}, ...]
	integration_codedeploy?: [{
		cleanup_on_failure:            bool
		terminate_instance_on_failure: bool
		deployment_groups?: [{
			application_name:      string
			deployment_group_name: string
		}, ...]
	}, ...]
	integration_docker_swarm?: [{
		master_host:           string
		master_port:           number
		autoscale_cooldown?:   number
		autoscale_is_enabled?: bool
		autoscale_down?: [{
			evaluation_periods?: number
		}, ...]
		autoscale_headroom?: [{
			cpu_per_unit?:    number
			memory_per_unit?: number
			num_of_units?:    number
		}, ...]
	}, ...]
	integration_ecs?: [{
		cluster_name:                            string
		autoscale_cooldown?:                     number
		autoscale_is_auto_config?:               bool
		autoscale_is_enabled?:                   bool
		autoscale_scale_down_non_service_tasks?: bool
		autoscale_attributes?: [{
			key:   string
			value: string
		}, ...]
		autoscale_down?: [{
			evaluation_periods?:        number
			max_scale_down_percentage?: number
		}, ...]
		autoscale_headroom?: [{
			cpu_per_unit?:    number
			memory_per_unit?: number
			num_of_units?:    number
		}, ...]
		batch?: [{
			job_queue_names: [string, ...]
		}, ...]
	}, ...]
	integration_gitlab?: [{
		runner?: [{
			is_enabled?: bool
		}, ...]
	}, ...]
	integration_kubernetes?: [{
		api_server?:               string
		autoscale_cooldown?:       number
		autoscale_is_auto_config?: bool
		autoscale_is_enabled?:     bool
		cluster_identifier?:       string
		integration_mode?:         string
		token?:                    string
		autoscale_down?: [{
			evaluation_periods?: number
		}, ...]
		autoscale_headroom?: [{
			cpu_per_unit?:    number
			memory_per_unit?: number
			num_of_units?:    number
		}, ...]
		autoscale_labels?: [{
			key:   string
			value: string
		}, ...]
	}, ...]
	integration_mesosphere?: [{
		api_server: string
	}, ...]
	integration_multai_runtime?: [{
		deployment_id: string
	}, ...]
	integration_nomad?: [{
		master_host:           string
		master_port:           number
		acl_token?:            string
		autoscale_cooldown?:   number
		autoscale_is_enabled?: bool
		autoscale_constraints?: [{
			key:   string
			value: string
		}, ...]
		autoscale_down?: [{
			evaluation_periods?: number
		}, ...]
		autoscale_headroom?: [{
			cpu_per_unit?:    number
			memory_per_unit?: number
			num_of_units?:    number
		}, ...]
	}, ...]
	integration_rancher?: [{
		access_key:  string
		master_host: string
		secret_key:  string
		version?:    string
	}, ...]
	integration_route53?: [{
		domains?: [{
			hosted_zone_id:    string
			record_set_type?:  string
			spotinst_acct_id?: string
			record_sets?: [{
				name:            string
				use_public_dns?: bool
				use_public_ip?:  bool
			}, ...]
		}, ...]
	}, ...]
	metadata_options?: [{
		http_tokens:                  string
		http_put_response_hop_limit?: number
	}, ...]
	multai_target_sets?: [{
		balancer_id:   string
		target_set_id: string
	}, ...]
	network_interface?: [{
		device_index:                        string
		associate_ipv6_address?:             bool
		associate_public_ip_address?:        bool
		delete_on_termination?:              bool
		description?:                        string
		network_interface_id?:               string
		private_ip_address?:                 string
		secondary_private_ip_address_count?: string
	}, ...]
	revert_to_spot?: [{
		perform_at: string
		time_windows?: [string, ...]
	}, ...]
	scaling_down_policy?: [{
		metric_name:          string
		namespace:            string
		policy_name:          string
		threshold:            number
		action_type?:         string
		adjustment?:          string
		cooldown?:            number
		evaluation_periods?:  number
		is_enabled?:          bool
		max_target_capacity?: string
		maximum?:             string
		min_target_capacity?: string
		minimum?:             string
		operator?:            string
		period?:              number
		source?:              string
		statistic?:           string
		target?:              string
		unit?:                string
		dimensions?: [{
			name:   string
			value?: string
		}, ...]
	}, ...]
	scaling_strategy?: [{
		terminate_at_end_of_billing_hour?: bool
		termination_policy?:               string
	}, ...]
	scaling_target_policy?: [{
		metric_name:             string
		namespace:               string
		policy_name:             string
		target:                  number
		cooldown?:               number
		max_capacity_per_scale?: string
		predictive_mode?:        string
		source?:                 string
		statistic?:              string
		unit?:                   string
		dimensions?: [{
			name:   string
			value?: string
		}, ...]
	}, ...]
	scaling_up_policy?: [{
		metric_name:          string
		namespace:            string
		policy_name:          string
		threshold:            number
		action_type?:         string
		adjustment?:          string
		cooldown?:            number
		evaluation_periods?:  number
		is_enabled?:          bool
		max_target_capacity?: string
		maximum?:             string
		min_target_capacity?: string
		minimum?:             string
		operator?:            string
		period?:              number
		source?:              string
		statistic?:           string
		target?:              string
		unit?:                string
		dimensions?: [{
			name:   string
			value?: string
		}, ...]
	}, ...]
	scheduled_task?: [{
		task_type:              string
		adjustment?:            string
		adjustment_percentage?: string
		batch_size_percentage?: string
		cron_expression?:       string
		frequency?:             string
		grace_period?:          string
		is_enabled?:            bool
		max_capacity?:          string
		min_capacity?:          string
		scale_max_capacity?:    string
		scale_min_capacity?:    string
		scale_target_capacity?: string
		start_time?:            string
		target_capacity?:       string
	}, ...]
	signal?: [{
		name:     string
		timeout?: number
	}, ...]
	stateful_deallocation?: [{
		should_delete_images?:             bool
		should_delete_network_interfaces?: bool
		should_delete_snapshots?:          bool
		should_delete_volumes?:            bool
	}, ...]
	tags?: [{
		key?:   string
		value?: string
	}, ...]
	update_policy?: [{
		should_resume_stateful: bool
		should_roll:            bool
		auto_apply_tags?:       bool
		roll_config?: [{
			batch_size_percentage:     number
			grace_period?:             number
			health_check_type?:        string
			wait_for_roll_percentage?: number
			wait_for_roll_timeout?:    number
			strategy?: [{
				action:                        string
				batch_min_healthy_percentage?: number
				should_drain_instances?:       bool
				on_failure?: [{
					action_type:                       string
					batch_num?:                        number
					draining_timeout?:                 number
					should_decrement_target_capacity?: bool
					should_handle_all_batches?:        bool
				}, ...]
			}, ...]
		}, ...]
	}, ...]
}
#SpotinstElastigroupAwsBeanstalkResource: {
	desired_capacity: number
	instance_types_spot: [string, ...]
	max_size:                    number
	min_size:                    number
	name:                        string
	product:                     string
	region:                      string
	beanstalk_environment_id?:   string
	beanstalk_environment_name?: string
	id?:                         string
	maintenance?:                string
	deployment_preferences?: [{
		automatic_roll?:        bool
		batch_size_percentage?: number
		grace_period?:          number
		strategy?: [{
			action?:                 string
			should_drain_instances?: bool
		}, ...]
	}, ...]
	managed_actions?: [{
		platform_update?: [{
			perform_at?:   string
			time_window?:  string
			update_level?: string
		}, ...]
	}, ...]
	scheduled_task?: [{
		task_type:              string
		adjustment?:            string
		adjustment_percentage?: string
		batch_size_percentage?: string
		cron_expression?:       string
		frequency?:             string
		grace_period?:          string
		is_enabled?:            bool
		max_capacity?:          string
		min_capacity?:          string
		scale_max_capacity?:    string
		scale_min_capacity?:    string
		scale_target_capacity?: string
		start_time?:            string
		target_capacity?:       string
	}, ...]
}
#SpotinstElastigroupAwsSuspensionResource: {
	group_id: string
	id?:      string
	suspension?: [{
		name: string
	}, ...]
}
#SpotinstElastigroupAzureResource: {
	low_priority_sizes: [string, ...]
	name: string
	od_sizes: [string, ...]
	product:             string
	region:              string
	resource_group_name: string
	custom_data?:        string
	desired_capacity?:   number
	id?:                 string
	max_size?:           number
	min_size?:           number
	shutdown_script?:    string
	user_data?:          string
	health_check?: [{
		health_check_type: string
		auto_healing?:     bool
		grace_period?:     number
	}, ...]
	image?: [{
		custom?: [{
			image_name:          string
			resource_group_name: string
		}, ...]
		marketplace?: [{
			offer:     string
			publisher: string
			sku:       string
		}, ...]
	}, ...]
	integration_kubernetes?: [{
		cluster_identifier: string
	}, ...]
	integration_multai_runtime?: [{
		deployment_id: string
	}, ...]
	load_balancers?: [{
		type:           string
		auto_weight?:   bool
		balancer_id?:   string
		target_set_id?: string
	}, ...]
	login?: [{
		user_name:       string
		password?:       string
		ssh_public_key?: string
	}, ...]
	managed_service_identities?: [{
		name:                string
		resource_group_name: string
	}, ...]
	network?: [{
		resource_group_name:  string
		subnet_name:          string
		virtual_network_name: string
		assign_public_ip?:    bool
		additional_ip_configs?: [{
			name:                string
			private_ip_version?: string
		}, ...]
	}, ...]
	scaling_down_policy?: [{
		metric_name:          string
		namespace:            string
		policy_name:          string
		threshold:            number
		action_type?:         string
		adjustment?:          string
		cooldown?:            number
		evaluation_periods?:  number
		max_target_capacity?: string
		maximum?:             string
		min_target_capacity?: string
		minimum?:             string
		operator?:            string
		period?:              number
		statistic?:           string
		target?:              string
		unit?:                string
		dimensions?: [{
			name:   string
			value?: string
		}, ...]
	}, ...]
	scaling_up_policy?: [{
		metric_name:          string
		namespace:            string
		policy_name:          string
		threshold:            number
		action_type?:         string
		adjustment?:          string
		cooldown?:            number
		evaluation_periods?:  number
		max_target_capacity?: string
		maximum?:             string
		min_target_capacity?: string
		minimum?:             string
		operator?:            string
		period?:              number
		statistic?:           string
		target?:              string
		unit?:                string
		dimensions?: [{
			name:   string
			value?: string
		}, ...]
	}, ...]
	scheduled_task?: [{
		cron_expression:        string
		task_type:              string
		adjustment?:            string
		adjustment_percentage?: string
		batch_size_percentage?: string
		grace_period?:          string
		is_enabled?:            bool
		scale_max_capacity?:    string
		scale_min_capacity?:    string
		scale_target_capacity?: string
	}, ...]
	strategy?: [{
		draining_timeout?:        number
		low_priority_percentage?: number
		od_count?:                number
	}, ...]
	update_policy?: [{
		should_roll: bool
		roll_config?: [{
			batch_size_percentage: number
			grace_period?:         number
			health_check_type?:    string
		}, ...]
	}, ...]
}
#SpotinstElastigroupGcpResource: {
	desired_capacity: number
	name:             string
	auto_healing?:    bool
	availability_zones?: [string, ...]
	description?:               string
	draining_timeout?:          number
	fallback_to_ondemand?:      bool
	health_check_grace_period?: number
	health_check_type?:         string
	id?:                        string
	instance_types_ondemand?:   string
	instance_types_preemptible?: [string, ...]
	ip_forwarding?:          bool
	max_size?:               number
	min_size?:               number
	ondemand_count?:         number
	preemptible_percentage?: number
	service_account?:        string
	shutdown_script?:        string
	startup_script?:         string
	tags?: [string, ...]
	unhealthy_duration?: number
	backend_services?: [{
		service_name:   string
		location_type?: string
		scheme?:        string
		named_ports?: [{
			name: string
			ports: [string, ...]
		}, ...]
	}, ...]
	disk?: [{
		auto_delete?: bool
		boot?:        bool
		device_name?: string
		interface?:   string
		mode?:        string
		source?:      string
		type?:        string
		initialize_params?: [{
			source_image:  string
			disk_size_gb?: string
			disk_type?:    string
		}, ...]
	}, ...]
	gpu?: [{
		count: number
		type:  string
	}, ...]
	instance_types_custom?: [{
		memory_gib: number
		vcpu:       number
	}, ...]
	integration_docker_swarm?: [{
		master_host: string
		master_port: number
	}, ...]
	integration_gke?: [{
		auto_update?:              bool
		autoscale_cooldown?:       number
		autoscale_is_auto_config?: bool
		autoscale_is_enabled?:     bool
		cluster_id?:               string
		location?:                 string
		autoscale_down?: [{
			evaluation_periods?: number
		}, ...]
		autoscale_headroom?: [{
			cpu_per_unit?:    number
			memory_per_unit?: number
			num_of_units?:    number
		}, ...]
		autoscale_labels?: [{
			key:   string
			value: string
		}, ...]
	}, ...]
	labels?: [{
		key:   string
		value: string
	}, ...]
	metadata?: [{
		key:   string
		value: string
	}, ...]
	network_interface?: [{
		network: string
		access_configs?: [{
			name?: string
			type?: string
		}, ...]
		alias_ip_ranges?: [{
			ip_cidr_range:         string
			subnetwork_range_name: string
		}, ...]
	}, ...]
	scaling_down_policy?: [{
		metric_name:         string
		namespace:           string
		policy_name:         string
		threshold:           number
		unit:                string
		action_type?:        string
		adjustment?:         number
		cooldown?:           number
		evaluation_periods?: number
		operator?:           string
		period?:             number
		source?:             string
		statistic?:          string
		dimensions?: [{
			name:   string
			value?: string
		}, ...]
	}, ...]
	scaling_up_policy?: [{
		metric_name:         string
		namespace:           string
		policy_name:         string
		threshold:           number
		unit:                string
		action_type?:        string
		adjustment?:         number
		cooldown?:           number
		evaluation_periods?: number
		operator?:           string
		period?:             number
		source?:             string
		statistic?:          string
		dimensions?: [{
			name:   string
			value?: string
		}, ...]
	}, ...]
	scheduled_task?: [{
		task_type:        string
		cron_expression?: string
		is_enabled?:      bool
		max_capacity?:    string
		min_capacity?:    string
		target_capacity?: string
	}, ...]
	subnets?: [{
		region: string
		subnet_names: [string, ...]
	}, ...]
}
#SpotinstElastigroupGkeResource: {
	cluster_zone_name:        string
	desired_capacity:         number
	name:                     string
	cluster_id?:              string
	draining_timeout?:        number
	fallback_to_ondemand?:    bool
	id?:                      string
	instance_types_ondemand?: string
	instance_types_preemptible?: [string, ...]
	ip_forwarding?:          bool
	max_size?:               number
	min_size?:               number
	node_image?:             string
	ondemand_count?:         number
	preemptible_percentage?: number
	service_account?:        string
	shutdown_script?:        string
	startup_script?:         string
	tags?: [string, ...]
	backend_services?: [{
		service_name:   string
		location_type?: string
		scheme?:        string
		named_ports?: [{
			name: string
			ports: [string, ...]
		}, ...]
	}, ...]
	disk?: [{
		auto_delete?: bool
		boot?:        bool
		device_name?: string
		interface?:   string
		mode?:        string
		source?:      string
		type?:        string
		initialize_params?: [{
			source_image:  string
			disk_size_gb?: string
			disk_type?:    string
		}, ...]
	}, ...]
	gpu?: [{
		count: number
		type:  string
	}, ...]
	instance_types_custom?: [{
		memory_gib: number
		vcpu:       number
	}, ...]
	integration_docker_swarm?: [{
		master_host: string
		master_port: number
	}, ...]
	integration_gke?: [{
		auto_update?:              bool
		autoscale_cooldown?:       number
		autoscale_is_auto_config?: bool
		autoscale_is_enabled?:     bool
		cluster_id?:               string
		location?:                 string
		autoscale_down?: [{
			evaluation_periods?: number
		}, ...]
		autoscale_headroom?: [{
			cpu_per_unit?:    number
			memory_per_unit?: number
			num_of_units?:    number
		}, ...]
		autoscale_labels?: [{
			key:   string
			value: string
		}, ...]
	}, ...]
	labels?: [{
		key:   string
		value: string
	}, ...]
	metadata?: [{
		key:   string
		value: string
	}, ...]
	network_interface?: [{
		network: string
		access_configs?: [{
			name?: string
			type?: string
		}, ...]
		alias_ip_ranges?: [{
			ip_cidr_range:         string
			subnetwork_range_name: string
		}, ...]
	}, ...]
	scaling_down_policy?: [{
		metric_name:         string
		namespace:           string
		policy_name:         string
		threshold:           number
		unit:                string
		action_type?:        string
		adjustment?:         number
		cooldown?:           number
		evaluation_periods?: number
		operator?:           string
		period?:             number
		source?:             string
		statistic?:          string
		dimensions?: [{
			name:   string
			value?: string
		}, ...]
	}, ...]
	scaling_up_policy?: [{
		metric_name:         string
		namespace:           string
		policy_name:         string
		threshold:           number
		unit:                string
		action_type?:        string
		adjustment?:         number
		cooldown?:           number
		evaluation_periods?: number
		operator?:           string
		period?:             number
		source?:             string
		statistic?:          string
		dimensions?: [{
			name:   string
			value?: string
		}, ...]
	}, ...]
}
#SpotinstHealthCheckResource: {
	proxy_address: string
	resource_id:   string
	id?:           string
	name?:         string
	proxy_port?:   number
	check?: [{
		healthy:    number
		interval:   number
		port:       number
		protocol:   string
		unhealthy:  number
		end_point?: string
		endpoint?:  string
		time_out?:  number
		timeout?:   number
	}, ...]
}
#SpotinstManagedInstanceAwsResource: {
	image_id: string
	instance_types: [string, ...]
	name:                  string
	persist_block_devices: bool
	product:               string
	subnet_ids: [string, ...]
	vpc_id:                string
	auto_healing?:         bool
	block_devices_mode?:   string
	cpu_credits?:          string
	description?:          string
	draining_timeout?:     number
	ebs_optimized?:        bool
	elastic_ip?:           string
	enable_monitoring?:    bool
	fall_back_to_od?:      bool
	grace_period?:         number
	health_check_type?:    string
	iam_instance_profile?: string
	id?:                   string
	key_pair?:             string
	life_cycle?:           string
	optimization_windows?: [string, ...]
	orientation?:         string
	persist_private_ip?:  bool
	persist_root_device?: bool
	placement_tenancy?:   string
	preferred_type?:      string
	private_ip?:          string
	region?:              string
	security_group_ids?: [string, ...]
	shutdown_script?:            string
	unhealthy_duration?:         number
	user_data?:                  string
	utilize_reserved_instances?: bool
	integration_route53?: [{
		domains?: [{
			hosted_zone_id:    string
			record_set_type?:  string
			spotinst_acct_id?: string
			record_sets?: [{
				name:            string
				use_public_dns?: bool
				use_public_ip?:  bool
			}, ...]
		}, ...]
	}, ...]
	load_balancers?: [{
		type:           string
		arn?:           string
		auto_weight?:   bool
		az_awareness?:  bool
		balancer_id?:   string
		name?:          string
		target_set_id?: string
	}, ...]
	network_interface?: [{
		device_index:                 string
		associate_ipv6_address?:      bool
		associate_public_ip_address?: bool
	}, ...]
	revert_to_spot?: [{
		perform_at: string
	}, ...]
	scheduled_task?: [{
		task_type:        string
		cron_expression?: string
		frequency?:       string
		is_enabled?:      bool
		start_time?:      string
	}, ...]
	tags?: [{
		key?:   string
		value?: string
	}, ...]
}
#SpotinstMrscalerAwsResource: {
	name:             string
	strategy:         string
	additional_info?: string
	additional_primary_security_groups?: [string, ...]
	additional_replica_security_groups?: [string, ...]
	availability_zones?: [string, ...]
	cluster_id?:            string
	core_desired_capacity?: number
	core_ebs_optimized?:    bool
	core_instance_types?: [string, ...]
	core_lifecycle?:                 string
	core_max_size?:                  number
	core_min_size?:                  number
	core_unit?:                      string
	custom_ami_id?:                  string
	description?:                    string
	ebs_root_volume_size?:           number
	ec2_key_name?:                   string
	expose_cluster_id?:              bool
	id?:                             string
	job_flow_role?:                  string
	keep_job_flow_alive?:            bool
	log_uri?:                        string
	managed_primary_security_group?: string
	managed_replica_security_group?: string
	master_ebs_optimized?:           bool
	master_instance_types?: [string, ...]
	master_lifecycle?:              string
	output_cluster_id?:             string
	region?:                        string
	release_label?:                 string
	repo_upgrade_on_boot?:          string
	retries?:                       number
	security_config?:               string
	service_access_security_group?: string
	service_role?:                  string
	task_desired_capacity?:         number
	task_ebs_optimized?:            bool
	task_instance_types?: [string, ...]
	task_lifecycle?:        string
	task_max_size?:         number
	task_min_size?:         number
	task_unit?:             string
	termination_protected?: bool
	visible_to_all_users?:  bool
	applications?: [{
		name: string
		args?: [string, ...]
		version?: string
	}, ...]
	bootstrap_actions_file?: [{
		bucket: string
		key:    string
	}, ...]
	configurations_file?: [{
		bucket: string
		key:    string
	}, ...]
	core_ebs_block_device?: [{
		size_in_gb:            number
		volume_type:           string
		iops?:                 number
		volumes_per_instance?: number
	}, ...]
	core_scaling_down_policy?: [{
		metric_name:  string
		namespace:    string
		policy_name:  string
		threshold:    number
		unit:         string
		action_type?: string
		adjustment?:  string
		cooldown?:    number
		dimensions?: [_]: string
		evaluation_periods?:  number
		max_target_capacity?: string
		maximum?:             string
		min_target_capacity?: string
		minimum?:             string
		operator?:            string
		period?:              number
		statistic?:           string
		target?:              string
	}, ...]
	core_scaling_up_policy?: [{
		metric_name:  string
		namespace:    string
		policy_name:  string
		threshold:    number
		unit:         string
		action_type?: string
		adjustment?:  string
		cooldown?:    number
		dimensions?: [_]: string
		evaluation_periods?:  number
		max_target_capacity?: string
		maximum?:             string
		min_target_capacity?: string
		minimum?:             string
		operator?:            string
		period?:              number
		statistic?:           string
		target?:              string
	}, ...]
	instance_weights?: [{
		instance_type:     string
		weighted_capacity: number
	}, ...]
	master_ebs_block_device?: [{
		size_in_gb:            number
		volume_type:           string
		iops?:                 number
		volumes_per_instance?: number
	}, ...]
	provisioning_timeout?: [{
		timeout:        number
		timeout_action: string
	}, ...]
	scheduled_task?: [{
		cron:                string
		instance_group_type: string
		task_type:           string
		desired_capacity?:   string
		is_enabled?:         bool
		max_capacity?:       string
		min_capacity?:       string
	}, ...]
	steps_file?: [{
		bucket: string
		key:    string
	}, ...]
	tags?: [{
		key:   string
		value: string
	}, ...]
	task_ebs_block_device?: [{
		size_in_gb:            number
		volume_type:           string
		iops?:                 number
		volumes_per_instance?: number
	}, ...]
	task_scaling_down_policy?: [{
		metric_name:  string
		namespace:    string
		policy_name:  string
		threshold:    number
		unit:         string
		action_type?: string
		adjustment?:  string
		cooldown?:    number
		dimensions?: [_]: string
		evaluation_periods?:  number
		max_target_capacity?: string
		maximum?:             string
		min_target_capacity?: string
		minimum?:             string
		operator?:            string
		period?:              number
		statistic?:           string
		target?:              string
	}, ...]
	task_scaling_up_policy?: [{
		metric_name:  string
		namespace:    string
		policy_name:  string
		threshold:    number
		unit:         string
		action_type?: string
		adjustment?:  string
		cooldown?:    number
		dimensions?: [_]: string
		evaluation_periods?:  number
		max_target_capacity?: string
		maximum?:             string
		min_target_capacity?: string
		minimum?:             string
		operator?:            string
		period?:              number
		statistic?:           string
		target?:              string
	}, ...]
	termination_policies?: [{
		statements?: [{
			metric_name:         string
			namespace:           string
			threshold:           number
			evaluation_periods?: number
			operator?:           string
			period?:             number
			statistic?:          string
			unit?:               string
		}, ...]
	}, ...]
}
#SpotinstMultaiBalancerResource: {
	name: string
	dns_cname_aliases?: [string, ...]
	id?:     string
	scheme?: string
	connection_timeouts?: [{
		draining?: number
		idle?:     number
	}, ...]
	tags?: [{
		key:   string
		value: string
	}, ...]
}
#SpotinstMultaiDeploymentResource: {
	name: string
	id?:  string
}
#SpotinstMultaiListenerResource: {
	balancer_id: string
	port:        number
	protocol:    string
	id?:         string
	tags?: [{
		key:   string
		value: string
	}, ...]
	tls_config?: [{
		certificate_ids: [string, ...]
		cipher_suites: [string, ...]
		max_version:                 string
		min_version:                 string
		prefer_server_cipher_suites: bool
		session_tickets_disabled:    bool
	}, ...]
}
#SpotinstMultaiRoutingRuleResource: {
	balancer_id: string
	listener_id: string
	route:       string
	target_set_ids: [string, ...]
	id?: string
	middleware_ids?: [string, ...]
	priority?: number
	strategy?: string
	tags?: [{
		key:   string
		value: string
	}, ...]
}
#SpotinstMultaiTargetResource: {
	balancer_id:   string
	host:          string
	target_set_id: string
	weight:        number
	id?:           string
	name?:         string
	port?:         number
	tags?: [{
		key:   string
		value: string
	}, ...]
}
#SpotinstMultaiTargetSetResource: {
	balancer_id:   string
	deployment_id: string
	protocol:      string
	weight:        number
	id?:           string
	name?:         string
	port?:         number
	health_check?: [{
		healthy_threshold:   number
		interval:            number
		path:                string
		protocol:            string
		timeout:             number
		unhealthy_threshold: number
		port?:               number
	}, ...]
	tags?: [{
		key:   string
		value: string
	}, ...]
}
#SpotinstOceanAwsResource: {
	security_groups: [string, ...]
	subnet_ids: [string, ...]
	associate_public_ip_address?: bool
	blacklist?: [string, ...]
	controller_id?:              string
	desired_capacity?:           number
	draining_timeout?:           number
	ebs_optimized?:              bool
	fallback_to_ondemand?:       bool
	grace_period?:               number
	iam_instance_profile?:       string
	id?:                         string
	image_id?:                   string
	key_name?:                   string
	max_size?:                   number
	min_size?:                   number
	monitoring?:                 bool
	name?:                       string
	region?:                     string
	root_volume_size?:           number
	spot_percentage?:            number
	user_data?:                  string
	utilize_reserved_instances?: bool
	whitelist?: [string, ...]
	autoscaler?: [{
		auto_headroom_percentage?: number
		autoscale_cooldown?:       number
		autoscale_is_auto_config?: bool
		autoscale_is_enabled?:     bool
		autoscale_down?: [{
			evaluation_periods?:        number
			max_scale_down_percentage?: number
		}, ...]
		autoscale_headroom?: [{
			cpu_per_unit?:    number
			gpu_per_unit?:    number
			memory_per_unit?: number
			num_of_units?:    number
		}, ...]
		resource_limits?: [{
			max_memory_gib?: number
			max_vcpu?:       number
		}, ...]
	}, ...]
	load_balancers?: [{
		arn?:  string
		name?: string
		type?: string
	}, ...]
	scheduled_task?: [{
		shutdown_hours?: [{
			time_windows: [string, ...]
			is_enabled?: bool
		}, ...]
		tasks?: [{
			cron_expression: string
			is_enabled:      bool
			task_type:       string
		}, ...]
	}, ...]
	tags?: [{
		key:   string
		value: string
	}, ...]
	update_policy?: [{
		should_roll: bool
		roll_config?: [{
			batch_size_percentage: number
		}, ...]
	}, ...]
}
#SpotinstOceanAwsLaunchSpecResource: {
	ocean_id:              string
	iam_instance_profile?: string
	id?:                   string
	image_id?:             string
	instance_types?: [string, ...]
	name?:             string
	root_volume_size?: number
	security_groups?: [string, ...]
	subnet_ids?: [string, ...]
	user_data?: string
	autoscale_headrooms?: [{
		num_of_units:     number
		cpu_per_unit?:    number
		gpu_per_unit?:    number
		memory_per_unit?: number
	}, ...]
	block_device_mappings?: [{
		device_name:   string
		no_device?:    string
		virtual_name?: string
		ebs?: [{
			delete_on_termination?: bool
			encrypted?:             bool
			iops?:                  number
			kms_key_id?:            string
			snapshot_id?:           string
			volume_size?:           number
			volume_type?:           string
			dynamic_volume_size?: [{
				base_size:              number
				resource:               string
				size_per_resource_unit: number
			}, ...]
		}, ...]
	}, ...]
	elastic_ip_pool?: [{
		tag_selector?: [{
			tag_key:    string
			tag_value?: string
		}, ...]
	}, ...]
	labels?: [{
		key:   string
		value: string
	}, ...]
	resource_limits?: [{
		max_instance_count?: number
	}, ...]
	strategy?: [{
		spot_percentage?: number
	}, ...]
	tags?: [{
		key:   string
		value: string
	}, ...]
	taints?: [{
		effect: string
		key:    string
		value:  string
	}, ...]
}
#SpotinstOceanEcsResource: {
	cluster_name: string
	name:         string
	region:       string
	security_group_ids: [string, ...]
	subnet_ids: [string, ...]
	associate_public_ip_address?: bool
	desired_capacity?:            number
	draining_timeout?:            number
	ebs_optimized?:               bool
	iam_instance_profile?:        string
	id?:                          string
	image_id?:                    string
	key_pair?:                    string
	max_size?:                    number
	min_size?:                    number
	monitoring?:                  bool
	user_data?:                   string
	utilize_reserved_instances?:  bool
	whitelist?: [string, ...]
	autoscaler?: [{
		cooldown?:       number
		is_auto_config?: bool
		is_enabled?:     bool
		down?: [{
			max_scale_down_percentage?: number
		}, ...]
		headroom?: [{
			cpu_per_unit?:    number
			memory_per_unit?: number
			num_of_units?:    number
		}, ...]
		resource_limits?: [{
			max_memory_gib?: number
			max_vcpu?:       number
		}, ...]
	}, ...]
	scheduled_task?: [{
		shutdown_hours?: [{
			time_windows: [string, ...]
			is_enabled?: bool
		}, ...]
		tasks?: [{
			cron_expression: string
			is_enabled:      bool
			task_type:       string
		}, ...]
	}, ...]
	tags?: [{
		key:   string
		value: string
	}, ...]
	update_policy?: [{
		should_roll: bool
		roll_config?: [{
			batch_size_percentage: number
		}, ...]
	}, ...]
}
#SpotinstOceanEcsLaunchSpecResource: {
	name:                  string
	ocean_id:              string
	iam_instance_profile?: string
	id?:                   string
	image_id?:             string
	security_group_ids?: [string, ...]
	user_data?: string
	attributes?: [{
		key:   string
		value: string
	}, ...]
	autoscale_headrooms?: [{
		num_of_units:     number
		cpu_per_unit?:    number
		memory_per_unit?: number
	}, ...]
	block_device_mappings?: [{
		device_name:   string
		no_device?:    string
		virtual_name?: string
		ebs?: [{
			delete_on_termination?: bool
			encrypted?:             bool
			iops?:                  number
			kms_key_id?:            string
			snapshot_id?:           string
			volume_size?:           number
			volume_type?:           string
			dynamic_volume_size?: [{
				base_size:              number
				resource:               string
				size_per_resource_unit: number
			}, ...]
		}, ...]
	}, ...]
	tags?: [{
		key:   string
		value: string
	}, ...]
}
#SpotinstOceanGkeImportResource: {
	cluster_name:           string
	location:               string
	cluster_controller_id?: string
	desired_capacity?:      number
	id?:                    string
	max_size?:              number
	min_size?:              number
	whitelist?: [string, ...]
	autoscaler?: [{
		auto_headroom_percentage?: number
		cooldown?:                 number
		is_auto_config?:           bool
		is_enabled?:               bool
		down?: [{
			evaluation_periods?:        number
			max_scale_down_percentage?: number
		}, ...]
		headroom?: [{
			cpu_per_unit?:    number
			gpu_per_unit?:    number
			memory_per_unit?: number
			num_of_units?:    number
		}, ...]
		resource_limits?: [{
			max_memory_gib?: number
			max_vcpu?:       number
		}, ...]
	}, ...]
	backend_services?: [{
		service_name:   string
		location_type?: string
		scheme?:        string
		named_ports?: [{
			name: string
			ports: [string, ...]
		}, ...]
	}, ...]
	scheduled_task?: [{
		shutdown_hours?: [{
			time_windows: [string, ...]
			is_enabled?: bool
		}, ...]
		tasks?: [{
			cron_expression:        string
			is_enabled:             bool
			task_type:              string
			batch_size_percentage?: number
		}, ...]
	}, ...]
}
#SpotinstOceanGkeLaunchSpecResource: {
	ocean_id:     string
	source_image: string
	id?:          string
	autoscale_headrooms?: [{
		num_of_units:     number
		cpu_per_unit?:    number
		gpu_per_unit?:    number
		memory_per_unit?: number
	}, ...]
	labels?: [{
		key:   string
		value: string
	}, ...]
	metadata?: [{
		key:   string
		value: string
	}, ...]
	taints?: [{
		effect: string
		key:    string
		value:  string
	}, ...]
}
#SpotinstOceanGkeLaunchSpecImportResource: {
	node_pool_name: string
	ocean_id:       string
	id?:            string
}
#SpotinstSubscriptionResource: {
	endpoint:    string
	event_type:  string
	protocol:    string
	resource_id: string
	format?: [_]: string
	id?: string
}
#Resources: {
	spotinst_elastigroup_aws?: [_]:              #SpotinstElastigroupAwsResource
	spotinst_elastigroup_aws_beanstalk?: [_]:    #SpotinstElastigroupAwsBeanstalkResource
	spotinst_elastigroup_aws_suspension?: [_]:   #SpotinstElastigroupAwsSuspensionResource
	spotinst_elastigroup_azure?: [_]:            #SpotinstElastigroupAzureResource
	spotinst_elastigroup_gcp?: [_]:              #SpotinstElastigroupGcpResource
	spotinst_elastigroup_gke?: [_]:              #SpotinstElastigroupGkeResource
	spotinst_health_check?: [_]:                 #SpotinstHealthCheckResource
	spotinst_managed_instance_aws?: [_]:         #SpotinstManagedInstanceAwsResource
	spotinst_mrscaler_aws?: [_]:                 #SpotinstMrscalerAwsResource
	spotinst_multai_balancer?: [_]:              #SpotinstMultaiBalancerResource
	spotinst_multai_deployment?: [_]:            #SpotinstMultaiDeploymentResource
	spotinst_multai_listener?: [_]:              #SpotinstMultaiListenerResource
	spotinst_multai_routing_rule?: [_]:          #SpotinstMultaiRoutingRuleResource
	spotinst_multai_target?: [_]:                #SpotinstMultaiTargetResource
	spotinst_multai_target_set?: [_]:            #SpotinstMultaiTargetSetResource
	spotinst_ocean_aws?: [_]:                    #SpotinstOceanAwsResource
	spotinst_ocean_aws_launch_spec?: [_]:        #SpotinstOceanAwsLaunchSpecResource
	spotinst_ocean_ecs?: [_]:                    #SpotinstOceanEcsResource
	spotinst_ocean_ecs_launch_spec?: [_]:        #SpotinstOceanEcsLaunchSpecResource
	spotinst_ocean_gke_import?: [_]:             #SpotinstOceanGkeImportResource
	spotinst_ocean_gke_launch_spec?: [_]:        #SpotinstOceanGkeLaunchSpecResource
	spotinst_ocean_gke_launch_spec_import?: [_]: #SpotinstOceanGkeLaunchSpecImportResource
	spotinst_subscription?: [_]:                 #SpotinstSubscriptionResource
}
