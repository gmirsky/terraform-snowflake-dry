output "snowflake_warehouse_grant_ids" {
  value = {
    for key, value in snowflake_warehouse_grant.this : key => value.id
  }
  description = "Snowflake warehouse grant ids"
  sensitive   = false
}
#