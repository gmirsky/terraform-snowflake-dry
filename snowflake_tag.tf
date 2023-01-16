resource "snowflake_tag" "this" {
  provider       = snowflake.sysadmin
  for_each       = var.snowflake_tags
  name           = each.value["name"]
  database       = each.value["database"]
  schema         = each.value["schema"]
  allowed_values = each.value["allowed_values"]
  comment        = each.value["comment"]
  depends_on = [
    module.snowflake_schema
  ]
}
#