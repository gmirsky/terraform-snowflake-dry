output "snowflake_database_id" {
  value = {
    for key, value in snowflake_database.this : key => value.id
  }
  description = "Snowflake databases"
  sensitive   = false
}
#