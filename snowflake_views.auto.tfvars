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