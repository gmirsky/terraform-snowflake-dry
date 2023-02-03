variable "snowflake_procedure_grants" {
  description = "Snowflake procedure grants"
  type = map(
    object(
      {
        database_name  = string
        schema_name    = string
        procedure_name = optional(string)
        # arguments = optional(
        #   list(
        #     object(
        #       {
        #         name = string
        #         type = string
        #       }
        #     )
        #   )
        # )
        argument_data_types    = optional(list(string))
        privilege              = optional(string)
        roles                  = optional(list(string))
        shares                 = optional(list(string))
        on_future              = optional(bool, false)
        with_grant_option      = optional(bool, false)
        enable_multiple_grants = optional(bool, false)
        # return_type            = optional(string)
      }
    )
  )
}
#