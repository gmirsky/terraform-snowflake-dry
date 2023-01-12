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
