resource "snowflake_table" "this" {
  provider        = snowflake.sysadmin
  for_each        = var.snowflake_tables
  database        = each.value["database"]
  schema          = each.value["schema"]
  name            = each.value["name"]
  comment         = each.value["comment"]
  change_tracking = each.value["change_tracking"]
  cluster_by      = each.value["cluster_by"]
  #data_retention_days = each.value["data_retention_days"] #deprecated
  dynamic "column" {
    for_each = each.value["column"]
    iterator = item
    content {
      name     = item.value.name
      type     = item.value.type
      comment  = item.value.comment
      nullable = item.value.nullable
      ########################################################################
      #
      # nested dynamic blocks are not working.
      #
      #
      # Error: Invalid dynamic for_each value
      #
      #  on snowflake_table.tf line 20, in resource "snowflake_table" "this":
      #  20:         for_each =  item.value.default
      #    ├────────────────
      #    │ item.value.default is null
      #
      # Cannot use a null value in for_each.
      #
      #
      ########################################################################
      # dynamic "default" {
      #   for_each = item.value.default
      #   # tried the following below.
      #   #for_each = each.value["column"].*.each.value["default"]
      #   #for_each = each.value["column"].*.default
      #   iterator = item1
      #   content {
      #     sequence = item1.value.sequence
      #   }
      # }
      ########################################################################
      #
      # This dynamic block has the same issue 
      #
      ########################################################################
      # 
      # dynamic "identity" {
      #   for_each = each.value[item.value.identity]
      #   iterator = item
      #   content {
      #     start_num = item.value.start_num
      #     step_num  = item.value.step_num
      #   }
      # }
    }
  }
  depends_on = [
    snowflake_schema.this
  ]
}
# output for debugging
output "zzz_snowflake_tables" {
  value = var.snowflake_tables
}
#