variable "snowflake_procedure_grants" {
  description = "Snowflake procedure grants"
  type = map(
    object(
      {
        database_name  = string
        schema_name    = string
        procedure_name = string
        arguments = optional(
          list(
            object(
              {
                name = string
                type = string
              }
            )
          )
        )
        privilege              = string
        roles                  = list(string)
        shares                 = optional(list(string))
        on_future              = bool
        with_grant_option      = bool
        enable_multiple_grants = bool
        return_type            = string
      }
    )
  )
}
#