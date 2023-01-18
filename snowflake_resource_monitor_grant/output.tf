output "snowflake_resource_monitor_grant_ids" {
  value = {
    for key, value in snowflake_resource_monitor_grant.this : key => value.id
  }
  description = "Snowflake resource monitor ids"
  sensitive   = false
}
#