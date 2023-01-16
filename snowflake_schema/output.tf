output "snowflake_schema_ids" {
  value = {
    for key, value in snowflake_schema.this : key => value.id
  }
  description = "Snowflake schema ids"
  sensitive   = false
}
#