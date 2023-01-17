resource "snowflake_role_grants" "this" {
  for_each               = var.snowflake_role_grants
  role_name              = each.value["role_name"]
  roles                  = each.value["roles"]
  users                  = each.value["users"]
  enable_multiple_grants = each.value["enable_multiple_grants"]

}
#
