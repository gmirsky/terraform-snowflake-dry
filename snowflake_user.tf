resource "snowflake_user" "this" {
  provider                = snowflake.useradmin
  for_each                = var.snowflake_users
  name                    = each.value["name"]
  login_name              = each.value["login_name"]
  comment                 = each.value["comment"]
  password                = each.value["password"]
  disabled                = each.value["disabled"]
  display_name            = each.value["display_name"]
  email                   = each.value["email"]
  first_name              = each.value["first_name"]
  last_name               = each.value["last_name"]
  default_warehouse       = each.value["default_warehouse"]
  default_secondary_roles = each.value["default_secondary_roles"]
  default_role            = each.value["default_role"]
  rsa_public_key          = each.value["rsa_public_key"]
  rsa_public_key_2        = each.value["rsa_public_key_2"]
  must_change_password    = each.value["must_change_password"]
  depends_on = [
    snowflake_warehouse.this,
    snowflake_role.this
  ]
}
#