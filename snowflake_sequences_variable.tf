variable "snowflake_sequences" {
  description = "Snowflake sequences"
  type = map(
    object(
      {
        database  = string
        schema    = string
        name      = string
        comment   = optional(string)
        increment = optional(number)
      }
    )
  )
}
#