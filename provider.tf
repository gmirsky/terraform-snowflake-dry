provider "snowflake" {
  alias = "sysadmin"
  role  = "SYSADMIN"
}
#
provider "snowflake" {
  alias = "accountadmin"
  role  = "ACCOUNTADMIN"
}
#
provider "snowflake" {
  alias = "securityadmin"
  role  = "SECURITYADMIN"
}
#
provider "snowflake" {
  alias = "useradmin"
  role  = "USERADMIN"
}
#
provider "tls" {
}
#
provider "local" {
}
#