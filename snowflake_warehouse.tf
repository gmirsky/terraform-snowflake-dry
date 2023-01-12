resource "snowflake_warehouse" "this" {
  provider                            = snowflake.sysadmin
  for_each                            = var.snowflake_warehouses
  name                                = each.value["name"]
  auto_resume                         = each.value["auto_resume"]
  auto_suspend                        = each.value["auto_suspend"]
  comment                             = each.value["comment"]
  initially_suspended                 = each.value["initially_suspended"]
  max_cluster_count                   = each.value["max_cluster_count"]
  min_cluster_count                   = each.value["min_cluster_count"]
  resource_monitor                    = each.value["resource_monitor"]
  scaling_policy                      = each.value["scaling_policy"]
  statement_queued_timeout_in_seconds = each.value["statement_queued_timeout_in_seconds"]
  statement_timeout_in_seconds        = each.value["statement_timeout_in_seconds"]
  wait_for_provisioning               = each.value["wait_for_provisioning"]
  warehouse_size                      = each.value["warehouse_size"]
  #max_concurrency_amount              = each.value["max_concurrency_amount"
}
#