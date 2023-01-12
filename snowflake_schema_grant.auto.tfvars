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

/***** Other options are... 
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
