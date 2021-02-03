// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package time

#TimeOffsetResource: {
	offset_days?:    number
	offset_hours?:   number
	offset_minutes?: number
	offset_months?:  number
	offset_seconds?: number
	offset_years?:   number
	triggers?: [_]: string
}
#TimeRotatingResource: {
	rotation_days?:    number
	rotation_hours?:   number
	rotation_minutes?: number
	rotation_months?:  number
	rotation_years?:   number
	triggers?: [_]: string
}
#TimeSleepResource: {
	create_duration?:  string
	destroy_duration?: string
	triggers?: [_]: string
}
#TimeStaticResource: triggers?: [_]: string
#Resources: {
	time_offset?: [_]:   #TimeOffsetResource
	time_rotating?: [_]: #TimeRotatingResource
	time_sleep?: [_]:    #TimeSleepResource
	time_static?: [_]:   #TimeStaticResource
}