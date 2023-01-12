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
