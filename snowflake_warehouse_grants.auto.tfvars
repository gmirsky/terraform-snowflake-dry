snowflake_warehouse_grants = {
  grant_usage_on_test_database_1_wh = {
    warehouse_name = "test_database_1_wh"
    privilege      = "usage"
    roles = [
      "test_database1_role",
      "test_database1_read_only_role"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_operate_on_test_database_1_wh = {
    warehouse_name = "test_database_1_wh"
    privilege      = "operate"
    roles = [
      "test_database1_role",
      "test_database1_read_only_role"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_monitor_on_test_database_1_wh = {
    warehouse_name = "test_database_1_wh"
    privilege      = "monitor"
    roles = [
      "test_database1_role",
      "test_database1_read_only_role"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_usage_on_test_database_2_wh = {
    warehouse_name = "test_database_2_wh"
    privilege      = "usage"
    roles = [
      "test_database2_role",
      "test_database2_read_only_role"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_operate_on_test_database_2_wh = {
    warehouse_name = "test_database_2_wh"
    privilege      = "operate"
    roles = [
      "test_database2_role",
      "test_database2_read_only_role"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_monitor_on_test_database_2_wh = {
    warehouse_name = "test_database_2_wh"
    privilege      = "monitor"
    roles = [
      "test_database2_role",
      "test_database2_read_only_role"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_usage_on_test_database_3_wh = {
    warehouse_name = "test_database_3_wh"
    privilege      = "usage"
    roles = [
      "test_database3_role",
      "test_database3_read_only_role"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_operate_on_test_database_3_wh = {
    warehouse_name = "test_database_3_wh"
    privilege      = "operate"
    roles = [
      "test_database3_role",
      "test_database3_read_only_role"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_monitor_on_test_database_3_wh = {
    warehouse_name = "test_database_3_wh"
    privilege      = "monitor"
    roles = [
      "test_database3_role",
      "test_database3_read_only_role"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  }
}
#