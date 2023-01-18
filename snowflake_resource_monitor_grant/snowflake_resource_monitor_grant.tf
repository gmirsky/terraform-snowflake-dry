resource "snowflake_resource_monitor_grant" "this" {
  for_each               = var.snowflake_resource_monitor_grants
  monitor_name           = each.value["monitor_name"]
  privilege              = each.key["privilege"]
  roles                  = each.value["roles"]
  with_grant_option      = each.value["with_grant_option"]
  enable_multiple_grants = each.value["enable_multiple_grants"]
}
#
