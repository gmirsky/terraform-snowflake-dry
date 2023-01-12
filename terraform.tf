terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.49.0"
    }
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.55.1"
    }
  }
}
#
