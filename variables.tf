variable "role_bindings" {
  description = <<EOT
Map of role_bindings, attributes below
Required:
    - crn_pattern
    - principal
    - role_name
Optional:
    - disable_wait_for_ready
EOT

  type = map(object({
    crn_pattern            = string
    principal              = string
    role_name              = string
    disable_wait_for_ready = optional(bool)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

