// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package triton

#TritonFabricResource: {
	name:               string
	provision_end_ip:   string
	provision_start_ip: string
	subnet:             string
	vlan_id:            number
	description?:       string
	gateway?:           string
	internet_nat?:      bool
}
#TritonFirewallRuleResource: {
	rule:         string
	description?: string
	enabled?:     bool
}
#TritonInstanceTemplateResource: {
	image:             string
	package:           string
	template_name:     string
	firewall_enabled?: bool
	timeouts?: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
#TritonKeyResource: {
	key: string
	timeouts?: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
#TritonMachineResource: {
	image:             string
	package:           string
	administrator_pw?: string
	affinity?: [string, ...]
	cloud_config?:                string
	deletion_protection_enabled?: bool
	firewall_enabled?:            bool
	metadata?: [_]: string
	networks?: [string, ...]
	tags?: [_]: string
	user_data?:   string
	user_script?: string
	cns?: [{
		disable?: bool
		services?: [string, ...]
	}, ...]
	locality?: [{
		close_to?: [string, ...]
		far_from?: [string, ...]
	}, ...]
	nic?: [{
		network: string
	}, ...]
	timeouts?: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
	volume?: [{
		mountpoint: string
		name:       string
	}, ...]
}
#TritonServiceGroupResource: {
	group_name: string
	template:   string
	timeouts?: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
#TritonSnapshotResource: {
	machine_id: string
	name:       string
}
#TritonVlanResource: {
	name:         string
	vlan_id:      number
	description?: string
	timeouts?: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
#TritonVolumeResource: {
	tags?: [_]: string
	type?: string
	timeouts?: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
#Resources: {
	triton_fabric?: [_]:            #TritonFabricResource
	triton_firewall_rule?: [_]:     #TritonFirewallRuleResource
	triton_instance_template?: [_]: #TritonInstanceTemplateResource
	triton_key?: [_]:               #TritonKeyResource
	triton_machine?: [_]:           #TritonMachineResource
	triton_service_group?: [_]:     #TritonServiceGroupResource
	triton_snapshot?: [_]:          #TritonSnapshotResource
	triton_vlan?: [_]:              #TritonVlanResource
	triton_volume?: [_]:            #TritonVolumeResource
}