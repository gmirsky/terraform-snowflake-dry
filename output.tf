output "snowflake_database_ids" {
  value       = module.snowflake_database.snowflake_database_id
  description = "Module Snowflake database ids"
  sensitive   = false
}
#
output "snowflake_database_grant_ids" {
  value       = module.snowflake_database_grants.snowflake_database_grant_ids
  description = "Snowflake database grants"
  sensitive   = false
}
#
output "snowflake_schema_ids" {
  value       = module.snowflake_schema.snowflake_schema_ids
  description = "Snowflake schema ids"
  sensitive   = false
}
#
output "snowflake_file_format_ids" {
  value       = module.snowflake_file_format.snowflake_file_format_ids
  description = "Snowflake file format ids"
  sensitive   = false
}
#
output "snowflake_warehouse_ids" {
  value       = module.snowflake_warehouse.snowflake_warehouse_ids
  description = "Snowflake warehouse ids"
  sensitive   = false
}
#
output "snowflake_role_ids" {
  value       = module.snowflake_role.snowflake_role_ids
  description = "Snowflake role ids"
  sensitive   = false
}
#
output "snowflake_warehouse_grant_ids" {
  value       = module.snowflake_warehouse_grant.snowflake_warehouse_grant_ids
  description = "Snowflake warehouse grant ids"
  sensitive   = false
}
#
output "snowflake_user_ids" {
  value       = module.snowflake_user.snowflake_user_ids
  description = "Snowflake user ids"
  sensitive   = "false"
}
#
output "snowflake_sequence_ids" {
  value       = module.snowflake_sequence.snowflake_sequence_ids
  description = "Snowflake sequence ids"
  sensitive   = false
}
#
output "snowflake_sequence_fully_qualified_names" {
  value       = module.snowflake_sequence.snowflake_sequence_fully_qualified_names
  description = "Snowflake sequence fully qualified names"
  sensitive   = false
}
#
output "snowflake_sequence_next_values" {
  value       = module.snowflake_sequence.snowflake_sequence_next_values
  description = "Snowflake sequence next values"
  sensitive   = false
}
#
output "snowflake_tag_ids" {
  value       = module.snowflake_tag.snowflake_tag_ids
  description = "Snowflake tag ids"
  sensitive   = false
}
#
output "snowflake_schema_grant_ids" {
  value       = module.snowflake_schema_grant.snowflake_schema_grant_ids
  description = "Snowflake schema grant ids"
  sensitive   = false
}
#
output "snowflake_resource_monitor_ids" {
  value       = module.snowflake_resource_monitor.snowflake_resource_monitor_ids
  description = "Snowflake resource monitor ids"
  sensitive   = false
}
#
output "snowflake_role_grants_ids" {
  value       = module.snowflake_role_grants.snowflake_role_grants_ids
  description = "Snowflake role grants ids"
  sensitive   = false
}
#
output "snowflake_procedure" {
  value       = module.snowflake_procedure.snowflake_procedure_ids
  description = "Snowflake procedure ids"
  sensitive   = false
}








#
output "snowflake_current_account" {
  value       = data.snowflake_current_account.this.account
  description = "Snowflake current account"
  sensitive   = false
}
#
output "snowflake_current_region" {
  value       = data.snowflake_current_account.this.region
  description = "Snowflake current region"
  sensitive   = false
}
#
output "snowflake_current_url" {
  value       = data.snowflake_current_account.this.url
  description = "Snowflake current URL"
  sensitive   = false
}
