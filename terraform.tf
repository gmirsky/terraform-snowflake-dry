terraform {
  required_version = ">= 1.3.0"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.56.3"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.3.0"
    }
  }
}
#
