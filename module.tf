module "snowflake_database" {
  source              = "./snowflake_database"
  snowflake_databases = var.snowflake_databases
  providers = {
    snowflake = snowflake.sysadmin
  }
}
#