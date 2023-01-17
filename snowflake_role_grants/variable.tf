variable "snowflake_role_grants" {
  description = "Snowflake Role grants"
  type = map(
    object(
      {
        role_name              = string
        roles                  = optional(list(string))
        users                  = optional(list(string))
        enable_multiple_grants = optional(bool, false)
      }
    )
  )
}
#