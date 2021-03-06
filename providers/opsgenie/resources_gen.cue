// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package opsgenie

#OpsgenieAlertPolicyResource: {
	message: string
	name:    string
	actions?: [string, ...]
	alert_description?:          string
	alias?:                      string
	continue_policy?:            bool
	enabled?:                    bool
	entity?:                     string
	id?:                         string
	ignore_original_actions?:    bool
	ignore_original_details?:    bool
	ignore_original_responders?: bool
	ignore_original_tags?:       bool
	policy_description?:         string
	priority?:                   string
	source?:                     string
	tags?: [string, ...]
	team_id?: string
	filter?: [{
		type?: string
		conditions?: [{
			field:           string
			operation:       string
			expected_value?: string
			key?:            string
			not?:            bool
			order?:          number
		}, ...]
	}, ...]
	responders?: [{
		id:        string
		type:      string
		name?:     string
		username?: string
	}, ...]
	time_restriction?: [{
		type: string
		restriction?: [{
			end_hour:   number
			end_min:    number
			start_hour: number
			start_min:  number
		}, ...]
		restrictions?: [{
			end_day:    string
			end_hour:   number
			end_min:    number
			start_day:  string
			start_hour: number
			start_min:  number
		}, ...]
	}, ...]
}
#OpsgenieApiIntegrationResource: {
	name:                string
	allow_write_access?: bool
	api_key?:            string
	enabled?:            bool
	headers?: [_]: string
	id?:                             string
	ignore_responders_from_payload?: bool
	owner_team_id?:                  string
	suppress_notifications?:         bool
	type?:                           string
	webhook_url?:                    string
	responders?: [{
		id?:   string
		type?: string
	}, ...]
}
#OpsgenieCustomRoleResource: {
	role_name: string
	disallowed_rights?: [string, ...]
	extended_role?: string
	granted_rights?: [string, ...]
	id?: string
}
#OpsgenieEmailIntegrationResource: {
	email_username:                  string
	name:                            string
	enabled?:                        bool
	id?:                             string
	ignore_responders_from_payload?: bool
	owner_team_id?:                  string
	suppress_notifications?:         bool
	responders?: [{
		id?:   string
		type?: string
	}, ...]
}
#OpsgenieEscalationResource: {
	name:           string
	description?:   string
	id?:            string
	owner_team_id?: string
	repeat?: [{
		close_alert_after_all?:  bool
		count?:                  number
		reset_recipient_states?: bool
		wait_interval?:          number
	}, ...]
	rules?: [{
		condition:   string
		delay:       number
		notify_type: string
		recipient?: [{
			id?:   string
			type?: string
		}, ...]
	}, ...]
}
#OpsgenieHeartbeatResource: {
	enabled:         bool
	interval:        number
	interval_unit:   string
	name:            string
	alert_message?:  string
	alert_priority?: string
	alert_tags?: [string, ...]
	description?:   string
	id?:            string
	owner_team_id?: string
}
#OpsgenieIncidentTemplateResource: {
	message:      string
	name:         string
	priority:     string
	description?: string
	details?: [_]: string
	id?: string
	impacted_services?: [string, ...]
	tags?: [string, ...]
	stakeholder_properties?: [{
		message:      string
		description?: string
		enable?:      bool
	}, ...]
}
#OpsgenieIntegrationActionResource: {
	integration_id: string
	id?:            string
	acknowledge?: [{
		name:   string
		alias?: string
		note?:  string
		order?: number
		type?:  string
		user?:  string
		filter?: [{
			type: string
			conditions?: [{
				field:           string
				operation:       string
				expected_value?: string
				key?:            string
				not?:            bool
				order?:          number
			}, ...]
		}, ...]
	}, ...]
	add_note?: [{
		name:   string
		alias?: string
		note?:  string
		order?: number
		type?:  string
		user?:  string
		filter?: [{
			type: string
			conditions?: [{
				field:           string
				operation:       string
				expected_value?: string
				key?:            string
				not?:            bool
				order?:          number
			}, ...]
		}, ...]
	}, ...]
	close?: [{
		name:   string
		alias?: string
		note?:  string
		order?: number
		type?:  string
		user?:  string
		filter?: [{
			type: string
			conditions?: [{
				field:           string
				operation:       string
				expected_value?: string
				key?:            string
				not?:            bool
				order?:          number
			}, ...]
		}, ...]
	}, ...]
	create?: [{
		name: string
		alert_actions?: [string, ...]
		alias?:              string
		append_attachments?: bool
		custom_priority?:    string
		description?:        string
		entity?:             string
		extra_properties?: [_]: string
		ignore_alert_actions_from_payload?:    bool
		ignore_extra_properties_from_payload?: bool
		ignore_responders_from_payload?:       bool
		ignore_tags_from_payload?:             bool
		ignore_teams_from_payload?:            bool
		message?:                              string
		note?:                                 string
		order?:                                number
		priority?:                             string
		source?:                               string
		tags?: [string, ...]
		type?: string
		user?: string
		filter?: [{
			type: string
			conditions?: [{
				field:           string
				operation:       string
				expected_value?: string
				key?:            string
				not?:            bool
				order?:          number
			}, ...]
		}, ...]
		responders?: [{
			id:   string
			type: string
		}, ...]
	}, ...]
	ignore?: [{
		name:   string
		order?: number
		type?:  string
		filter?: [{
			type: string
			conditions?: [{
				field:           string
				operation:       string
				expected_value?: string
				key?:            string
				not?:            bool
				order?:          number
			}, ...]
		}, ...]
	}, ...]
}
#OpsgenieMaintenanceResource: {
	description: string
	id?:         string
	rules?: [{
		state?: string
		entity?: [{
			id?:   string
			type?: string
		}, ...]
	}, ...]
	time?: [{
		type:        string
		end_date?:   string
		start_date?: string
	}, ...]
}
#OpsgenieNotificationPolicyResource: {
	name:                string
	team_id:             string
	enabled?:            bool
	id?:                 string
	policy_description?: string
	suppress?:           bool
	auto_close_action?: [{
		duration?: [{
			time_amount: number
			time_unit?:  string
		}, ...]
	}, ...]
	auto_restart_action?: [{
		max_repeat_count: number
		duration?: [{
			time_amount: number
			time_unit?:  string
		}, ...]
	}, ...]
	de_duplication_action?: [{
		count:                      number
		de_duplication_action_type: string
		duration?: [{
			time_amount: number
			time_unit?:  string
		}, ...]
	}, ...]
	delay_action?: [{
		delay_option:  string
		until_hour?:   number
		until_minute?: number
		duration?: [{
			time_amount: number
			time_unit?:  string
		}, ...]
	}, ...]
	filter?: [{
		type?: string
		conditions?: [{
			field:           string
			operation:       string
			expected_value?: string
			key?:            string
			not?:            bool
			order?:          number
		}, ...]
	}, ...]
	time_restriction?: [{
		type: string
		restriction?: [{
			end_hour:   number
			end_min:    number
			start_hour: number
			start_min:  number
		}, ...]
		restrictions?: [{
			end_day:    string
			end_hour:   number
			end_min:    number
			start_day:  string
			start_hour: number
			start_min:  number
		}, ...]
	}, ...]
}
#OpsgenieNotificationRuleResource: {
	action_type: string
	name:        string
	username:    string
	enabled?:    bool
	id?:         string
	notification_time?: [string, ...]
	order?: number
	criteria?: [{
		type: string
		conditions?: [{
			field:           string
			operation:       string
			expected_value?: string
			key?:            string
			not?:            bool
			order?:          number
		}, ...]
	}, ...]
	repeat?: [{
		loop_after: number
		enabled?:   bool
	}, ...]
	schedules?: [{
		name: string
		type: string
	}, ...]
	steps?: [{
		enabled?:    bool
		send_after?: number
		contact?: [{
			method: string
			to:     string
		}, ...]
	}, ...]
	time_restriction?: [{
		type: string
		restriction?: [{
			end_hour:   number
			end_min:    number
			start_hour: number
			start_min:  number
		}, ...]
		restrictions?: [{
			end_day:    string
			end_hour:   number
			end_min:    number
			start_day:  string
			start_hour: number
			start_min:  number
		}, ...]
	}, ...]
}
#OpsgenieScheduleResource: {
	name:           string
	description?:   string
	enabled?:       bool
	id?:            string
	owner_team_id?: string
	timezone?:      string
}
#OpsgenieScheduleRotationResource: {
	schedule_id: string
	start_date:  string
	type:        string
	end_date?:   string
	id?:         string
	length?:     number
	name?:       string
	participant?: [{
		type: string
		id?:  string
	}, ...]
	time_restriction?: [{
		type: string
		restriction?: [{
			end_hour:   number
			end_min:    number
			start_hour: number
			start_min:  number
		}, ...]
		restrictions?: [{
			end_day:    string
			end_hour:   number
			end_min:    number
			start_day:  string
			start_hour: number
			start_min:  number
		}, ...]
	}, ...]
}
#OpsgenieServiceResource: {
	name:         string
	team_id:      string
	description?: string
	id?:          string
}
#OpsgenieServiceIncidentRuleResource: {
	service_id: string
	id?:        string
	incident_rule?: [{
		condition_match_type?: string
		conditions?: [{
			field:           string
			operation:       string
			expected_value?: string
			key?:            string
			not?:            bool
		}, ...]
		incident_properties?: [{
			message:      string
			priority:     string
			description?: string
			details?: [_]: string
			tags?: [string, ...]
			stakeholder_properties?: [{
				message:      string
				description?: string
				enable?:      bool
			}, ...]
		}, ...]
	}, ...]
}
#OpsgenieTeamResource: {
	name:                      string
	delete_default_resources?: bool
	description?:              string
	id?:                       string
	ignore_members?:           bool
	member?: [{
		id:    string
		role?: string
	}, ...]
}
#OpsgenieTeamRoutingRuleResource: {
	team_id:   string
	id?:       string
	name?:     string
	order?:    number
	timezone?: string
	criteria?: [{
		type: string
		conditions?: [{
			field:           string
			operation:       string
			expected_value?: string
			key?:            string
			not?:            bool
			order?:          number
		}, ...]
	}, ...]
	notify?: [{
		type:  string
		id?:   string
		name?: string
	}, ...]
	time_restriction?: [{
		type: string
		restriction?: [{
			end_hour:   number
			end_min:    number
			start_hour: number
			start_min:  number
		}, ...]
		restrictions?: [{
			end_day:    string
			end_hour:   number
			end_min:    number
			start_day:  string
			start_hour: number
			start_min:  number
		}, ...]
	}, ...]
}
#OpsgenieUserResource: {
	full_name:       string
	role:            string
	username:        string
	id?:             string
	locale?:         string
	skype_username?: string
	tags?: [string, ...]
	timezone?: string
	user_details?: [_]: string
	user_address?: [{
		city:    string
		country: string
		line:    string
		state:   string
		zipcode: string
	}, ...]
}
#OpsgenieUserContactResource: {
	method:   string
	to:       string
	username: string
	enabled?: bool
	id?:      string
}
#Resources: {
	opsgenie_alert_policy?: [_]:          #OpsgenieAlertPolicyResource
	opsgenie_api_integration?: [_]:       #OpsgenieApiIntegrationResource
	opsgenie_custom_role?: [_]:           #OpsgenieCustomRoleResource
	opsgenie_email_integration?: [_]:     #OpsgenieEmailIntegrationResource
	opsgenie_escalation?: [_]:            #OpsgenieEscalationResource
	opsgenie_heartbeat?: [_]:             #OpsgenieHeartbeatResource
	opsgenie_incident_template?: [_]:     #OpsgenieIncidentTemplateResource
	opsgenie_integration_action?: [_]:    #OpsgenieIntegrationActionResource
	opsgenie_maintenance?: [_]:           #OpsgenieMaintenanceResource
	opsgenie_notification_policy?: [_]:   #OpsgenieNotificationPolicyResource
	opsgenie_notification_rule?: [_]:     #OpsgenieNotificationRuleResource
	opsgenie_schedule?: [_]:              #OpsgenieScheduleResource
	opsgenie_schedule_rotation?: [_]:     #OpsgenieScheduleRotationResource
	opsgenie_service?: [_]:               #OpsgenieServiceResource
	opsgenie_service_incident_rule?: [_]: #OpsgenieServiceIncidentRuleResource
	opsgenie_team?: [_]:                  #OpsgenieTeamResource
	opsgenie_team_routing_rule?: [_]:     #OpsgenieTeamRoutingRuleResource
	opsgenie_user?: [_]:                  #OpsgenieUserResource
	opsgenie_user_contact?: [_]:          #OpsgenieUserContactResource
}
