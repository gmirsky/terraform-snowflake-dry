output "snowflake_user_ids" {
  value = {
    for key, value in snowflake_user.this : key => value.id
  }
  description = "Snowflake user ids"
  sensitive   = false
}
#
output "snowflake_user_public_keys" {
  value = {
    for key, value in tls_private_key.this : key => value.public_key_pem
  }
  description = "Snowflake user public key"
  sensitive   = false
}
#
output "public_key_file_names" {
  value = {
    for key, value in local_file.public_pem : key => value.filename
  }
  description = "RSA PEM key file names"
  sensitive   = false
}
#