data "aws_caller_identity" "current" {
}
#
#data "aws_region" "current" {}
#data "aws_partition" "current" {}
#
data "aws_iam_account_alias" "current" {
}
#
data "snowflake_current_account" "this" {
}
#
# data "template_file" "snowflake_load_trust_policy_template" {
#   template = file(
#     "${path.module}/json/snowflake_load_trust_policy.json"
#   )
#   vars = {
#     snowflake_account_arn = var.snowflake_account_arn
#     snowflake_external_id = var.snowflake_external_id
#   }
# }
# #
# data "template_file" "snowflake_load_policy_template" {
#   template = file(
#     "${path.module}/json/snowflake_load_policy.json"
#   )
#   vars = {
#     bucket_name = local.bucket_name
#   }
# }
#
