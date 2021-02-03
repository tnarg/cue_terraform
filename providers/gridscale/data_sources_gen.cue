// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package gridscale

#GridscaleFirewallDataSource: resource_id: string
#GridscaleIpv4DataSource: {
	resource_id: string
	labels?: [string, ...]
}
#GridscaleIpv6DataSource: {
	resource_id: string
	labels?: [string, ...]
}
#GridscaleIsoimageDataSource: resource_id:               string
#GridscaleLoadbalancerDataSource: resource_id:           string
#GridscaleNetworkDataSource: resource_id:                string
#GridscaleObjectStorageAccesskeyDataSource: resource_id: string
#GridscalePaasDataSource: resource_id:                   string
#GridscalePaasSecurityzoneDataSource: resource_id:       string
#GridscalePublicNetworkDataSource: {}
#GridscaleServerDataSource: resource_id: string
#GridscaleSnapshotDataSource: {
	resource_id:  string
	storage_uuid: string
}
#GridscaleSnapshotscheduleDataSource: {
	resource_id:  string
	storage_uuid: string
}
#GridscaleSshkeyDataSource: resource_id:  string
#GridscaleStorageDataSource: resource_id: string
#GridscaleTemplateDataSource: {
	name: string
	labels?: [string, ...]
}
#DataSources: {
	gridscale_firewall?: [_]:                 #GridscaleFirewallDataSource
	gridscale_ipv4?: [_]:                     #GridscaleIpv4DataSource
	gridscale_ipv6?: [_]:                     #GridscaleIpv6DataSource
	gridscale_isoimage?: [_]:                 #GridscaleIsoimageDataSource
	gridscale_loadbalancer?: [_]:             #GridscaleLoadbalancerDataSource
	gridscale_network?: [_]:                  #GridscaleNetworkDataSource
	gridscale_object_storage_accesskey?: [_]: #GridscaleObjectStorageAccesskeyDataSource
	gridscale_paas?: [_]:                     #GridscalePaasDataSource
	gridscale_paas_securityzone?: [_]:        #GridscalePaasSecurityzoneDataSource
	gridscale_public_network?: [_]:           #GridscalePublicNetworkDataSource
	gridscale_server?: [_]:                   #GridscaleServerDataSource
	gridscale_snapshot?: [_]:                 #GridscaleSnapshotDataSource
	gridscale_snapshotschedule?: [_]:         #GridscaleSnapshotscheduleDataSource
	gridscale_sshkey?: [_]:                   #GridscaleSshkeyDataSource
	gridscale_storage?: [_]:                  #GridscaleStorageDataSource
	gridscale_template?: [_]:                 #GridscaleTemplateDataSource
}