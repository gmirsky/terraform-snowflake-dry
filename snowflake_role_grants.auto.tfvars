snowflake_role_grants = {
  grant1 = {
    role_name = "test_database1_role"
    roles     = []
    users = [
      "test_user_01",
      "test_user_02",
      "test_user_03"
    ]
    enable_multiple_grants = true
  }
}
#