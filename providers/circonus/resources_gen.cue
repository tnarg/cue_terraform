// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package circonus

#CirconusCheckResource: {
	active?: bool
	name?:   string
	tags?: [string, ...]
	caql?: [{
		query: string
	}, ...]
	cloudwatch?: [{
		dimmensions: [_]: string
		metric: [string, ...]
		namespace:   string
		url:         string
		api_key?:    string
		api_secret?: string
		version?:    string
	}, ...]
	collector?: [{
		id: string
	}, ...]
	consul?: [{
		acl_token?:        string
		allow_stale?:      bool
		ca_chain?:         string
		certificate_file?: string
		check_blacklist?: [string, ...]
		ciphers?: string
		dc?:      string
		headers?: [_]: string
		http_addr?: string
		key_file?:  string
		node?:      string
		node_blacklist?: [string, ...]
		service?: string
		service_blacklist?: [string, ...]
		state?: string
	}, ...]
	dns?: [{
		query:       string
		ctype?:      string
		nameserver?: string
		rtype?:      string
	}, ...]
	external?: [{
		command:        string
		output_extract: string
		arg1?:          string
		arg10?:         string
		arg2?:          string
		arg3?:          string
		arg4?:          string
		arg5?:          string
		arg6?:          string
		arg7?:          string
		arg8?:          string
		arg9?:          string
	}, ...]
	http?: [{
		url:               string
		auth_method?:      string
		auth_password?:    string
		auth_user?:        string
		body_regexp?:      string
		ca_chain?:         string
		certificate_file?: string
		ciphers?:          string
		code?:             string
		extract?:          string
		headers?: [_]: string
		key_file?:   string
		method?:     string
		payload?:    string
		read_limit?: number
		version?:    string
	}, ...]
	httptrap?: [{
		async_metrics?: bool
		secret?:        string
	}, ...]
	icmp_ping?: [{
		availability?: number
		count?:        number
		interval?:     string
	}, ...]
	jmx?: [{
		host: string
		port: number
		mbean_domains?: [string, ...]
		password?: string
		uri?:      string
		username?: string
		mbean_properties?: [{
			index: string
			name:  string
			type:  string
		}, ...]
	}, ...]
	json?: [{
		url:               string
		auth_method?:      string
		auth_password?:    string
		auth_user?:        string
		ca_chain?:         string
		certificate_file?: string
		ciphers?:          string
		headers?: [_]: string
		key_file?:   string
		method?:     string
		payload?:    string
		port?:       number
		read_limit?: number
		version?:    string
	}, ...]
	memcached?: [{
		port?: number
	}, ...]
	metric?: [{
		name:    string
		type:    string
		active?: bool
		tags?: [string, ...]
		unit?: string
	}, ...]
	metric_filter?: [{
		regex:      string
		type:       string
		comment?:   string
		tag_query?: string
	}, ...]
	mysql?: [{
		dsn:   string
		query: string
	}, ...]
	postgresql?: [{
		dsn:   string
		query: string
	}, ...]
	promtext?: [{
		url:   string
		port?: number
	}, ...]
	redis?: [{
		command?:  string
		db_index?: number
		password?: string
		port?:     number
	}, ...]
	snmp?: [{
		community:           string
		version:             string
		auth_passphrase?:    string
		auth_protocol?:      string
		context_engine?:     string
		context_name?:       string
		port?:               number
		privacy_passphrase?: string
		privacy_protocol?:   string
		security_engine?:    string
		security_level?:     string
		security_name?:      string
		separate_queries?:   bool
		oid?: [{
			name:  string
			path:  string
			type?: string
		}, ...]
	}, ...]
	statsd?: [{
		source_ip: string
	}, ...]
	tcp?: [{
		host:              string
		port:              number
		banner_regexp?:    string
		ca_chain?:         string
		certificate_file?: string
		ciphers?:          string
		key_file?:         string
		tls?:              bool
	}, ...]
}
#CirconusContactGroupResource: {
	name:                string
	aggregation_window?: string
	always_send_clear?:  bool
	group_type?:         string
	long_message?:       string
	long_subject?:       string
	long_summary?:       string
	short_message?:      string
	short_summary?:      string
	tags?: [string, ...]
	alert_option?: [{
		severity:        number
		escalate_after?: string
		escalate_to?:    string
		reminder?:       string
	}, ...]
	email?: [{
		address?: string
		user?:    string
	}, ...]
	http?: [{
		address: string
		format?: string
		method?: string
	}, ...]
	irc?: [{
		user: string
	}, ...]
	pager_duty?: [{
		service_key:             string
		webhook_url:             string
		contact_group_fallback?: string
	}, ...]
	slack?: [{
		channel:                 string
		team:                    string
		buttons?:                bool
		contact_group_fallback?: string
		username?:               string
	}, ...]
	sms?: [{
		address?: string
		user?:    string
	}, ...]
	victorops?: [{
		api_key:                 string
		critical:                number
		info:                    number
		team:                    string
		warning:                 number
		contact_group_fallback?: string
	}, ...]
	xmpp?: [{
		address?: string
		user?:    string
	}, ...]
}
#CirconusDashboardResource: {
	grid_layout: [_]: number
	title:            string
	account_default?: bool
	shared?:          bool
	options?: [{
		full_screen_hide_title?: bool
		hide_grid?:              bool
		scale_text?:             bool
		text_size?:              number
		access_configs?: [{
			black_dash?:             bool
			enabled?:                bool
			full_screen?:            bool
			full_screen_hide_title?: bool
			nick_name?:              string
			scale_text?:             bool
			shared_id?:              string
			text_size?:              number
		}, ...]
	}, ...]
	widget?: [{
		height:    number
		name:      string
		origin:    string
		type:      string
		widget_id: string
		width:     number
		active?:   bool
		settings?: [{
			account_id?:          string
			acknowledged?:        string
			algorithm?:           string
			autoformat?:          bool
			body_format?:         string
			caql?:                string
			chart_type?:          string
			check_uuid?:          string
			cleared?:             string
			cluster_id?:          number
			cluster_name?:        string
			content_type?:        string
			date_window?:         string
			dependents?:          string
			disable_autoformat?:  bool
			display?:             string
			display_markup?:      string
			format?:              string
			formula?:             string
			good_color?:          string
			graph_uuid?:          string
			hide_xaxis?:          bool
			hide_yaxis?:          bool
			key_inline?:          bool
			key_loc?:             string
			key_size?:            number
			key_wrap?:            bool
			label?:               string
			layout?:              string
			layout_style?:        string
			limit?:               number
			link_url?:            string
			maintenance?:         string
			markup?:              string
			metric_display_name?: string
			metric_name?:         string
			metric_type?:         string
			min_age?:             string
			overlay_set_id?:      string
			period?:              number
			range_high?:          number
			range_low?:           number
			real_time?:           bool
			resource_limit?:      string
			resource_usage?:      string
			search?:              string
			severity?:            string
			show_flags?:          bool
			show_value?:          bool
			size?:                string
			text_align?:          string
			threshold?:           number
			time_window?:         string
			title?:               string
			title_format?:        string
			trend?:               string
			type?:                string
			use_default?:         bool
			value_type?:          string
			bad_rules?: [{
				color:     string
				criterion: string
				value:     string
			}, ...]
			datapoints?: [{
				_check_id:    number
				_metric_type: string
				label:        string
				metric:       string
			}, ...]
			thresholds?: [{
				colors: [string, ...]
				flip: bool
				values: [string, ...]
			}, ...]
		}, ...]
	}, ...]
}
#CirconusGraphResource: {
	name:         string
	description?: string
	graph_style?: string
	left?: [_]: string
	line_style?: string
	notes?:      string
	right?: [_]: string
	tags?: [string, ...]
	guide?: [{
		color?:          string
		formula?:        string
		hidden?:         bool
		legend_formula?: string
		name?:           string
	}, ...]
	metric?: [{
		metric_type:     string
		active?:         bool
		alpha?:          string
		axis?:           string
		caql?:           string
		check?:          string
		color?:          string
		formula?:        string
		legend_formula?: string
		metric_name?:    string
		name?:           string
		search?:         string
		stack?:          string
	}, ...]
	metric_cluster?: [{
		name:       string
		active?:    bool
		aggregate?: string
		axis?:      string
		color?:     string
		query?:     string
	}, ...]
}
#CirconusMaintenanceResource: {
	severities: [string, ...]
	start:     string
	stop:      string
	account?:  string
	check?:    string
	notes?:    string
	rule_set?: string
	tags?: [string, ...]
	target?: string
}
#CirconusMetricResource: {
	name:    string
	type:    string
	active?: bool
	tags?: [string, ...]
	unit?: string
}
#CirconusMetricClusterResource: {
	name: string
	tags?: [string, ...]
	query?: [{
		definition: string
		type:       string
	}, ...]
}
#CirconusOverlaySetResource: {
	graph_cid: string
	title:     string
	overlays?: [{
		id: string
		data_opts?: [{
			graph_title: string
			graph_uuid:  string
			x_shift:     string
		}, ...]
		ui_specs?: [{
			id:        string
			label:     string
			type:      string
			decouple?: bool
			z?:        string
		}, ...]
	}, ...]
}
#CirconusRuleSetResource: {
	check:           string
	metric_filter?:  string
	metric_name?:    string
	metric_pattern?: string
	metric_type?:    string
	tags?: [string, ...]
	if?: [{
		then?: [{
			after?: string
			notify?: [string, ...]
			severity?: number
		}, ...]
		value?: [{
			absent?:      string
			changed?:     string
			contains?:    string
			match?:       string
			max_value?:   string
			min_value?:   string
			not_contain?: string
			not_match?:   string
			over?: [{
				last?:  string
				using?: string
			}, ...]
		}, ...]
	}, ...]
}
#CirconusRuleSetGroupResource: {
	name: string
	tags?: [string, ...]
	condition?: [{
		index: number
		matching_severities: [string, ...]
		rule_set: string
	}, ...]
	formula?: [{
		expression:     string
		raise_severity: number
		wait:           number
	}, ...]
	notify?: [{
		sev1?: [string, ...]
		sev2?: [string, ...]
		sev3?: [string, ...]
		sev4?: [string, ...]
		sev5?: [string, ...]
	}, ...]
}
#CirconusWorksheetResource: {
	title:        string
	description?: string
	favourite?:   bool
	graphs?: [string, ...]
	notes?: string
	tags?: [string, ...]
	smart_queries?: [{
		name:  string
		query: string
		order?: [string, ...]
	}, ...]
}
#Resources: {
	circonus_check?: [_]:          #CirconusCheckResource
	circonus_contact_group?: [_]:  #CirconusContactGroupResource
	circonus_dashboard?: [_]:      #CirconusDashboardResource
	circonus_graph?: [_]:          #CirconusGraphResource
	circonus_maintenance?: [_]:    #CirconusMaintenanceResource
	circonus_metric?: [_]:         #CirconusMetricResource
	circonus_metric_cluster?: [_]: #CirconusMetricClusterResource
	circonus_overlay_set?: [_]:    #CirconusOverlaySetResource
	circonus_rule_set?: [_]:       #CirconusRuleSetResource
	circonus_rule_set_group?: [_]: #CirconusRuleSetGroupResource
	circonus_worksheet?: [_]:      #CirconusWorksheetResource
}