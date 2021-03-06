// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package profitbricks

#ProfitbricksBackupUnitResource: {
	email:    string
	name:     string
	password: string
	id?:      string
	login?:   string
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksDatacenterResource: {
	location:     string
	name:         string
	description?: string
	id?:          string
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksFirewallResource: {
	datacenter_id:     string
	nic_id:            string
	protocol:          string
	server_id:         string
	icmp_code?:        string
	icmp_type?:        string
	id?:               string
	name?:             string
	port_range_end?:   number
	port_range_start?: number
	source_ip?:        string
	source_mac?:       string
	target_ip?:        string
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksGroupResource: {
	name:                 string
	access_activity_log?: bool
	create_datacenter?:   bool
	create_snapshot?:     bool
	id?:                  string
	reserve_ip?:          bool
	user_id?:             string
	users?: [{
		administrator:  bool
		email:          string
		first_name:     string
		force_sec_auth: bool
		last_name:      string
		password:       string
	}, ...]
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksIpblockResource: {
	location: string
	size:     number
	id?:      string
	ips?: [string, ...]
	name?: string
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksIpfailoverResource: {
	datacenter_id: string
	ip:            string
	lan_id:        string
	nicuuid:       string
	id?:           string
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksK8SClusterResource: {
	name:         string
	id?:          string
	k8s_version?: string
	maintenance_window?: [{
		day_of_the_week: string
		time:            string
	}, ...]
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksK8SNodePoolResource: {
	availability_zone: string
	cores_count:       number
	cpu_family:        string
	datacenter_id:     string
	k8s_cluster_id:    string
	k8s_version:       string
	name:              string
	node_count:        number
	ram_size:          number
	storage_size:      number
	storage_type:      string
	id?:               string
	lans?: [number, ...]
	public_ips?: [string, ...]
	auto_scaling?: [{
		max_node_count: number
		min_node_count: number
	}, ...]
	maintenance_window?: [{
		day_of_the_week: string
		time:            string
	}, ...]
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksLanResource: {
	datacenter_id: string
	public:        bool
	id?:           string
	name?:         string
	pcc?:          string
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksLoadbalancerResource: {
	datacenter_id: string
	name:          string
	nic_ids: [string, ...]
	dhcp?: bool
	id?:   string
	ip?:   string
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksNicResource: {
	datacenter_id:    string
	lan:              number
	server_id:        string
	dhcp?:            bool
	firewall_active?: bool
	id?:              string
	ip?:              string
	ips?: [string, ...]
	mac?:  string
	name?: string
	nat?:  bool
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksPrivateCrossconnectResource: {
	name: string
	connectable_datacenters?: [{
		id:       string
		location: string
		name:     string
	}, ...]
	description?: string
	id?:          string
	peers?: [{
		datacenter_id:   string
		datacenter_name: string
		lan_id:          string
		lan_name:        string
		location:        string
	}, ...]
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksS3KeyResource: {
	user_id:     string
	active?:     bool
	id?:         string
	secret_key?: string
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksServerResource: {
	cores:              number
	datacenter_id:      string
	name:               string
	ram:                number
	availability_zone?: string
	boot_cdrom?:        string
	boot_image?:        string
	boot_volume?:       string
	cpu_family?:        string
	firewallrule_id?:   string
	id?:                string
	image_name?:        string
	image_password?:    string
	licence_type?:      string
	primary_ip?:        string
	primary_nic?:       string
	ssh_key_path?: [string, ...]
	nic?: [{
		lan:              number
		dhcp?:            bool
		firewall_active?: bool
		ip?:              string
		ips?: [string, ...]
		mac?:  string
		name?: string
		nat?:  bool
		firewall?: [{
			protocol:   string
			icmp_code?: string
			icmp_type?: string
			ip?:        string
			ips?: [string, ...]
			name?:             string
			port_range_end?:   number
			port_range_start?: number
			source_ip?:        string
			source_mac?:       string
			target_ip?:        string
		}, ...]
	}, ...]
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
	volume?: [{
		disk_type:          string
		size:               number
		availability_zone?: string
		bus?:               string
		image_aliases?: [string, ...]
		image_name?:     string
		image_password?: string
		licence_type?:   string
		name?:           string
		ssh_key_path?: [string, ...]
	}, ...]
}
#ProfitbricksShareResource: {
	edit_privilege:  bool
	group_id:        string
	resource_id:     string
	share_privilege: bool
	id?:             string
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksSnapshotResource: {
	datacenter_id: string
	name:          string
	volume_id:     string
	id?:           string
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksUserResource: {
	administrator:  bool
	email:          string
	first_name:     string
	force_sec_auth: bool
	last_name:      string
	password:       string
	id?:            string
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#ProfitbricksVolumeResource: {
	datacenter_id:      string
	disk_type:          string
	server_id:          string
	size:               number
	availability_zone?: string
	bus?:               string
	id?:                string
	image_name?:        string
	image_password?:    string
	licence_type?:      string
	name?:              string
	ssh_key_path?: [string, ...]
	sshkey?: string
	timeouts?: {
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	}
}
#Resources: {
	profitbricks_backup_unit?: [_]:          #ProfitbricksBackupUnitResource
	profitbricks_datacenter?: [_]:           #ProfitbricksDatacenterResource
	profitbricks_firewall?: [_]:             #ProfitbricksFirewallResource
	profitbricks_group?: [_]:                #ProfitbricksGroupResource
	profitbricks_ipblock?: [_]:              #ProfitbricksIpblockResource
	profitbricks_ipfailover?: [_]:           #ProfitbricksIpfailoverResource
	profitbricks_k8s_cluster?: [_]:          #ProfitbricksK8SClusterResource
	profitbricks_k8s_node_pool?: [_]:        #ProfitbricksK8SNodePoolResource
	profitbricks_lan?: [_]:                  #ProfitbricksLanResource
	profitbricks_loadbalancer?: [_]:         #ProfitbricksLoadbalancerResource
	profitbricks_nic?: [_]:                  #ProfitbricksNicResource
	profitbricks_private_crossconnect?: [_]: #ProfitbricksPrivateCrossconnectResource
	profitbricks_s3_key?: [_]:               #ProfitbricksS3KeyResource
	profitbricks_server?: [_]:               #ProfitbricksServerResource
	profitbricks_share?: [_]:                #ProfitbricksShareResource
	profitbricks_snapshot?: [_]:             #ProfitbricksSnapshotResource
	profitbricks_user?: [_]:                 #ProfitbricksUserResource
	profitbricks_volume?: [_]:               #ProfitbricksVolumeResource
}
