variable "snowflake_warehouses" {
  description = "Snowflake Warehouses to be created"
  type = map(
    object(
      {
        name                                = string
        auto_resume                         = optional(bool, true)
        auto_suspend                        = optional(number, 60)
        comment                             = optional(string)
        initially_suspended                 = optional(bool, true)
        max_cluster_count                   = optional(number, 3)
        max_concurrency_level               = optional(number)
        min_cluster_count                   = optional(number, 1)
        resource_monitor                    = optional(string)
        scaling_policy                      = optional(string, "Economy")
        statement_queued_timeout_in_seconds = optional(number)
        statement_timeout_in_seconds        = optional(number)
        wait_for_provisioning               = optional(bool, false)
        warehouse_size                      = optional(string, "X-Small")
      }
    )
  )
}
#