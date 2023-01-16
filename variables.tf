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
variable "snowflake_database_grants" {
  description = "Snowflake database grants"
  type = map(
    object(
      {
        database_name          = string
        privilege              = string
        roles                  = list(string)
        shares                 = list(string)
        enable_multiple_grants = optional(bool, true)
        with_grant_option      = optional(bool, false)
      }
    )
  )
}
#