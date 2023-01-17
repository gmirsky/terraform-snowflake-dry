output "snowflake_user_ids" {
  value = {
    for key, value in snowflake_user.this : key => value.id
  }
  description = "Snowflake user ids"
  sensitive   = false
}
#