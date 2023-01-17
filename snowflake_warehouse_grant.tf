resource "snowflake_warehouse_grant" "this" {
  provider               = snowflake.sysadmin
  for_each               = var.snowflake_warehouse_grants
  warehouse_name         = each.value["warehouse_name"]
  privilege              = each.value["privilege"]
  roles                  = each.value["roles"]
  enable_multiple_grants = each.value["enable_multiple_grants"]
  with_grant_option      = each.value["with_grant_option"]
  depends_on = [
    module.snowflake_warehouse,
    snowflake_role.this
  ]
}
#