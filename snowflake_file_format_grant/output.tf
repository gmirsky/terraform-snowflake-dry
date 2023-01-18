output "snowflake_file_format_grant_ids" {
  value = {
    for key, value in snowflake_file_format_grant.this : key => value.id
  }
  description = "Snowflake file format grant ids"
  sensitive   = false
}
#