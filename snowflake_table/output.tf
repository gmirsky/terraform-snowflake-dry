output "snowflake_table_ids" {
  value = {
    for key, value in snowflake_table.this : key => value.id
  }
  description = "Snowflake table ids"
  sensitive   = false
}
#
output "snowflake_table_owners" {
  value = {
    for key, value in snowflake_table.this : key => value.owner
  }
  description = "Snowflake table owners"
  sensitive   = false
}
#
