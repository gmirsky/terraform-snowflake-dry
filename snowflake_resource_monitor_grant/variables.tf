variable "snowflake_resource_monitor_grants" {
  description = "Snowflake resource monitor grants"
  type = map(
    object(
      {
        monitor_name           = string
        privilege              = optional(string)
        roles                  = optional(list(string))
        with_grant_option      = optional(bool, false)
        enable_multiple_grants = optional(bool, false)
      }
    )
  )
}
#
