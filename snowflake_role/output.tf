output "snowflake_role_ids" {
  value = {
    for key, value in snowflake_role.this : key => value.id
  }
  description = "Snowflake role ids"
  sensitive   = false
}
#