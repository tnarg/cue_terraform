// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package dns

#DnsARecordSetDataSource: {
	host: string
	addrs?: [string, ...]
	id?: string
}
#DnsAaaaRecordSetDataSource: {
	host: string
	addrs?: [string, ...]
	id?: string
}
#DnsCnameRecordSetDataSource: {
	host:   string
	cname?: string
	id?:    string
}
#DnsMxRecordSetDataSource: {
	domain: string
	id?:    string
	mx?: [{
		exchange:   string
		preference: number
	}, ...]
}
#DnsNsRecordSetDataSource: {
	host: string
	id?:  string
	nameservers?: [string, ...]
}
#DnsPtrRecordSetDataSource: {
	ip_address: string
	id?:        string
	ptr?:       string
}
#DnsSrvRecordSetDataSource: {
	service: string
	id?:     string
	srv?: [{
		port:     number
		priority: number
		target:   string
		weight:   number
	}, ...]
}
#DnsTxtRecordSetDataSource: {
	host:    string
	id?:     string
	record?: string
	records?: [string, ...]
}
#DataSources: {
	dns_a_record_set?: [_]:     #DnsARecordSetDataSource
	dns_aaaa_record_set?: [_]:  #DnsAaaaRecordSetDataSource
	dns_cname_record_set?: [_]: #DnsCnameRecordSetDataSource
	dns_mx_record_set?: [_]:    #DnsMxRecordSetDataSource
	dns_ns_record_set?: [_]:    #DnsNsRecordSetDataSource
	dns_ptr_record_set?: [_]:   #DnsPtrRecordSetDataSource
	dns_srv_record_set?: [_]:   #DnsSrvRecordSetDataSource
	dns_txt_record_set?: [_]:   #DnsTxtRecordSetDataSource
}
