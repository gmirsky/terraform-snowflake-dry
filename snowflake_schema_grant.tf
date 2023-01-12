resource "snowflake_schema_grant" "this" {
  provider               = snowflake.sysadmin
  for_each               = var.snowflake_schema_grants
  database_name          = each.value["database_name"]
  schema_name            = each.value["schema_name"]
  privilege              = each.value["privilege"]
  roles                  = each.value["roles"]
  shares                 = each.value["shares"]
  enable_multiple_grants = each.value["enable_multiple_grants"]
  with_grant_option      = each.value["with_grant_option"]
  depends_on = [
    snowflake_schema.this
  ]
}
#
