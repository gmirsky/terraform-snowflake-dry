resource "snowflake_table" "this" {
  provider        = snowflake.sysadmin
  for_each        = var.snowflake_tables
  database        = each.value["database"]
  schema          = each.value["schema"]
  name            = each.value["name"]
  comment         = each.value["comment"]
  change_tracking = each.value["change_tracking"]
  cluster_by      = each.value["cluster_by"]
  dynamic "column" {
    for_each = each.value["column"]
    content {
      name     = column.value.name
      type     = column.value.type
      comment  = column.value.comment
      nullable = column.value.nullable
      dynamic "default" {
        for_each = each.value["column"][column.key].*.default[0]
        content {
          sequence   = default.value.sequence
          expression = default.value.expression
          constant   = default.value.constant
        }
      }
      dynamic "identity" {
        for_each = each.value["column"][column.key].*.identity[0]
        content {
          start_num = identity.value.start_num
          step_num  = identity.value.step_num
        }
      }
    }
  }
  depends_on = [
    snowflake_schema.this
  ]
}
#