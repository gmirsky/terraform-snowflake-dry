resource "snowflake_database" "this" {
  for_each                    = var.snowflake_databases
  name                        = each.value["name"]
  comment                     = each.value["comment"]
  data_retention_time_in_days = each.value["data_retention_time_in_days"]
  is_transient                = each.value["is_transient"]
}
#