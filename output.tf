output "snowflake_database_ids" {
  value       = module.snowflake_database.snowflake_database_id
  description = "Module Snowflake database ids"
  sensitive   = false
}
#
output "snowflake_database_grants" {
  value       = module.snowflake_database_grant.snowflake_database_grants
  description = "Snowflake database grants"
  sensitive   = false
}

output "snowflake_resource_monitor" {
  value = {
    for key, value in snowflake_resource_monitor.this : key => value.id
  }
  description = "Snowflake resource monitor ids"
  sensitive   = false
}
#
output "snowflake_role" {
  value = {
    for key, value in snowflake_role.this : key => value.id
  }
  description = "Snowflake role ids"
  sensitive   = false
}
#
output "snowflake_schema" {
  value = {
    for key, value in snowflake_schema.this : key => value.id
  }
  description = "Snowflake schema ids"
  sensitive   = false
}
#
output "snowflake_user" {
  value = {
    for key, value in snowflake_user.this : key => value.id
  }
  description = "Snowflake user ids"
  sensitive   = false
}
#
output "snowflake_warehouse" {
  value = {
    for key, value in snowflake_warehouse.this : key => value.id
  }
  description = "Snowflake warehouse ids"
  sensitive   = false
}
#
output "snowflake_warehouse_grant" {
  value = {
    for key, value in snowflake_warehouse_grant.this : key => value.id
  }
  description = "Snowflake warehouse grant ids"
  sensitive   = false
}
#

#
output "snowflake_schema_grant" {
  value = {
    for key, value in snowflake_schema_grant.this : key => value.id
  }
  description = "Snowflake schema grant ids"
  sensitive   = false
}
#
# output "snowflake_tag" {
#   value = {
#     for key, value in snowflake_tag.this : key => value.id
#   }
#   description = "Snowflake database/schema tag(s)"
#   sensitive   = false
# }
#
output "snowflake_procedure" {
  value = {
    for key, value in snowflake_procedure.this : key => value.id
  }
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
#
