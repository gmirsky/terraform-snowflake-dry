variable "snowflake_users" {
  description = "Snowflake users to provision"
  type = map(
    object(
      {
        name                    = string
        login_name              = string
        comment                 = string
        password                = optional(string, "Ch@angeM3N0w!")
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
/*
password             = coalesce(each.value["generate_user_password"], var.default_generate_user_password) ? random_password.users[each.key].result : null
  must_change_password = coalesce(each.value["must_change_password"], var.default_must_change_password)
*/