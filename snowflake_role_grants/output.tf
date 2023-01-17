output "snowflake_role_grants_ids" {
  value = {
    for key, value in snowflake_role_grants.this : key => value.id
  }
  description = "Snowflake role grants ids"
  sensitive   = false
}
#