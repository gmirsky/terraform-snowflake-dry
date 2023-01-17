output "snowflake_procedure_ids" {
  value = {
    for key, value in snowflake_procedure.this : key => value.id
  }
  description = "Snowflake procedure ids"
  sensitive   = false
}
#