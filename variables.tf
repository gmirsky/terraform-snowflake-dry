variable "snowflake_databases" {
  type = map(
    object(
      {
        name                        = string
        comment                     = optional(string)
        is_transient                = optional(bool, false)
        data_retention_time_in_days = optional(number, 3)
      }
    )
  )
}
#
variable "snowflake_database_grants" {
  description = "Snowflake database grants"
  type = map(
    object(
      {
        database_name          = string
        privilege              = string
        roles                  = list(string)
        shares                 = list(string)
        enable_multiple_grants = optional(bool, true)
        with_grant_option      = optional(bool, false)
      }
    )
  )
}
#
variable "snowflake_file_formats" {
  description = "Snowflake file formats"
  type = map(
    object(
      {
        database                       = string
        schema                         = string
        name                           = string
        format_type                    = string
        allow_duplicate                = optional(bool, false)
        binary_as_text                 = optional(bool, false)
        binary_format                  = optional(string)
        comment                        = optional(string)
        compression                    = optional(string)
        date_format                    = optional(string)
        disable_auto_convert           = optional(bool, false)
        disable_snowflake_data         = optional(bool, false)
        empty_field_as_null            = optional(bool, false)
        enable_octal                   = optional(bool, false)
        encoding                       = optional(string)
        error_on_column_count_mismatch = optional(bool, false)
        escape                         = optional(string)
        escape_unenclosed_field        = optional(string)
        field_delimiter                = optional(string)
        field_optionally_enclosed_by   = optional(string)
        file_extension                 = optional(string)
        ignore_utf8_errors             = optional(bool, false)
        null_if                        = optional(list(string))
        preserve_space                 = optional(bool, false)
        record_delimiter               = optional(string)
        replace_invalid_characters     = optional(bool, false)
        skip_blank_lines               = optional(bool, false)
        skip_byte_order_mark           = optional(bool, false)
        skip_header                    = optional(number)
        strip_null_values              = optional(bool, false)
        strip_outer_array              = optional(bool, false)
        strip_outer_element            = optional(bool, false)
        time_format                    = optional(string)
        timestamp_format               = optional(string)
        trim_space                     = optional(bool, false)
      }
    )
  )
}
#
variable "snowflake_schemas" {
  description = "Schemas for Snowflake databases"
  type = map(
    object(
      {
        database            = string
        name                = string
        comment             = string
        is_transient        = optional(bool, false)
        is_managed          = optional(bool, false)
        data_retention_days = optional(number, 1)
      }
    )
  )
}
#
variable "snowflake_warehouses" {
  description = "Snowflake Warehouses to be created"
  type = map(
    object(
      {
        name                                = string
        auto_resume                         = optional(bool, true)
        auto_suspend                        = optional(number, 60)
        comment                             = optional(string)
        initially_suspended                 = optional(bool, true)
        max_cluster_count                   = optional(number, 3)
        max_concurrency_level               = optional(number)
        min_cluster_count                   = optional(number, 1)
        resource_monitor                    = optional(string)
        scaling_policy                      = optional(string, "Economy")
        statement_queued_timeout_in_seconds = optional(number)
        statement_timeout_in_seconds        = optional(number)
        wait_for_provisioning               = optional(bool, false)
        warehouse_size                      = optional(string, "X-Small")
      }
    )
  )
}
#
variable "snowflake_roles" {
  description = "Snowflake Roles to be created"
  type = map(
    object(
      {
        name    = string
        comment = string
      }
    )
  )
}
#
