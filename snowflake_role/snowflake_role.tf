resource "snowflake_role" "this" {
  for_each = var.snowflake_roles
  name     = each.value["name"]
  comment  = each.value["comment"]
}
#