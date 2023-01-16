module "snowflake_database" {
  source              = "./snowflake_database"
  snowflake_databases = var.snowflake_databases
  providers = {
    snowflake = snowflake.sysadmin
  }
}
#
module "snowflake_database_grant" {
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
