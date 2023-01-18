resource "snowflake_file_format_grant" "this" {
  for_each          = var.snowflake_file_format_grants
  database_name     = each.value["database_name"]
  schema_name       = each.value["schema_name"]
  file_format_name  = each.value["file_format_name"]
  privilege         = each.value["privilege"]
  roles             = each.value["roles"]
  on_future         = each.value["on_future"]
  with_grant_option = each.value["with_grant_option"]
}
#
