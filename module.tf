module "snowflake_database" {
  source              = "./snowflake_database"
  snowflake_databases = var.snowflake_databases
  providers = {
    snowflake = snowflake.sysadmin
  }
}
#
module "snowflake_database_grants" {
  source                    = "./snowflake_database_grant"
  snowflake_database_grants = var.snowflake_database_grants
  providers = {
    snowflake = snowflake.sysadmin
  }
  depends_on = [
    module.snowflake_database
  ]
}
#
module "snowflake_schema" {
  source            = "./snowflake_schema"
  snowflake_schemas = var.snowflake_schemas
  providers = {
    snowflake = snowflake.sysadmin
  }
  depends_on = [
    module.snowflake_database
  ]
}
#
module "snowflake_file_format" {
  source                 = "./snowflake_file_format"
  snowflake_file_formats = var.snowflake_file_formats
  providers = {
    snowflake = snowflake.sysadmin
  }
  depends_on = [
    module.snowflake_database,
    module.snowflake_schema
  ]
}
#
module "snowflake_warehouse" {
  source               = "./snowflake_warehouse"
  snowflake_warehouses = var.snowflake_warehouses
  providers = {
    snowflake = snowflake.accountadmin
  }
}
#
module "snowflake_warehouse_grant" {
  source                     = "./snowflake_warehouse_grant"
  snowflake_warehouse_grants = var.snowflake_warehouse_grants
  providers = {
    snowflake = snowflake.sysadmin
  }
  depends_on = [
    module.snowflake_warehouse,
    module.snowflake_role
  ]
}
#
module "snowflake_role" {
  source          = "./snowflake_role"
  snowflake_roles = var.snowflake_roles
  providers = {
    snowflake = snowflake.accountadmin
  }
}
#
module "snowflake_user" {
  source          = "./snowflake_user"
  snowflake_users = var.snowflake_users
  providers = {
    snowflake = snowflake.useradmin
  }
  depends_on = [
    module.snowflake_warehouse,
    module.snowflake_role
  ]
}
#
module "snowflake_sequence" {
  source              = "./snowflake_sequence"
  snowflake_sequences = var.snowflake_sequences
  providers = {
    snowflake = snowflake.sysadmin
  }
  depends_on = [
    module.snowflake_schema
  ]
}
#
module "snowflake_tag" {
  source         = "./snowflake_tag"
  snowflake_tags = var.snowflake_tags
  providers = {
    snowflake = snowflake.sysadmin
  }
  depends_on = [
    module.snowflake_schema
  ]
}
#
module "snowflake_schema_grant" {
  source                  = "./snowflake_schema_grant"
  snowflake_schema_grants = var.snowflake_schema_grants
  providers = {
    snowflake = snowflake.sysadmin
  }
  depends_on = [
    module.snowflake_schema
  ]
}
#
module "snowflake_resource_monitor" {
  source                      = "./snowflake_resource_monitor"
  snowflake_resource_monitors = var.snowflake_resource_monitors
  providers = {
    snowflake = snowflake.accountadmin
  }
  depends_on = [
    module.snowflake_warehouse
  ]
}
#
module "snowflake_role_grants" {
  source                = "./snowflake_role_grants"
  snowflake_role_grants = var.snowflake_role_grants
  providers = {
    snowflake = snowflake.accountadmin
  }
  depends_on = [
    module.snowflake_role,
    module.snowflake_user
  ]
}
#
module "snowflake_procedure" {
  source               = "./snowflake_procedure"
  snowflake_procedures = var.snowflake_procedures
  providers = {
    snowflake = snowflake.sysadmin
  }
  depends_on = [
    module.snowflake_schema
  ]
}
#
module "snowflake_procedure_grant" {
  source                     = "./snowflake_procedure_grant"
  snowflake_procedure_grants = var.snowflake_procedure_grants
  providers = {
    snowflake = snowflake.sysadmin
  }
  depends_on = [
    module.snowflake_procedure
  ]
}
#
