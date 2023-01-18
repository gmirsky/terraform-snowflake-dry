resource "local_file" "private_pem" {
  for_each = var.snowflake_users
  filename = "${var.rsa_key_file_directory_path}/${each.value["name"]}_private.pem"
  content  = chomp(tls_private_key.this[each.key].private_key_pem)
}
#
resource "local_file" "public_pem" {
  for_each = var.snowflake_users
  filename = "${var.rsa_key_file_directory_path}/${each.value["name"]}_public.pem"
  content  = chomp(tls_private_key.this[each.key].public_key_pem)
}
#