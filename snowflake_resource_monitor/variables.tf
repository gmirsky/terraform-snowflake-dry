variable "snowflake_resource_monitors" {
  description = "Snowflake resource monitors to be created"
  type = map(
    object(
      {
        name                       = string
        credit_quota               = optional(number, 5)
        set_for_account            = optional(bool, false)
        frequency                  = optional(string, "DAILY")
        start_timestamp            = optional(string)
        end_timestamp              = optional(string)
        notify_triggers            = optional(list(number))
        suspend_triggers           = optional(list(number))
        suspend_immediate_triggers = optional(list(number))
        warehouses                 = optional(list(string))
      }
    )
  )
}
#