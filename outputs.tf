output "sesv2_email_identity_policies_id" {
  description = "Map of id values across all sesv2_email_identity_policies, keyed the same as var.sesv2_email_identity_policies"
  value       = { for k, v in aws_sesv2_email_identity_policy.sesv2_email_identity_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sesv2_email_identity_policies_email_identity" {
  description = "Map of email_identity values across all sesv2_email_identity_policies, keyed the same as var.sesv2_email_identity_policies"
  value       = { for k, v in aws_sesv2_email_identity_policy.sesv2_email_identity_policies : k => v.email_identity if v.email_identity != null && length(v.email_identity) > 0 }
}
output "sesv2_email_identity_policies_policy" {
  description = "Map of policy values across all sesv2_email_identity_policies, keyed the same as var.sesv2_email_identity_policies"
  value       = { for k, v in aws_sesv2_email_identity_policy.sesv2_email_identity_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "sesv2_email_identity_policies_policy_name" {
  description = "Map of policy_name values across all sesv2_email_identity_policies, keyed the same as var.sesv2_email_identity_policies"
  value       = { for k, v in aws_sesv2_email_identity_policy.sesv2_email_identity_policies : k => v.policy_name if v.policy_name != null && length(v.policy_name) > 0 }
}
output "sesv2_email_identity_policies_region" {
  description = "Map of region values across all sesv2_email_identity_policies, keyed the same as var.sesv2_email_identity_policies"
  value       = { for k, v in aws_sesv2_email_identity_policy.sesv2_email_identity_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

