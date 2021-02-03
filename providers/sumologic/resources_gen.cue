// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package sumologic

#SumologicCloudsyslogSourceResource: {
	collector_id:            number
	name:                    string
	automatic_date_parsing?: bool
	category?:               string
	cutoff_relative_time?:   string
	cutoff_timestamp?:       number
	description?:            string
	destroy?:                bool
	fields?: [_]: string
	force_timezone?:               bool
	host_name?:                    string
	lookup_by_name?:               bool
	manual_prefix_regexp?:         string
	multiline_processing_enabled?: bool
	timezone?:                     string
	use_autoline_matching?:        bool
	default_date_formats?: [{
		format:   string
		locator?: string
	}, ...]
	filters?: [{
		filter_type: string
		name:        string
		regexp:      string
		mask?:       string
	}, ...]
}
#SumologicCollectorResource: {
	name:         string
	category?:    string
	description?: string
	destroy?:     bool
	fields?: [_]: string
	lookup_by_name?: bool
	timezone?:       string
}
#SumologicCollectorIngestBudgetAssignmentResource: {
	collector_id:     string
	ingest_budget_id: string
}
#SumologicConnectionResource: {
	default_payload: string
	name:            string
	type:            string
	url:             string
	custom_headers?: [_]: string
	description?: string
	headers?: [_]: string
	webhook_type?: string
}
#SumologicContentResource: {
	config:    string
	parent_id: string
}
#SumologicFieldExtractionRuleResource: {
	enabled:          bool
	name:             string
	parse_expression: string
	scope:            string
}
#SumologicFolderResource: {
	description: string
	name:        string
	parent_id:   string
}
#SumologicHttpSourceResource: {
	collector_id:            number
	name:                    string
	automatic_date_parsing?: bool
	category?:               string
	cutoff_relative_time?:   string
	cutoff_timestamp?:       number
	description?:            string
	destroy?:                bool
	fields?: [_]: string
	force_timezone?:               bool
	host_name?:                    string
	lookup_by_name?:               bool
	manual_prefix_regexp?:         string
	message_per_request?:          bool
	multiline_processing_enabled?: bool
	timezone?:                     string
	use_autoline_matching?:        bool
	default_date_formats?: [{
		format:   string
		locator?: string
	}, ...]
	filters?: [{
		filter_type: string
		name:        string
		regexp:      string
		mask?:       string
	}, ...]
}
#SumologicIngestBudgetResource: {
	capacity_bytes: number
	field_value:    string
	name:           string
	action?:        string
	description?:   string
	reset_time?:    string
	timezone?:      string
}
#SumologicPartitionResource: {
	is_compliant:        bool
	name:                string
	routing_expression:  string
	analytics_tier?:     string
	data_forwarding_id?: string
	retention_period?:   number
}
#SumologicPollingSourceResource: {
	collector_id:            number
	content_type:            string
	name:                    string
	paused:                  bool
	scan_interval:           number
	automatic_date_parsing?: bool
	category?:               string
	cutoff_relative_time?:   string
	cutoff_timestamp?:       number
	description?:            string
	destroy?:                bool
	fields?: [_]: string
	force_timezone?:               bool
	host_name?:                    string
	lookup_by_name?:               bool
	manual_prefix_regexp?:         string
	multiline_processing_enabled?: bool
	timezone?:                     string
	use_autoline_matching?:        bool
	authentication?: [{
		type:        string
		access_key?: string
		role_arn?:   string
		secret_key?: string
	}, ...]
	default_date_formats?: [{
		format:   string
		locator?: string
	}, ...]
	filters?: [{
		filter_type: string
		name:        string
		regexp:      string
		mask?:       string
	}, ...]
	path?: [{
		bucket_name:     string
		path_expression: string
	}, ...]
}
#SumologicRoleResource: {
	name: string
	capabilities?: [string, ...]
	description?:      string
	filter_predicate?: string
}
#SumologicScheduledViewResource: {
	index_name:          string
	query:               string
	start_time:          string
	data_forwarding_id?: string
	retention_period?:   number
}
#SumologicUserResource: {
	email:      string
	first_name: string
	last_name:  string
	role_ids: [string, ...]
	transfer_to: string
	is_active?:  bool
}
#Resources: {
	sumologic_cloudsyslog_source?: [_]:                 #SumologicCloudsyslogSourceResource
	sumologic_collector?: [_]:                          #SumologicCollectorResource
	sumologic_collector_ingest_budget_assignment?: [_]: #SumologicCollectorIngestBudgetAssignmentResource
	sumologic_connection?: [_]:                         #SumologicConnectionResource
	sumologic_content?: [_]:                            #SumologicContentResource
	sumologic_field_extraction_rule?: [_]:              #SumologicFieldExtractionRuleResource
	sumologic_folder?: [_]:                             #SumologicFolderResource
	sumologic_http_source?: [_]:                        #SumologicHttpSourceResource
	sumologic_ingest_budget?: [_]:                      #SumologicIngestBudgetResource
	sumologic_partition?: [_]:                          #SumologicPartitionResource
	sumologic_polling_source?: [_]:                     #SumologicPollingSourceResource
	sumologic_role?: [_]:                               #SumologicRoleResource
	sumologic_scheduled_view?: [_]:                     #SumologicScheduledViewResource
	sumologic_user?: [_]:                               #SumologicUserResource
}