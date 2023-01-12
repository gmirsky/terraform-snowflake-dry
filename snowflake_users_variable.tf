variable "snowflake_users" {
  description = "Snowflake users to provision"
  type = map(
    object(
      {
        name                    = string
        login_name              = string
        comment                 = string
        password                = string
        disabled                = optional(bool, false)
        display_name            = string
        email                   = string
        first_name              = string
        last_name               = string
        default_warehouse       = string
        default_secondary_roles = list(string)
        default_role            = string
        rsa_public_key          = optional(string)
        rsa_public_key_2        = optional(string)
        must_change_password    = optional(bool, true)
      }
    )
  )
}
#