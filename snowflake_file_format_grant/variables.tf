variable "snowflake_file_format_grants" {
  description = "Snowflake file format grants"
  type = map(
    object(
      {
        database_name          = string
        schema_name            = string
        file_format_name       = optional(string)
        privilege              = optional(string)
        roles                  = optional(list(string))
        on_future              = optional(bool, false)
        with_grant_option      = optional(bool, false)
        enable_multiple_grants = optional(bool, false)
      }
    )
  )
}
#