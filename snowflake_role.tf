resource "snowflake_role" "this" {
  provider = snowflake.accountadmin
  for_each = var.snowflake_roles
  name     = each.value["name"]
  comment  = each.value["comment"]
}
#