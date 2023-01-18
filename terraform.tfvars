rsa_key_file_directory_name = "rsa_pem_files"
encryption_algorithm        = "RSA"
rsa_bits                    = 2048
#
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
snowflake_schema_grants = {
  grant_usage_on_db1_schema1 = {
    database_name = "test_database_1"
    schema_name   = "test_schema_1"
    privilege     = "usage"
    roles = [
      "test_database1_role",
      "test_database1_read_only_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  }
  grant_monitor_on_db1_schema1 = {
    database_name = "test_database_1"
    schema_name   = "test_schema_1"
    privilege     = "monitor"
    roles = [
      "test_database1_role",
      "test_database1_read_only_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  }
  grant_modify_on_db1_schema1 = {
    database_name = "test_database_1"
    schema_name   = "test_schema_1"
    privilege     = "modify"
    roles = [
      "test_database1_role"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  }
}

/*
   Other options for snowflake_schema_grants are... 

      OWNERSHIP 
      CREATE VIEW 
      CREATE EXTERNAL TABLE 
      CREATE ROW ACCESS POLICY 
      CREATE TEMPORARY TABLE 
      CREATE TAG 
      CREATE PIPE 
      CREATE STREAM 
      CREATE MATERIALIZED VIEW 
      CREATE TABLE 
      CREATE TASK 
      CREATE FUNCTION 
      CREATE FILE FORMAT 
      CREATE STAGE 
      CREATE SEQUENCE 
      CREATE PROCEDURE 
      CREATE MASKING POLICY 
      ADD SEARCH OPTIMIZATION
*/
#
snowflake_resource_monitors = {
  db1_warehouse_resource_monitor = {
    name            = "db1_wh_rm"
    credit_quota    = 10
    set_for_account = false
    frequency       = "DAILY"
    #start_timestamp = "2024-12-31 00:01"
    end_timestamp = null
    notify_triggers = [
      70,
      80,
      90
    ]
    suspend_triggers = [
      100
    ]
    suspend_immediate_triggers = [
      110
    ]
    warehouses = [
      "test_database_1_wh"
    ]
  },
  db2_warehouse_resource_monitor = {
    name            = "db2_wh_rm"
    credit_quota    = 10
    set_for_account = false
    frequency       = "DAILY"
    #start_timestamp = "2024-12-31 00:01"
    end_timestamp = null
    notify_triggers = [
      70,
      80,
      90
    ]
    suspend_triggers = [
      100
    ]
    suspend_immediate_triggers = [
      110
    ]
    warehouses = [
      "test_database_2_wh"
    ]
  },
  db3_warehouse_resource_monitor = {
    name            = "db3_wh_rm"
    credit_quota    = 10
    set_for_account = false
    frequency       = "DAILY"
    #start_timestamp = "2024-12-31 00:01"
    end_timestamp = null
    notify_triggers = [
      70,
      80,
      90
    ]
    suspend_triggers = [
      100
    ]
    suspend_immediate_triggers = [
      110
    ]
    warehouses = [
      "test_database_3_wh"
    ]
  }
}
#
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
snowflake_procedures = {
  snowflake_procedure_01_01 = {
    name                = "snowflake_procedure_01"
    database            = "test_database_1"
    schema              = "test_schema_1"
    language            = "JAVASCRIPT"
    comment             = "Snowflake Procedure 01"
    return_type         = "VARCHAR"
    execute_as          = "CALLER"
    return_behavior     = "IMMUTABLE"
    statement           = <<-EOT
return "That's all folks!"
EOT
    null_input_behavior = "RETURNS NULL ON NULL INPUT"
    arguments = [
      {
        name = "arg1"
        type = "VARCHAR"
      },
      {
        name = "arg2"
        type = "DATE"
      }
    ]
  }
  snowflake_procedure_01_02 = {
    name                = "snowflake_procedure_01"
    database            = "test_database_2"
    schema              = "test_schema_1"
    language            = "JAVASCRIPT"
    comment             = "Snowflake Procedure 01"
    return_type         = "VARCHAR"
    execute_as          = "CALLER"
    return_behavior     = "IMMUTABLE"
    statement           = <<-EOT
return "That's all folks!"
EOT
    null_input_behavior = "RETURNS NULL ON NULL INPUT"
    arguments = [
      {
        name = "arg1"
        type = "VARCHAR"
      },
      {
        name = "arg2"
        type = "DATE"
      }
    ]
  }
  snowflake_procedure_01_03 = {
    name                = "snowflake_procedure_01"
    database            = "test_database_3"
    schema              = "test_schema_1"
    language            = "JAVASCRIPT"
    comment             = "Snowflake Procedure 01"
    return_type         = "VARCHAR"
    execute_as          = "CALLER"
    return_behavior     = "IMMUTABLE"
    statement           = <<-EOT
return "That's all folks!"
EOT
    null_input_behavior = "RETURNS NULL ON NULL INPUT"
    arguments = [
      {
        name = "arg1"
        type = "VARCHAR"
      },
      {
        name = "arg2"
        type = "DATE"
      }
    ]
  }
}
#
snowflake_procedure_grants = {
  snowflake_procedure_grant_01 = {
    database_name          = "test_database_1"
    schema_name            = "test_schema_1"
    enable_multiple_grants = true
    on_future              = false
    privilege              = "USAGE"
    procedure_name         = "snowflake_procedure_01"
    return_type            = "VARCHAR"
    roles = [
      "test_database1_role",
      "test_database2_role",
      "test_database3_role"
    ]
    shares            = []
    with_grant_option = false
    arguments = [
      {
        name = "arg1"
        type = "VARCHAR"
      },
      {
        name = "arg2"
        type = "DATE"
      }
    ]
  }
  snowflake_procedure_grant_02 = {
    database_name          = "test_database_2"
    schema_name            = "test_schema_1"
    enable_multiple_grants = true
    on_future              = false
    privilege              = "USAGE"
    procedure_name         = "snowflake_procedure_01"
    return_type            = "VARCHAR"
    roles = [
      "test_database1_role",
      "test_database2_role",
      "test_database3_role"
    ]
    shares            = []
    with_grant_option = false
    arguments = [
      {
        name = "arg1"
        type = "VARCHAR"
      },
      {
        name = "arg2"
        type = "DATE"
      }
    ]
  }
  snowflake_procedure_grant_03 = {
    database_name          = "test_database_3"
    schema_name            = "test_schema_1"
    enable_multiple_grants = true
    on_future              = false
    privilege              = "USAGE"
    procedure_name         = "snowflake_procedure_01"
    return_type            = "VARCHAR"
    roles = [
      "test_database1_role",
      "test_database2_role",
      "test_database3_role"
    ]
    shares            = []
    with_grant_option = false
    arguments = [
      {
        name = "arg1"
        type = "VARCHAR"
      },
      {
        name = "arg2"
        type = "DATE"
      }
    ]
  }
}
#
snowflake_views = {
  view1 = {
    database   = "test_database_1"
    schema     = "test_schema_1"
    name       = "test_view_1"
    comment    = "Test Database 1, Test Schema 1, View 1"
    or_replace = false
    is_secure  = false
    statement  = <<-SQL
    select * from test_table_1;
SQL 
  }
}
#
snowflake_tables = {
  test_table_1 = {
    database        = "test_database_1"
    schema          = "test_schema_1"
    name            = "test_table_1"
    comment         = "Test Database 1, Test Schema 1, Table 1"
    change_tracking = false
    cluster_by      = ["to_date(DATE)"]
    #data_retention_days = 1 #deprecated
    column = [
      ###
      ### Commented out the below column since the snowflake provider creates 
      ### inconsistent results. Sometimes it works, sometimes it errors. 
      ###
      # {
      #   name     = "ID"
      #   type     = "NUMBER(38,0)" #"int"
      #   nullable = true
      #   comment  = "id with sequence"
      #   default = [
      #     {
      #       sequence = "test_sequence_1"
      #     }
      #   ]
      #   identity = []
      # },
      {
        name     = "IDENTITY"
        type     = "NUMBER(38,0)"
        nullable = true
        comment  = "identity"
        default  = []
        identity = [
          {
            start_num = 1
            step_num  = 3
          }
        ]
      },
      {
        name     = "DATA"
        type     = "text"
        comment  = "data column"
        nullable = false
        default  = []
        identity = []
      },
      {
        name     = "DATE"
        type     = "TIMESTAMP_NTZ(9)"
        comment  = "date column"
        nullable = false
        default  = []
        identity = []
      },
      {
        name     = "EXTRA"
        type     = "VARIANT"
        comment  = "extra data"
        nullable = true
        default  = []
        identity = []
      }
    ]
    primary_key = {
      name = "my_key"
      keys = ["DATA"]
    }
  }
}
#
