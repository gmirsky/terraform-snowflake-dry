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
      {
        name     = "id"
        type     = "int"
        nullable = true
        comment  = "id with sequence"
        default = [
          {
            sequence = "test_sequence_1"
          }
        ]
        identity = []
      },
      {
        name     = "identity"
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
        name     = "data"
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
        name     = "extra"
        type     = "VARIANT"
        comment  = "extra data"
        nullable = true
        default  = []
        identity = []
      }
    ]
    primary_key = {
      name = "my_key"
      keys = ["data"]
    }
  }
}
#
