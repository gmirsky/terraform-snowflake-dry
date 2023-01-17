variable "snowflake_warehouse_grants" {
  description = "Snowflake warehouse grants to roles"
  type = map(
    object(
      {
        warehouse_name         = string
        privilege              = string
        roles                  = list(string)
        enable_multiple_grants = optional(bool, true)
        with_grant_option      = optional(bool, false)
      }
    )
  )
}
#