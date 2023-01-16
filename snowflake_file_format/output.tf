output "snowflake_file_format_ids" {
  value = {
    for key, value in snowflake_file_format.this : key => value.id
  }
  description = "Snowflake file format ids"
  sensitive   = false
}
#