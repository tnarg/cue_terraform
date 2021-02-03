// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package pagerduty

#PagerdutyAddonResource: {
	name: string
	src:  string
}
#PagerdutyBusinessServiceResource: {
	name:              string
	description?:      string
	point_of_contact?: string
	type?:             string
}
#PagerdutyEscalationPolicyResource: {
	name:         string
	description?: string
	num_loops?:   number
	teams?: [string, ...]
	rule?: [{
		escalation_delay_in_minutes: number
		target?: [{
			id:    string
			type?: string
		}, ...]
	}, ...]
}
#PagerdutyEventRuleResource: {
	action_json:              string
	condition_json:           string
	advanced_condition_json?: string
}
#PagerdutyExtensionResource: {
	extension_objects: [string, ...]
	extension_schema: string
	config?:          string
	endpoint_url?:    string
}
#PagerdutyMaintenanceWindowResource: {
	end_time: string
	services: [string, ...]
	start_time:   string
	description?: string
}
#PagerdutyRulesetResource: {
	name: string
	team?: [{
		id: string
	}, ...]
}
#PagerdutyRulesetRuleResource: {
	ruleset:   string
	disabled?: bool
	position?: number
	actions?: [{
		annotate?: [{
			value?: string
		}, ...]
		event_action?: [{
			value?: string
		}, ...]
		extractions?: [{
			regex?:  string
			source?: string
			target?: string
		}, ...]
		priority?: [{
			value?: string
		}, ...]
		route?: [{
			value?: string
		}, ...]
		severity?: [{
			value?: string
		}, ...]
		suppress?: [{
			threshold_time_amount?: number
			threshold_time_unit?:   string
			threshold_value?:       number
			value?:                 bool
		}, ...]
	}, ...]
	conditions?: [{
		operator?: string
		subconditions?: [{
			operator?: string
			parameter?: [{
				path?:  string
				value?: string
			}, ...]
		}, ...]
	}, ...]
	time_frame?: [{
		active_between?: [{
			end_time?:   number
			start_time?: number
		}, ...]
		scheduled_weekly?: [{
			duration?:   number
			start_time?: number
			timezone?:   string
			weekdays?: [number, ...]
		}, ...]
	}, ...]
}
#PagerdutyScheduleResource: {
	time_zone:    string
	description?: string
	name?:        string
	overflow?:    bool
	layer?: [{
		rotation_turn_length_seconds: number
		rotation_virtual_start:       string
		start:                        string
		users: [string, ...]
		end?: string
		restriction?: [{
			duration_seconds:   number
			start_time_of_day:  string
			type:               string
			start_day_of_week?: number
		}, ...]
	}, ...]
}
#PagerdutyServiceResource: {
	escalation_policy:        string
	acknowledgement_timeout?: string
	alert_creation?:          string
	alert_grouping?:          string
	alert_grouping_timeout?:  number
	auto_resolve_timeout?:    string
	description?:             string
	name?:                    string
	incident_urgency_rule?: [{
		type:     string
		urgency?: string
		during_support_hours?: [{
			type?:    string
			urgency?: string
		}, ...]
		outside_support_hours?: [{
			type?:    string
			urgency?: string
		}, ...]
	}, ...]
	scheduled_actions?: [{
		to_urgency?: string
		type?:       string
		at?: [{
			name?: string
			type?: string
		}, ...]
	}, ...]
	support_hours?: [{
		days_of_week?: [number, ...]
		end_time?:   string
		start_time?: string
		time_zone?:  string
		type?:       string
	}, ...]
}
#PagerdutyServiceDependencyResource: dependency?: [{
	type?: string
	dependent_service?: [{
		id:   string
		type: string
	}, ...]
	supporting_service?: [{
		id:   string
		type: string
	}, ...]
}, ...]
#PagerdutyServiceIntegrationResource: {
	service: string
	name?:   string
}
#PagerdutyTeamResource: {
	name:         string
	description?: string
}
#PagerdutyTeamMembershipResource: {
	team_id: string
	user_id: string
	role?:   string
}
#PagerdutyUserResource: {
	email:        string
	name:         string
	description?: string
	job_title?:   string
	role?:        string
}
#PagerdutyUserContactMethodResource: {
	address:           string
	label:             string
	type:              string
	user_id:           string
	country_code?:     number
	send_short_email?: bool
}
#PagerdutyUserNotificationRuleResource: {
	contact_method: [_]: string
	start_delay_in_minutes: number
	urgency:                string
	user_id:                string
}
#Resources: {
	pagerduty_addon?: [_]:                  #PagerdutyAddonResource
	pagerduty_business_service?: [_]:       #PagerdutyBusinessServiceResource
	pagerduty_escalation_policy?: [_]:      #PagerdutyEscalationPolicyResource
	pagerduty_event_rule?: [_]:             #PagerdutyEventRuleResource
	pagerduty_extension?: [_]:              #PagerdutyExtensionResource
	pagerduty_maintenance_window?: [_]:     #PagerdutyMaintenanceWindowResource
	pagerduty_ruleset?: [_]:                #PagerdutyRulesetResource
	pagerduty_ruleset_rule?: [_]:           #PagerdutyRulesetRuleResource
	pagerduty_schedule?: [_]:               #PagerdutyScheduleResource
	pagerduty_service?: [_]:                #PagerdutyServiceResource
	pagerduty_service_dependency?: [_]:     #PagerdutyServiceDependencyResource
	pagerduty_service_integration?: [_]:    #PagerdutyServiceIntegrationResource
	pagerduty_team?: [_]:                   #PagerdutyTeamResource
	pagerduty_team_membership?: [_]:        #PagerdutyTeamMembershipResource
	pagerduty_user?: [_]:                   #PagerdutyUserResource
	pagerduty_user_contact_method?: [_]:    #PagerdutyUserContactMethodResource
	pagerduty_user_notification_rule?: [_]: #PagerdutyUserNotificationRuleResource
}