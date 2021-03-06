// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package opennebula

#OpennebulaAclResource: {
	resource: string
	rights:   string
	user:     string
	id?:      string
}
#OpennebulaGroupResource: {
	name:     string
	template: string
	admins?: [number, ...]
	delete_on_destruction?: bool
	id?:                    string
	users?: [number, ...]
	quotas?: [{
		datastore_quotas?: [{
			id:      number
			images?: number
			size?:   number
		}, ...]
		image_quotas?: [{
			id:           number
			running_vms?: number
		}, ...]
		network_quotas?: [{
			id:      number
			leases?: number
		}, ...]
		vm_quotas?: [{
			cpu?:              number
			memory?:           number
			running_cpu?:      number
			running_memory?:   number
			running_vms?:      number
			system_disk_size?: number
			vms?:              number
		}, ...]
	}, ...]
}
#OpennebulaImageResource: {
	datastore_id:      number
	name:              string
	clone_from_image?: string
	description?:      string
	dev_prefix?:       string
	driver?:           string
	format?:           string
	gid?:              number
	gname?:            string
	group?:            string
	id?:               string
	lock?:             string
	path?:             string
	permissions?:      string
	persistent?:       bool
	size?:             number
	tags?: [_]: string
	target?:  string
	timeout?: number
	type?:    string
	uid?:     number
	uname?:   string
}
#OpennebulaSecurityGroupResource: {
	name:         string
	commit?:      bool
	description?: string
	gid?:         number
	gname?:       string
	group?:       string
	id?:          string
	permissions?: string
	tags?: [_]: string
	uid?:   number
	uname?: string
	rule?: [{
		protocol:    string
		rule_type:   string
		icmp_type?:  string
		ip?:         string
		network_id?: string
		range?:      string
		size?:       string
	}, ...]
}
#OpennebulaTemplateResource: {
	name: string
	context?: [_]: string
	cpu?:         number
	gid?:         number
	gname?:       string
	group?:       string
	id?:          string
	memory?:      number
	permissions?: string
	reg_time?:    number
	tags?: [_]: string
	template?: string
	uid?:      number
	uname?:    string
	vcpu?:     number
	disk?: [{
		image_id: number
		driver?:  string
		size?:    number
		target?:  string
	}, ...]
	graphics?: [{
		listen:  string
		type:    string
		keymap?: string
		port?:   string
	}, ...]
	nic?: [{
		network_id:       number
		ip?:              string
		mac?:             string
		model?:           string
		network?:         string
		nic_id?:          number
		physical_device?: string
		security_groups?: [number, ...]
	}, ...]
	os?: [{
		arch: string
		boot: string
	}, ...]
	vmgroup?: [{
		role:       string
		vmgroup_id: number
	}, ...]
}
#OpennebulaVirtualDataCenterResource: {
	name: string
	group_ids?: [number, ...]
	id?: string
	zones?: [{
		cluster_ids?: [number, ...]
		datastore_ids?: [number, ...]
		host_ids?: [number, ...]
		id?: number
		vnet_ids?: [number, ...]
	}, ...]
}
#OpennebulaVirtualMachineResource: {
	context?: [_]: string
	cpu?:         number
	gid?:         number
	gname?:       string
	group?:       string
	id?:          string
	instance?:    string
	ip?:          string
	lcmstate?:    number
	memory?:      number
	name?:        string
	pending?:     bool
	permissions?: string
	state?:       number
	tags?: [_]: string
	template_id?: number
	timeout?:     number
	uid?:         number
	uname?:       string
	vcpu?:        number
	disk?: [{
		image_id: number
		driver?:  string
		size?:    number
		target?:  string
	}, ...]
	graphics?: [{
		listen:  string
		type:    string
		keymap?: string
		port?:   string
	}, ...]
	nic?: [{
		network_id:       number
		ip?:              string
		mac?:             string
		model?:           string
		network?:         string
		nic_id?:          number
		physical_device?: string
		security_groups?: [number, ...]
	}, ...]
	os?: [{
		arch: string
		boot: string
	}, ...]
	vmgroup?: [{
		role:       string
		vmgroup_id: number
	}, ...]
}
#OpennebulaVirtualMachineGroupResource: {
	name:         string
	gid?:         number
	gname?:       string
	group?:       string
	id?:          string
	permissions?: string
	tags?: [_]: string
	uid?:   number
	uname?: string
	role?: [{
		name: string
		host_affined?: [number, ...]
		host_anti_affined?: [number, ...]
		id?:     number
		policy?: string
		vms?: [number, ...]
	}, ...]
}
#OpennebulaVirtualNetworkResource: {
	name:               string
	automatic_vlan_id?: bool
	bridge?:            string
	clusters?: [number, ...]
	description?:      string
	dns?:              string
	gateway?:          string
	gid?:              number
	gname?:            string
	group?:            string
	guest_mtu?:        number
	hold_size?:        number
	id?:               string
	ip_hold?:          string
	mtu?:              number
	network_mask?:     string
	permissions?:      string
	physical_device?:  string
	reservation_size?: number
	reservation_vnet?: number
	security_groups?: [number, ...]
	tags?: [_]: string
	type?:    string
	uid?:     number
	uname?:   string
	vlan_id?: string
	ar?: [{
		size:           number
		ar_type?:       string
		global_prefix?: string
		ip4?:           string
		ip6?:           string
		mac?:           string
		prefix_length?: string
		ula_prefix?:    string
	}, ...]
}
#Resources: {
	opennebula_acl?: [_]:                   #OpennebulaAclResource
	opennebula_group?: [_]:                 #OpennebulaGroupResource
	opennebula_image?: [_]:                 #OpennebulaImageResource
	opennebula_security_group?: [_]:        #OpennebulaSecurityGroupResource
	opennebula_template?: [_]:              #OpennebulaTemplateResource
	opennebula_virtual_data_center?: [_]:   #OpennebulaVirtualDataCenterResource
	opennebula_virtual_machine?: [_]:       #OpennebulaVirtualMachineResource
	opennebula_virtual_machine_group?: [_]: #OpennebulaVirtualMachineGroupResource
	opennebula_virtual_network?: [_]:       #OpennebulaVirtualNetworkResource
}
