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