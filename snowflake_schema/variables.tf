variable "snowflake_schemas" {
  description = "Schemas for Snowflake databases"
  type = map(
    object(
      {
        database            = string
        name                = string
        comment             = string
        is_transient        = optional(bool, false)
        is_managed          = optional(bool, false)
        data_retention_days = optional(number, 1)
      }
    )
  )
}
#