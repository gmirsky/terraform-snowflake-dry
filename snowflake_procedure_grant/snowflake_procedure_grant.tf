#
resource "snowflake_procedure_grant" "this" {
  for_each               = var.snowflake_procedure_grants
  database_name          = each.value["database_name"]
  schema_name            = each.value["schema_name"]
  enable_multiple_grants = each.value["enable_multiple_grants"]
  on_future              = each.value["on_future"]
  privilege              = each.value["privilege"]
  procedure_name         = each.value["procedure_name"]
  # return_type            = each.value["return_type"]
  roles                  = each.value["roles"]
  shares                 = each.value["shares"]
  with_grant_option      = each.value["with_grant_option"]
  argument_data_types    = each.value["argument_data_types"]
  # dynamic "arguments" {
  #   for_each = each.value["arguments"]
  #   iterator = item
  #   content {
  #     name = item.value.name
  #     type = item.value.type
  #   }
  # }
}
#