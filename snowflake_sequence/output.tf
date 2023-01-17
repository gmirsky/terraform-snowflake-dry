output "snowflake_sequence_ids" {
  value = {
    for key, value in snowflake_sequence.this : key => value.id
  }
  description = "Snowflake sequence ids"
  sensitive   = false
}
#
output "snowflake_sequence_fully_qualified_names" {
  value = {
    for key, value in snowflake_sequence.this : key => value.fully_qualified_name
  }
  description = "Snowflake sequence fully qualified names"
  sensitive   = false
}
#
output "snowflake_sequence_next_values" {
  value = {
    for key, value in snowflake_sequence.this : key => value.next_value
  }
  description = "Snowflake sequence next values"
  sensitive   = false
}
#
