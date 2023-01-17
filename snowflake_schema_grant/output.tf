output "snowflake_schema_grant_ids" {
  value = {
    for key, value in snowflake_schema_grant.this : key => value.id
  }
  description = "Snowflake schema grant ids"
  sensitive   = false
}
#