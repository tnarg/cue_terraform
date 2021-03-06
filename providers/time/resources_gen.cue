// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package time

#TimeOffsetResource: {
	base_rfc3339?:   string
	day?:            number
	hour?:           number
	id?:             string
	minute?:         number
	month?:          number
	offset_days?:    number
	offset_hours?:   number
	offset_minutes?: number
	offset_months?:  number
	offset_seconds?: number
	offset_years?:   number
	rfc3339?:        string
	second?:         number
	triggers?: [_]: string
	unix?: number
	year?: number
}
#TimeRotatingResource: {
	day?:              number
	hour?:             number
	id?:               string
	minute?:           number
	month?:            number
	rfc3339?:          string
	rotation_days?:    number
	rotation_hours?:   number
	rotation_minutes?: number
	rotation_months?:  number
	rotation_rfc3339?: string
	rotation_years?:   number
	second?:           number
	triggers?: [_]: string
	unix?: number
	year?: number
}
#TimeSleepResource: {
	create_duration?:  string
	destroy_duration?: string
	id?:               string
	triggers?: [_]: string
}
#TimeStaticResource: {
	day?:     number
	hour?:    number
	id?:      string
	minute?:  number
	month?:   number
	rfc3339?: string
	second?:  number
	triggers?: [_]: string
	unix?: number
	year?: number
}
#Resources: {
	time_offset?: [_]:   #TimeOffsetResource
	time_rotating?: [_]: #TimeRotatingResource
	time_sleep?: [_]:    #TimeSleepResource
	time_static?: [_]:   #TimeStaticResource
}
