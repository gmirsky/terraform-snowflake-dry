variable "snowflake_users" {
  description = "Snowflake users to provision"
  type = map(
    object(
      {
        name                    = string
        login_name              = optional(string)
        comment                 = optional(string)
        password                = optional(string, "Ch@angeM3N0w!")
        disabled                = optional(bool, false)
        display_name            = optional(string)
        email                   = optional(string)
        first_name              = optional(string)
        last_name               = optional(string)
        default_warehouse       = optional(string)
        default_secondary_roles = optional(list(string))
        default_role            = optional(string)
        rsa_public_key          = optional(string)
        rsa_public_key_2        = optional(string)
        must_change_password    = optional(bool, true)
      }
    )
  )
}
#