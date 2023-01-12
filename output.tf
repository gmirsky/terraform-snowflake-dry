output "snowflake_database" {
  value = {
    for key, value in snowflake_database.this : key => value.id
  }
  description = "Snowflake database ids"
  sensitive   = false
}
#
output "snowflake_database1_name" {
  value       = snowflake_database.this["db1"].name
  description = "Snowflake database [db1]"
  sensitive   = false
}
#
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
output "snowflake_database_grant" {
  value = {
    for key, value in snowflake_database_grant.this : key => value.id
  }
  description = "Snowflake database grant ids"
  sensitive   = false
}
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
output "current_account_alias" {
  value       = data.aws_iam_account_alias.current.account_alias
  sensitive   = false
  description = "The IAM Account Alias"
}
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
