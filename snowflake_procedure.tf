resource "snowflake_procedure" "this" {
  provider            = snowflake.sysadmin
  for_each            = var.snowflake_procedures
  name                = each.value["name"]
  database            = each.value["database"]
  schema              = each.value["schema"]
  language            = each.value["language"]
  comment             = each.value["comment"]
  return_type         = each.value["return_type"]
  execute_as          = each.value["execute_as"]
  return_behavior     = each.value["return_behavior"]
  statement           = each.value["statement"]
  null_input_behavior = each.value["null_input_behavior"]
  dynamic "arguments" {
    for_each = each.value["arguments"]
    iterator = item
    content {
      name = item.value.name
      type = item.value.type
    }
  }
  depends_on = [
    snowflake_schema.this
  ]
}
#