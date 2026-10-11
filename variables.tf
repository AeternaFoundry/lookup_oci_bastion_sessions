variable "bastion_sessions_lookup" {
  description = <<EOT
Map of bastion_sessions_lookup, attributes below
Required:
    - bastion_id
Optional:
    - display_name
    - session_id
    - session_lifecycle_state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    bastion_id              = string
    display_name            = optional(string)
    session_id              = optional(string)
    session_lifecycle_state = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

