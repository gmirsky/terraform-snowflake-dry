output "snowflake_view_ids" {
  value = {
    for key, value in snowflake_view.this : key => value.id
  }
  description = "Snowflake view ids"
  sensitive   = false
}
#