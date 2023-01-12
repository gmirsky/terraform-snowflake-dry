snowflake_resource_monitors = {
  db1_warehouse_resource_monitor = {
    name            = "db1_wh_rm"
    credit_quota    = 10
    set_for_account = false
    frequency       = "DAILY"
    #start_timestamp = "2023-12-31 00:00"
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
    #start_timestamp = "2023-12-31 00:00"
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
    #start_timestamp = "2023-12-31 00:00"
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