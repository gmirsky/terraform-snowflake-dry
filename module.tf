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
module "snowflake_role" {
  source          = "./snowflake_role"
  snowflake_roles = var.snowflake_roles
  providers = {
    snowflake = snowflake.accountadmin
  }
}
#