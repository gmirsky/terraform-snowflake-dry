output "snowflake_warehouse_ids" {
  value = {
    for key, value in snowflake_warehouse.this : key => value.id
  }
  description = "Snowflake warehouse ids"
  sensitive   = false
}
#