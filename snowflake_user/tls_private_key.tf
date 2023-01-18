resource "tls_private_key" "this" {
  for_each  = var.snowflake_users
  algorithm = var.encryption_algorithm
  rsa_bits  = var.rsa_bits
}
