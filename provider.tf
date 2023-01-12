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
# provider "aws" {
#   profile = var.aws_profile
#   region  = var.aws_region
#   default_tags {
#     tags = {
#       terraform_managed = "true"
#     }
#   }
# }
#