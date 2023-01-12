variable "snowflake_databases" {
  type = map(
    object(
      {
        name                        = string
        comment                     = optional(string)
        is_transient                = optional(bool, false)
        data_retention_time_in_days = optional(number, 3)
      }
    )
  )
}
#