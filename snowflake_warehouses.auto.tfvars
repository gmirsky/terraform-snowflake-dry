snowflake_warehouses = {
  db1_warehouse = {
    name                                = "test_database_1_wh"
    auto_resume                         = true
    auto_suspend                        = 60
    comment                             = "This is a data warehouse for test_database_1"
    initially_suspended                 = true
    max_cluster_count                   = 3
    max_concurrency_amount              = null
    min_cluster_count                   = 1
    resource_monitor                    = null
    scaling_policy                      = "Economy" #"Standard"
    statement_queued_timeout_in_seconds = null
    statement_timeout_in_seconds        = null
    wait_for_provisioning               = false
    warehouse_size                      = "X-Small"
  },
  db2_warehouse = {
    name                                = "test_database_2_wh"
    auto_resume                         = true
    auto_suspend                        = 60
    comment                             = "This is a data warehouse for test_database_2"
    initially_suspended                 = true
    max_cluster_count                   = 3
    max_concurrency_amount              = null
    min_cluster_count                   = 1
    resource_monitor                    = null
    scaling_policy                      = "Economy" #"Standard"
    statement_queued_timeout_in_seconds = null
    statement_timeout_in_seconds        = null
    wait_for_provisioning               = false
    warehouse_size                      = "X-Small"
  },
  db3_warehouse = {
    name                                = "test_database_3_wh"
    auto_resume                         = true
    auto_suspend                        = 60
    comment                             = "This is a data warehouse for test_database_3"
    initially_suspended                 = true
    max_cluster_count                   = 3
    max_concurrency_amount              = null
    min_cluster_count                   = 1
    resource_monitor                    = null
    scaling_policy                      = "Economy" #"Standard"
    statement_queued_timeout_in_seconds = null
    statement_timeout_in_seconds        = null
    wait_for_provisioning               = false
    warehouse_size                      = "X-Small"
  }
}
#