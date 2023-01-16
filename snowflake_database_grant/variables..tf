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