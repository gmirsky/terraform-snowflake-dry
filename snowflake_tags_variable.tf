variable "snowflake_tags" {
  description = "Snowflake tag to use with a database."
  type = map(
    object(
      {
        name           = string
        database       = string
        schema         = string
        allowed_values = optional(list(string))
        comment        = optional(string)
      }
    )
  )
}
#