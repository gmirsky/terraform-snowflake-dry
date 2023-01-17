output "snowflake_tag_ids" {
  value = {
    for key, value in snowflake_tag.this : key => value.id
  }
  description = "Snowflake tag ids"
  sensitive   = false
}
#