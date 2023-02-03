rsa_key_file_directory_name = "rsa_pem_files"
encryption_algorithm        = "RSA"
rsa_bits                    = 2048
#
snowflake_databases = {
  db1 = {
    name                        = "TEST_DATABASE_1"
    comment                     = "Test Database 1"
    data_retention_time_in_days = 3
    is_transient                = false
  }
  db2 = {
    name                        = "TEST_DATABASE_2"
    comment                     = "Test Database 2"
    data_retention_time_in_days = 3
    is_transient                = false
  }
  db3 = {
    name                        = "TEST_DATABASE_3"
    comment                     = "Test Database 3"
    data_retention_time_in_days = 3
    is_transient                = false
  }
}
#
snowflake_schemas = {
  db1_schema1 = {
    database            = "TEST_DATABASE_1"
    name                = "TEST_SCHEMA_1"
    comment             = "Test Database 1, Test Schema 1"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db1_schema2 = {
    database            = "TEST_DATABASE_1"
    name                = "TEST_SCHEMA_2"
    comment             = "Test Database 1, Test Schema 2"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db1_schema3 = {
    database            = "TEST_DATABASE_1"
    name                = "TEST_SCHEMA_3"
    comment             = "Test Database 1, Test Schema 3"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db2_schema1 = {
    database            = "TEST_DATABASE_2"
    name                = "TEST_SCHEMA_1"
    comment             = "Test Database 2, Test Schema 1"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db2_schema2 = {
    database            = "TEST_DATABASE_2"
    name                = "TEST_SCHEMA_2"
    comment             = "Test Database 2, Test Schema 2"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db2_schema3 = {
    database            = "TEST_DATABASE_2"
    name                = "TEST_SCHEMA_3"
    comment             = "Test Database 2, Test Schema 3"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db3_schema1 = {
    database            = "TEST_DATABASE_3"
    name                = "TEST_SCHEMA_1"
    comment             = "Test Database 3, Test Schema 1"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db3_schema2 = {
    database            = "TEST_DATABASE_3"
    name                = "TEST_SCHEMA_2"
    comment             = "Test Database 3, Test Schema 2"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  },
  db3_schema3 = {
    database            = "TEST_DATABASE_3"
    name                = "TEST_SCHEMA_3"
    comment             = "Test Database 3, Test Schema 3"
    is_transient        = false
    is_managed          = false
    data_retention_days = 1
  }
}
#
snowflake_database_grants = {
  grant_usage_on_test_database_1 = {
    database_name = "TEST_DATABASE_1"
    privilege     = "USAGE"
    roles = [
      "TEST_DATABASE_1_ROLE",
      "TEST_DATABASE_1_READ_ONLY_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_monitor_on_test_database_1 = {
    database_name = "TEST_DATABASE_1"
    privilege     = "MONITOR"
    roles = [
      "TEST_DATABASE_1_ROLE",
      "TEST_DATABASE_1_READ_ONLY_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_reference_on_test_database_1 = {
    database_name = "TEST_DATABASE_1"
    privilege     = "REFERENCE_USAGE"
    roles = [
      "TEST_DATABASE_1_ROLE",
      "TEST_DATABASE_1_READ_ONLY_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_modify_on_test_database_1 = {
    database_name = "TEST_DATABASE_1"
    privilege     = "MODIFY"
    roles = [
      "TEST_DATABASE_1_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_create_schema_on_test_database_1 = {
    database_name = "TEST_DATABASE_1"
    privilege     = "CREATE SCHEMA"
    roles = [
      "TEST_DATABASE_1_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  }
  grant_usage_on_test_database_2 = {
    database_name = "TEST_DATABASE_2"
    privilege     = "USAGE"
    roles = [
      "TEST_DATABASE_2_ROLE",
      "TEST_DATABASE_2_READ_ONLY_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_monitor_on_test_database_2 = {
    database_name = "TEST_DATABASE_2"
    privilege     = "MONITOR"
    roles = [
      "TEST_DATABASE_2_ROLE",
      "TEST_DATABASE_2_READ_ONLY_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_reference_on_test_database_2 = {
    database_name = "TEST_DATABASE_2"
    privilege     = "REFERENCE_USAGE"
    roles = [
      "TEST_DATABASE_2_ROLE",
      "TEST_DATABASE_2_READ_ONLY_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_modify_on_test_database_2 = {
    database_name = "TEST_DATABASE_2"
    privilege     = "MODIFY"
    roles = [
      "TEST_DATABASE_2_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_create_schema_on_test_database_2 = {
    database_name = "TEST_DATABASE_2"
    privilege     = "CREATE SCHEMA"
    roles = [
      "TEST_DATABASE_2_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  }
  grant_usage_on_test_database_3 = {
    database_name = "TEST_DATABASE_3"
    privilege     = "USAGE"
    roles = [
      "TEST_DATABASE_3_ROLE",
      "TEST_DATABASE_3_READ_ONLY_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_monitor_on_test_database_3 = {
    database_name = "TEST_DATABASE_3"
    privilege     = "MONITOR"
    roles = [
      "TEST_DATABASE_3_ROLE",
      "TEST_DATABASE_3_READ_ONLY_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_reference_on_test_database_3 = {
    database_name = "TEST_DATABASE_3"
    privilege     = "REFERENCE_USAGE"
    roles = [
      "TEST_DATABASE_3_ROLE",
      "TEST_DATABASE_3_READ_ONLY_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_modify_on_test_database_3 = {
    database_name = "TEST_DATABASE_3"
    privilege     = "MODIFY"
    roles = [
      "TEST_DATABASE_3_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_create_schema_on_test_database_3 = {
    database_name = "TEST_DATABASE_3"
    privilege     = "CREATE SCHEMA"
    roles = [
      "TEST_DATABASE_3_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  }
}
#
snowflake_file_formats = {
  file_format_1 = {
    database    = "TEST_DATABASE_1"
    schema      = "TEST_SCHEMA_1"
    name        = "TEST_FILE_FORMAT_1"
    comment     = "Test Database 1, Test Schema 1, File Format 1"
    format_type = "CSV"
  }
}
#
snowflake_warehouses = {
  db1_warehouse = {
    name                                = "TEST_DATABASE_1_WH"
    auto_resume                         = true
    auto_suspend                        = 60
    comment                             = "This is a data warehouse for TEST_DATABASE_1"
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
    name                                = "TEST_DATABASE_2_WH"
    auto_resume                         = true
    auto_suspend                        = 60
    comment                             = "This is a data warehouse for TEST_DATABASE_2"
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
    name                                = "TEST_DATABASE_3_WH"
    auto_resume                         = true
    auto_suspend                        = 60
    comment                             = "This is a data warehouse for TEST_DATABASE_3"
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
    name    = "TEST_DATABASE_1_ROLE"
    comment = "A test role for TEST_DATABASE_1"
  },
  db2_role = {
    name    = "TEST_DATABASE_2_ROLE"
    comment = "A test role for TEST_DATABASE_2"
  },
  db3_role = {
    name    = "TEST_DATABASE_3_ROLE"
    comment = "A test role for TEST_DATABASE_3"
  },
  db1_role_ro = {
    name    = "TEST_DATABASE_1_READ_ONLY_ROLE"
    comment = "A test read only role for TEST_DATABASE_1"
  },
  db2_role_ro = {
    name    = "TEST_DATABASE_2_READ_ONLY_ROLE"
    comment = "A test read only role for TEST_DATABASE_2"
  },
  db3_role_ro = {
    name    = "TEST_DATABASE_3_READ_ONLY_ROLE"
    comment = "A test read only role for TEST_DATABASE_3"
  }
}
#
snowflake_warehouse_grants = {
  grant_usage_on_test_database_1_WH = {
    warehouse_name = "TEST_DATABASE_1_WH"
    privilege      = "USAGE"
    roles = [
      "TEST_DATABASE_1_ROLE",
      "TEST_DATABASE_1_READ_ONLY_ROLE"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_operate_on_test_database_1_WH = {
    warehouse_name = "TEST_DATABASE_1_WH"
    privilege      = "OPERATE"
    roles = [
      "TEST_DATABASE_1_ROLE",
      "TEST_DATABASE_1_READ_ONLY_ROLE"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_monitor_on_test_database_1_WH = {
    warehouse_name = "TEST_DATABASE_1_WH"
    privilege      = "MONITOR"
    roles = [
      "TEST_DATABASE_1_ROLE",
      "TEST_DATABASE_1_READ_ONLY_ROLE"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_usage_on_test_database_2_WH = {
    warehouse_name = "TEST_DATABASE_2_WH"
    privilege      = "USAGE"
    roles = [
      "TEST_DATABASE_2_ROLE",
      "TEST_DATABASE_2_READ_ONLY_ROLE"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_operate_on_test_database_2_WH = {
    warehouse_name = "TEST_DATABASE_2_WH"
    privilege      = "OPERATE"
    roles = [
      "TEST_DATABASE_2_ROLE",
      "TEST_DATABASE_2_READ_ONLY_ROLE"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_monitor_on_test_database_2_WH = {
    warehouse_name = "TEST_DATABASE_2_WH"
    privilege      = "MONITOR"
    roles = [
      "TEST_DATABASE_2_ROLE",
      "TEST_DATABASE_2_READ_ONLY_ROLE"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_usage_on_test_database_3_WH = {
    warehouse_name = "TEST_DATABASE_3_WH"
    privilege      = "USAGE"
    roles = [
      "TEST_DATABASE_3_ROLE",
      "TEST_DATABASE_3_READ_ONLY_ROLE"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_operate_on_test_database_3_WH = {
    warehouse_name = "TEST_DATABASE_3_WH"
    privilege      = "OPERATE"
    roles = [
      "TEST_DATABASE_3_ROLE",
      "TEST_DATABASE_3_READ_ONLY_ROLE"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  },
  grant_monitor_on_test_database_3_WH = {
    warehouse_name = "TEST_DATABASE_3_WH"
    privilege      = "MONITOR"
    roles = [
      "TEST_DATABASE_3_ROLE",
      "TEST_DATABASE_3_READ_ONLY_ROLE"
    ]
    enable_multiple_grants = true
    with_grant_option      = false
  }
}
#
snowflake_users = {
  user1 = {
    name                    = "TEST_USER_1"
    login_name              = "TEST_USER_1"
    comment                 = "Test User #01 "
    password                = "Ch@ngeM3N0W!"
    disabled                = false
    display_name            = "Test User #01"
    email                   = "test.user1@notarealdomain.com"
    first_name              = "Test"
    last_name               = "User1"
    default_warehouse       = "TEST_DATABASE_1_WH"
    default_secondary_roles = []
    default_role            = "TEST_DATABASE_1_ROLE"
    rsa_public_key          = null
    rsa_public_key_2        = null
    must_change_password    = true
  },
  user2 = {
    name                    = "TEST_USER_2"
    login_name              = "TEST_USER_2"
    comment                 = "Test User #02 "
    password                = "Ch@ngeM3N0W!"
    disabled                = false
    display_name            = "Test User #02"
    email                   = "test.user2@notarealdomain.com"
    first_name              = "Test"
    last_name               = "User2"
    default_warehouse       = "TEST_DATABASE_2_WH"
    default_secondary_roles = []
    default_role            = "TEST_DATABASE_2_ROLE"
    rsa_public_key          = null
    rsa_public_key_2        = null
    must_change_password    = true
  },
  user3 = {
    name                    = "TEST_USER_3"
    login_name              = "TEST_USER_3"
    comment                 = "Test User #03 "
    password                = "Ch@ngeM3N0W!"
    disabled                = false
    display_name            = "Test User #03"
    email                   = "test.user3@notarealdomain.com"
    first_name              = "Test"
    last_name               = "User3"
    default_warehouse       = "TEST_DATABASE_3_WH"
    default_secondary_roles = []
    default_role            = "TEST_DATABASE_3_ROLE"
    rsa_public_key          = null
    rsa_public_key_2        = null
    must_change_password    = true
  }
}
#
snowflake_sequences = {
  TEST_SCHEMA_1 = {
    database  = "TEST_DATABASE_1"
    schema    = "TEST_SCHEMA_1"
    name      = "TEST_SEQUENCE_1"
    comment   = "Test Sequence 1"
    increment = 1
  }
  TEST_SCHEMA_2 = {
    database  = "TEST_DATABASE_2"
    schema    = "TEST_SCHEMA_1"
    name      = "TEST_SEQUENCE_1"
    comment   = "Test Sequence 1"
    increment = 1
  }
  TEST_SCHEMA_3 = {
    database  = "TEST_DATABASE_3"
    schema    = "TEST_SCHEMA_1"
    name      = "TEST_SEQUENCE_1"
    comment   = "Test Sequence 1"
    increment = 1
  }
}
#
snowflake_tags = {
  DB1_SCHEMA1_TAG1 = {
    name     = "DB1_SCHEMA1_TAG1"
    database = "TEST_DATABASE_1"
    schema   = "TEST_SCHEMA_1"
    allowed_values = [
      "DB1_SCHEMA1_TAG1",
      "DB_1_SCHEMA_1_TAG_1"
    ]
    comment = "TEST_DATABASE_1.TEST_SCHEMA_1 tag: DB1_SCHEMA1_TAG1"
  }
}
#
snowflake_schema_grants = {
  grant_usage_on_db1_schema1 = {
    database_name = "TEST_DATABASE_1"
    schema_name   = "TEST_SCHEMA_1"
    privilege     = "USAGE"
    roles = [
      "TEST_DATABASE_1_ROLE",
      "TEST_DATABASE_1_READ_ONLY_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  }
  grant_monitor_on_db1_schema1 = {
    database_name = "TEST_DATABASE_1"
    schema_name   = "TEST_SCHEMA_1"
    privilege     = "MONITOR"
    roles = [
      "TEST_DATABASE_1_ROLE",
      "TEST_DATABASE_1_READ_ONLY_ROLE"
    ]
    shares                 = []
    enable_multiple_grants = true
    with_grant_option      = false
  }
  grant_modify_on_db1_schema1 = {
    database_name = "TEST_DATABASE_1"
    schema_name   = "TEST_SCHEMA_1"
    privilege     = "MODIFY"
    roles = [
      "TEST_DATABASE_1_ROLE"
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
    name            = "TEST_DATABASE_1_WH_RM"
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
      "TEST_DATABASE_1_WH"
    ]
  },
  db2_warehouse_resource_monitor = {
    name            = "TEST_DATABASE_2_WH_RM"
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
      "TEST_DATABASE_2_WH"
    ]
  },
  db3_warehouse_resource_monitor = {
    name            = "TEST_DATABASE_3_WH_RM"
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
      "TEST_DATABASE_3_WH"
    ]
  }
}
#
snowflake_role_grants = {
  grant1 = {
    role_name = "TEST_DATABASE_1_ROLE"
    roles     = []
    users = [
      "TEST_USER_1",
      "TEST_USER_2",
      "TEST_USER_3"
    ]
    enable_multiple_grants = true
  }
}
#
snowflake_procedures = {
  SNOWFLAKE_PROCEDURE_1_01 = {
    name                = "SNOWFLAKE_PROCEDURE_1"
    database            = "TEST_DATABASE_1"
    schema              = "TEST_SCHEMA_1"
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
        name = "ARG1"
        type = "VARCHAR"
      },
      {
        name = "ARG2"
        type = "DATE"
      }
    ]
  }
  SNOWFLAKE_PROCEDURE_1_02 = {
    name                = "SNOWFLAKE_PROCEDURE_1"
    database            = "TEST_DATABASE_2"
    schema              = "TEST_SCHEMA_1"
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
        name = "ARG1"
        type = "VARCHAR"
      },
      {
        name = "ARG2"
        type = "DATE"
      }
    ]
  }
  SNOWFLAKE_PROCEDURE_1_03 = {
    name                = "SNOWFLAKE_PROCEDURE_1"
    database            = "TEST_DATABASE_3"
    schema              = "TEST_SCHEMA_1"
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
        name = "ARG1"
        type = "VARCHAR"
      },
      {
        name = "ARG2"
        type = "DATE"
      }
    ]
  }
}
#
snowflake_procedure_grants = {
  snowflake_procedure_grant_01 = {
    database_name          = "TEST_DATABASE_1"
    schema_name            = "TEST_SCHEMA_1"
    enable_multiple_grants = true
    on_future              = false
    privilege              = "USAGE"
    procedure_name         = "SNOWFLAKE_PROCEDURE_1"
    return_type            = "VARCHAR"
    roles = [
      "TEST_DATABASE_1_ROLE",
      "TEST_DATABASE_2_ROLE",
      "TEST_DATABASE_3_ROLE"
    ]
    shares            = []
    with_grant_option = false
    # arguments = [
    #   {
    #     name = "ARG1"
    #     type = "VARCHAR"
    #   },
    #   {
    #     name = "ARG2"
    #     type = "DATE"
    #   }
    # ]
    argument_data_types = [
      "VARCHAR", 
      "DATE"
      ]
  }
  snowflake_procedure_grant_02 = {
    database_name          = "TEST_DATABASE_2"
    schema_name            = "TEST_SCHEMA_1"
    enable_multiple_grants = true
    on_future              = false
    privilege              = "USAGE"
    procedure_name         = "SNOWFLAKE_PROCEDURE_1"
    return_type            = "VARCHAR"
    roles = [
      "TEST_DATABASE_1_ROLE",
      "TEST_DATABASE_2_ROLE",
      "TEST_DATABASE_3_ROLE"
    ]
    shares            = []
    with_grant_option = false
    # arguments = [
    #   {
    #     name = "ARG1"
    #     type = "VARCHAR"
    #   },
    #   {
    #     name = "ARG2"
    #     type = "DATE"
    #   }
    # ]
    argument_data_types = [
      "VARCHAR", 
      "DATE"
      ]
  }
  snowflake_procedure_grant_03 = {
    database_name          = "TEST_DATABASE_3"
    schema_name            = "TEST_SCHEMA_1"
    enable_multiple_grants = true
    on_future              = false
    privilege              = "USAGE"
    procedure_name         = "SNOWFLAKE_PROCEDURE_1"
    return_type            = "VARCHAR"
    roles = [
      "TEST_DATABASE_1_ROLE",
      "TEST_DATABASE_2_ROLE",
      "TEST_DATABASE_3_ROLE"
    ]
    shares            = []
    with_grant_option = false
    # arguments = [
    #   {
    #     name = "ARG1"
    #     type = "VARCHAR"
    #   },
    #   {
    #     name = "ARG2"
    #     type = "DATE"
    #   }
    # ]
    argument_data_types = [
      "VARCHAR", 
      "DATE"
      ]
  }
}
#
snowflake_views = {
  view1 = {
    database   = "TEST_DATABASE_1"
    schema     = "TEST_SCHEMA_1"
    name       = "TEST_VIEW_1"
    comment    = "Test Database 1, Test Schema 1, View 1"
    or_replace = false
    is_secure  = false
    statement  = <<-SQL
    select * from TEST_TABLE_1;
SQL 
  }
}
#
snowflake_tables = {
  TEST_TABLE_1 = {
    database        = "TEST_DATABASE_1"
    schema          = "TEST_SCHEMA_1"
    name            = "TEST_TABLE_1"
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
      #       sequence = "TEST_SEQUENCE_1"
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
