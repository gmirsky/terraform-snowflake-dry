variable "snowflake_schema_grants" {
  description = "Snowflake schema grants"
  type = map(
    object(
      {
        database_name          = string
        schema_name            = string
        privilege              = optional(string)
        roles                  = optional(list(string))
        shares                 = optional(list(string))
        enable_multiple_grants = optional(bool, true)
        with_grant_option      = optional(bool, false)
        on_future              = optional(bool, false)
      }
    )
  )
}
#
