resource "snowflake_resource_monitor" "this" {
  for_each                   = var.snowflake_resource_monitors
  name                       = each.value["name"]
  credit_quota               = each.value["credit_quota"]
  set_for_account            = each.value["set_for_account"]
  frequency                  = each.value["frequency"]
  end_timestamp              = each.value["end_timestamp"]
  notify_triggers            = each.value["notify_triggers"]
  suspend_triggers           = each.value["suspend_triggers"]
  suspend_immediate_triggers = each.value["suspend_immediate_triggers"]
  warehouses                 = each.value["warehouses"]
  start_timestamp = each.value["start_timestamp"] != null ? each.value["start_timestamp"] : formatdate(
    "YYYY-MM-DD hh:mm",
    timeadd(
      timestamp(),
      "5m"
    )
  )
}
#