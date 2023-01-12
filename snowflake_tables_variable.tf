variable "snowflake_tables" {
  description = "Snowflake tables"
  type = map(
    object(
      {
        database            = string
        schema              = string
        name                = string
        comment             = optional(string)
        change_tracking     = bool
        cluster_by          = optional(list(string))
        data_retention_days = optional(number) #deprecated
        column = list(
          object(
            {
              name     = string
              type     = string
              comment  = optional(string)
              nullable = bool
              default = optional(
                list(
                  object(
                    {
                      constant   = optional(string)
                      expression = optional(string)
                      sequence   = optional(string)
                    }
                  )
                )
              )
              identity = optional(
                list(
                  object(
                    {
                      start_num = number
                      step_num  = number
                    }
                  )
                )
              )
            }
          )
        )
        tag = optional(
          list(
            object(
              {
                name  = string
                value = string
              }
            )
          )
        ) # deprecated
        primary_key = optional(
          object(
            {
              keys = list(string)
              name = optional(string)
            }
          )
        )
      }
    )
  )
}
#