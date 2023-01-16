resource "snowflake_sequence" "this" {
  provider  = snowflake.sysadmin
  for_each  = var.snowflake_sequences
  database  = each.value["database"]
  schema    = each.value["schema"]
  name      = each.value["name"]
  comment   = each.value["comment"]
  increment = each.value["increment"]
  depends_on = [
    module.snowflake_schema
  ]
}
#