resource "snowflake_schema" "this" {
  provider            = snowflake.sysadmin
  for_each            = var.snowflake_schemas
  database            = each.value["database"]
  name                = each.value["name"]
  comment             = each.value["comment"]
  is_transient        = each.value["is_transient"]
  is_managed          = each.value["is_managed"]
  data_retention_days = each.value["data_retention_days"]
  depends_on = [
    module.snowflake_database
  ]
}
#