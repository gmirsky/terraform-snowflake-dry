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
snowflake_roles = {
  db1_role = {
    name    = "test_database1_role"
    comment = "A test role for test_database_1"
  },
  db2_role = {
    name    = "test_database2_role"
    comment = "A test role for test_database_2"
  },
  db3_role = {
    name    = "test_database3_role"
    comment = "A test role for test_database_3"
  },
  db1_role_ro = {
    name    = "test_database1_read_only_role"
    comment = "A test read only role for test_database_1"
  },
  db2_role_ro = {
    name    = "test_database2_read_only_role"
    comment = "A test read only role for test_database_2"
  },
  db3_role_ro = {
    name    = "test_database3_read_only_role"
    comment = "A test read only role for test_database_3"
  }
}
#
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
snowflake_users = {
  user1 = {
    name                    = "test_user_01"
    login_name              = "test_user_01"
    comment                 = "Test User #01 "
    password                = "Ch@ngeM3N0W!"
    disabled                = false
    display_name            = "Test User #01"
    email                   = "test.user1@notarealdomain.com"
    first_name              = "Test"
    last_name               = "User1"
    default_warehouse       = "test_database_1_wh"
    default_secondary_roles = []
    default_role            = "test_database1_role"
    rsa_public_key          = null
    rsa_public_key_2        = null
    must_change_password    = true
  },
  user2 = {
    name                    = "test_user_02"
    login_name              = "test_user_02"
    comment                 = "Test User #02 "
    password                = "Ch@ngeM3N0W!"
    disabled                = false
    display_name            = "Test User #02"
    email                   = "test.user2@notarealdomain.com"
    first_name              = "Test"
    last_name               = "User2"
    default_warehouse       = "test_database_2_wh"
    default_secondary_roles = []
    default_role            = "test_database2_role"
    rsa_public_key          = null
    rsa_public_key_2        = null
    must_change_password    = true
  },
  user3 = {
    name                    = "test_user_03"
    login_name              = "test_user_03"
    comment                 = "Test User #03 "
    password                = "Ch@ngeM3N0W!"
    disabled                = false
    display_name            = "Test User #03"
    email                   = "test.user3@notarealdomain.com"
    first_name              = "Test"
    last_name               = "User3"
    default_warehouse       = "test_database_3_wh"
    default_secondary_roles = []
    default_role            = "test_database3_role"
    rsa_public_key          = null
    rsa_public_key_2        = null
    must_change_password    = true
  }
}
#
snowflake_sequences = {
  test_schema_1 = {
    database  = "test_database_1"
    schema    = "test_schema_1"
    name      = "test_sequence_1"
    comment   = "Test Sequence 1"
    increment = 1
  }
  test_schema_2 = {
    database  = "test_database_2"
    schema    = "test_schema_1"
    name      = "test_sequence_1"
    comment   = "Test Sequence 1"
    increment = 1
  }
  test_schema_3 = {
    database  = "test_database_3"
    schema    = "test_schema_1"
    name      = "test_sequence_1"
    comment   = "Test Sequence 1"
    increment = 1
  }
}
#
snowflake_tags = {
  db1_schema1_tag1 = {
    name     = "db1_schema1_tag1"
    database = "test_database_1"
    schema   = "test_schema_1"
    allowed_values = [
      "db1_schema1_tag1",
      "db_1_schema_1_tag_1"
    ]
    comment = "test_database_1.test_schema_1 tag: db1_schema1_tag1"
  }
}
#