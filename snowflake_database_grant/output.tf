output "snowflake_database_grant_ids" {
  value = {
    for key, value in snowflake_database_grant.this : key => value.id
  }
  description = "Snowflake database grants"
  sensitive   = false
}
#