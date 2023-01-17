output "snowflake_procedure_grant_ids" {
  value = {
    for key, value in snowflake_procedure_grant.this : key => value.id
  }
  description = "Snowflake procedure grant ids"
  sensitive   = false
}
#