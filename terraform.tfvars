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
snowflake_schemas = {
  db1_schema1 = {
    database            = "test_database_1"
    name                = "test_schema_1"
    comment             = "Test Database 1, Test Schema 1"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db1_schema2 = {
    database            = "test_database_1"
    name                = "test_schema_2"
    comment             = "Test Database 1, Test Schema 2"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db1_schema3 = {
    database            = "test_database_1"
    name                = "test_schema_3"
    comment             = "Test Database 1, Test Schema 3"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db2_schema1 = {
    database            = "test_database_2"
    name                = "test_schema_1"
    comment             = "Test Database 2, Test Schema 1"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db2_schema2 = {
    database            = "test_database_2"
    name                = "test_schema_2"
    comment             = "Test Database 2, Test Schema 2"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db2_schema3 = {
    database            = "test_database_2"
    name                = "test_schema_3"
    comment             = "Test Database 2, Test Schema 3"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db3_schema1 = {
    database            = "test_database_3"
    name                = "test_schema_1"
    comment             = "Test Database 3, Test Schema 1"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db3_schema2 = {
    database            = "test_database_3"
    name                = "test_schema_2"
    comment             = "Test Database 3, Test Schema 2"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db3_schema3 = {
    database            = "test_database_3"
    name                = "test_schema_3"
    comment             = "Test Database 3, Test Schema 3"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
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
snowflake_warehouses = {
  db1_warehouse = {
    name                                = "test_database_1_wh"
    auto_resume                         = true
    auto_suspend                        = 60
    comment                             = "This is a data warehouse for test_database_1"
    initially_suspended                 = true
    max_cluster_count                   = 3
    max_concurrency_amount              = null
    min_cluster_count                   = 1
    resource_monitor                    = null
    scaling_policy                      = "Economy" #"Standard"
    statement_queued_timeout_in_seconds = null
    statement_timeout_in_seconds        = null
    wait_for_provisioning               = false
    warehouse_size                      = "X-Small"
  },
  db2_warehouse = {
    name                                = "test_database_2_wh"
    auto_resume                         = true
    auto_suspend                        = 60
    comment                             = "This is a data warehouse for test_database_2"
    initially_suspended                 = true
    max_cluster_count                   = 3
    max_concurrency_amount              = null
    min_cluster_count                   = 1
    resource_monitor                    = null
    scaling_policy                      = "Economy" #"Standard"
    statement_queued_timeout_in_seconds = null
    statement_timeout_in_seconds        = null
    wait_for_provisioning               = false
    warehouse_size                      = "X-Small"
  },
  db3_warehouse = {
    name                                = "test_database_3_wh"
    auto_resume                         = true
    auto_suspend                        = 60
    comment                             = "This is a data warehouse for test_database_3"
    initially_suspended                 = true
    max_cluster_count                   = 3
    max_concurrency_amount              = null
    min_cluster_count                   = 1
    resource_monitor                    = null
    scaling_policy                      = "Economy" #"Standard"
    statement_queued_timeout_in_seconds = null
    statement_timeout_in_seconds        = null
    wait_for_provisioning               = false
    warehouse_size                      = "X-Small"
  }
}
#