variable "snowflake_views" {
  description = "Views for Snowflake databases"
  type = map(
    object(
      {
        database   = string
        schema     = string
        name       = string
        comment    = optional(string)
        or_replace = optional(bool, false)
        is_secure  = optional(bool, false)
        statement  = string
      }
    )
  )
}
#