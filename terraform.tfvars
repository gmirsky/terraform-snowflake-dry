snowflake_databases = {
  db1 = {
    name                        = "test_database_1"
    comment                     = "Test Database 1"
    data_retention_time_in_days = 3
    is_transient                = false
  }
  db2 = {
    name                        = "test_database_2"
    comment                     = "Test Database 2"
    data_retention_time_in_days = 3
    is_transient                = false
  }
  db3 = {
    name                        = "test_database_3"
    comment                     = "Test Database 3"
    data_retention_time_in_days = 3
    is_transient                = false
  }
}
#
snowflake_database_grants = {
  grant_usage_on_test_database_1 = {
    database_name = "test_database_1"
    privilege     = "usage"
    roles = [
      "test_database1_role",
      "test_database1_read_only_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_monitor_on_test_database_1 = {
    database_name = "test_database_1"
    privilege     = "monitor"
    roles = [
      "test_database1_role",
      "test_database1_read_only_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_reference_on_test_database_1 = {
    database_name = "test_database_1"
    privilege     = "reference_usage"
    roles = [
      "test_database1_role",
      "test_database1_read_only_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_modify_on_test_database_1 = {
    database_name = "test_database_1"
    privilege     = "modify"
    roles = [
      "test_database1_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_create_schema_on_test_database_1 = {
    database_name = "test_database_1"
    privilege     = "create schema"
    roles = [
      "test_database1_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  }
  grant_usage_on_test_database_2 = {
    database_name = "test_database_2"
    privilege     = "usage"
    roles = [
      "test_database2_role",
      "test_database2_read_only_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_monitor_on_test_database_2 = {
    database_name = "test_database_2"
    privilege     = "monitor"
    roles = [
      "test_database2_role",
      "test_database2_read_only_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_reference_on_test_database_2 = {
    database_name = "test_database_2"
    privilege     = "reference_usage"
    roles = [
      "test_database2_role",
      "test_database2_read_only_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_modify_on_test_database_2 = {
    database_name = "test_database_2"
    privilege     = "modify"
    roles = [
      "test_database2_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_create_schema_on_test_database_2 = {
    database_name = "test_database_2"
    privilege     = "create schema"
    roles = [
      "test_database2_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  }
  grant_usage_on_test_database_3 = {
    database_name = "test_database_3"
    privilege     = "usage"
    roles = [
      "test_database3_role",
      "test_database3_read_only_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_monitor_on_test_database_3 = {
    database_name = "test_database_3"
    privilege     = "monitor"
    roles = [
      "test_database3_role",
      "test_database3_read_only_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_reference_on_test_database_3 = {
    database_name = "test_database_3"
    privilege     = "reference_usage"
    roles = [
      "test_database3_role",
      "test_database3_read_only_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_modify_on_test_database_3 = {
    database_name = "test_database_3"
    privilege     = "modify"
    roles = [
      "test_database3_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_create_schema_on_test_database_3 = {
    database_name = "test_database_3"
    privilege     = "create schema"
    roles = [
      "test_database3_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  }
}
#
snowflake_file_formats = {
  file_format_1 = {
    database    = "test_database_1"
    schema      = "test_schema_1"
    name        = "test_file_format_1"
    comment     = "Test Database 1, Test Schema 1, File Format 1"
    format_type = "CSV"
  }
}
#