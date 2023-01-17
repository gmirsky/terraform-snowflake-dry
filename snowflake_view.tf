resource "snowflake_view" "this" {
  provider   = snowflake.sysadmin
  for_each   = var.snowflake_views
  database   = each.value["database"]
  schema     = each.value["schema"]
  name       = each.value["name"]
  comment    = each.value["comment"]
  or_replace = each.value["or_replace"]
  is_secure  = each.value["is_secure"]
  statement  = each.value["statement"]
  depends_on = [
    module.snowflake_table
  ]
}
#
