data "aws_caller_identity" "current" {
}
#
data "aws_iam_account_alias" "current" {
}
#
data "snowflake_current_account" "this" {
}
#
