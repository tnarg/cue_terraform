// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package packet

#PacketBgpSessionResource: {
	address_family: string
	device_id:      string
	default_route?: bool
	id?:            string
	status?:        string
}
#PacketDeviceResource: {
	billing_cycle: string
	facilities: [string, ...]
	hostname:                 string
	operating_system:         string
	plan:                     string
	project_id:               string
	access_private_ipv4?:     string
	access_public_ipv4?:      string
	access_public_ipv6?:      string
	always_pxe?:              bool
	created?:                 string
	deployed_facility?:       string
	description?:             string
	facility?:                string
	force_detach_volumes?:    bool
	hardware_reservation_id?: string
	id?:                      string
	ip_address_types?: [string, ...]
	ipxe_script_url?: string
	locked?:          bool
	network?: [{
		address: string
		cidr:    number
		family:  number
		gateway: string
		public:  bool
	}, ...]
	network_type?: string
	ports?: [{
		bonded: bool
		id:     string
		mac:    string
		name:   string
		type:   string
	}, ...]
	project_ssh_key_ids?: [string, ...]
	root_password?: string
	ssh_key_ids?: [string, ...]
	state?:   string
	storage?: string
	tags?: [string, ...]
	updated?:                          string
	user_data?:                        string
	wait_for_reservation_deprovision?: bool
	ip_address?: [{
		type:  string
		cidr?: number
		reservation_ids?: [string, ...]
	}, ...]
	timeouts?: {
		create?: string
		delete?: string
		update?: string
	}
}
#PacketIpAttachmentResource: {
	cidr_notation:   string
	device_id:       string
	address?:        string
	address_family?: number
	cidr?:           number
	gateway?:        string
	global?:         bool
	id?:             string
	manageable?:     bool
	management?:     bool
	netmask?:        string
	network?:        string
	public?:         bool
}
#PacketOrganizationResource: {
	name:         string
	created?:     string
	description?: string
	id?:          string
	logo?:        string
	twitter?:     string
	updated?:     string
	website?:     string
}
#PacketPortVlanAttachmentResource: {
	device_id:   string
	port_name:   string
	vlan_vnid:   number
	force_bond?: bool
	id?:         string
	native?:     bool
	port_id?:    string
	vlan_id?:    string
}
#PacketProjectResource: {
	name:               string
	backend_transfer?:  bool
	created?:           string
	id?:                string
	organization_id?:   string
	payment_method_id?: string
	updated?:           string
	bgp_config?: [{
		asn:             number
		deployment_type: string
		max_prefix?:     number
		md5?:            string
		status?:         string
	}, ...]
}
#PacketProjectSshKeyResource: {
	name:         string
	project_id:   string
	public_key:   string
	created?:     string
	fingerprint?: string
	id?:          string
	owner_id?:    string
	updated?:     string
}
#PacketReservedIpBlockResource: {
	project_id:      string
	quantity:        number
	address?:        string
	address_family?: number
	cidr?:           number
	cidr_notation?:  string
	description?:    string
	facility?:       string
	gateway?:        string
	global?:         bool
	id?:             string
	manageable?:     bool
	management?:     bool
	netmask?:        string
	network?:        string
	public?:         bool
	type?:           string
}
#PacketSpotMarketRequestResource: {
	devices_max: number
	devices_min: number
	facilities: [string, ...]
	max_bid_price:     number
	project_id:        string
	id?:               string
	wait_for_devices?: bool
	instance_parameters?: [{
		billing_cycle:    string
		hostname:         string
		operating_system: string
		plan:             string
		always_pxe?:      string
		description?:     string
		features?: [string, ...]
		locked?: string
		project_ssh_keys?: [string, ...]
		termintation_time?: string
		user_ssh_keys?: [string, ...]
		userdata?: string
	}, ...]
	timeouts?: {
		create?: string
		delete?: string
	}
}
#PacketSshKeyResource: {
	name:         string
	public_key:   string
	created?:     string
	fingerprint?: string
	id?:          string
	owner_id?:    string
	updated?:     string
}
#PacketVlanResource: {
	facility:     string
	project_id:   string
	description?: string
	id?:          string
	vxlan?:       number
}
#PacketVolumeResource: {
	facility:   string
	plan:       string
	project_id: string
	size:       number
	attachments?: [{
		href: string
	}, ...]
	billing_cycle?: string
	created?:       string
	description?:   string
	id?:            string
	locked?:        bool
	name?:          string
	state?:         string
	updated?:       string
	snapshot_policies?: [{
		snapshot_count:     number
		snapshot_frequency: string
	}, ...]
}
#PacketVolumeAttachmentResource: {
	device_id: string
	volume_id: string
	id?:       string
}
#Resources: {
	packet_bgp_session?: [_]:          #PacketBgpSessionResource
	packet_device?: [_]:               #PacketDeviceResource
	packet_ip_attachment?: [_]:        #PacketIpAttachmentResource
	packet_organization?: [_]:         #PacketOrganizationResource
	packet_port_vlan_attachment?: [_]: #PacketPortVlanAttachmentResource
	packet_project?: [_]:              #PacketProjectResource
	packet_project_ssh_key?: [_]:      #PacketProjectSshKeyResource
	packet_reserved_ip_block?: [_]:    #PacketReservedIpBlockResource
	packet_spot_market_request?: [_]:  #PacketSpotMarketRequestResource
	packet_ssh_key?: [_]:              #PacketSshKeyResource
	packet_vlan?: [_]:                 #PacketVlanResource
	packet_volume?: [_]:               #PacketVolumeResource
	packet_volume_attachment?: [_]:    #PacketVolumeAttachmentResource
}
