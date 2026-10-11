variable "sesv2_email_identity_policies" {
  description = <<EOT
Map of sesv2_email_identity_policies, attributes below
Required:
    - email_identity
    - policy
    - policy_name
Optional:
    - region
EOT

  type = map(object({
    email_identity = string
    policy         = string
    policy_name    = string
    region         = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.sesv2_email_identity_policies : (
        length(v.policy_name) >= 1 && length(v.policy_name) <= 64
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

