variable "snowflake_procedures" {
  description = "Snowflake procedure definitions"
  type = map(
    object(
      {
        name     = string
        database = string
        schema   = string
        language = optional(string)
        arguments = optional(list(
          object(
            {
              name = string
              type = string
            }
          )
          )
        )
        comment             = optional(string)
        return_type         = string
        statement           = string
        null_input_behavior = optional(string)
        return_behavior     = optional(string)
        execute_as          = optional(string)
      }
    )
  )
}
#