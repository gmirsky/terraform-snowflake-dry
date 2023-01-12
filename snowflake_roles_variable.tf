variable "snowflake_roles" {
  description = "Snowflake Roles to be created"
  type = map(
    object(
      {
        name    = string
        comment = string
      }
    )
  )
}
#