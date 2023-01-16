resource "snowflake_database_grant" "this" {
  for_each               = var.snowflake_database_grants
  database_name          = each.value["database_name"]
  privilege              = each.value["privilege"]
  roles                  = each.value["roles"]
  shares                 = each.value["shares"]
  enable_multiple_grants = each.value["enable_multiple_grants"]
  with_grant_option      = each.value["with_grant_option"]
}
#