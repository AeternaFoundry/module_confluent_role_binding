output "role_bindings_id" {
  description = "Map of id values across all role_bindings, keyed the same as var.role_bindings except keys with no id are omitted"
  value       = { for k, v in confluent_role_binding.role_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "role_bindings_crn_pattern" {
  description = "Map of crn_pattern values across all role_bindings, keyed the same as var.role_bindings except keys with no crn_pattern are omitted"
  value       = { for k, v in confluent_role_binding.role_bindings : k => v.crn_pattern if v.crn_pattern != null && length(v.crn_pattern) > 0 }
}
output "role_bindings_disable_wait_for_ready" {
  description = "Map of disable_wait_for_ready values across all role_bindings, keyed the same as var.role_bindings except keys with no disable_wait_for_ready are omitted"
  value       = { for k, v in confluent_role_binding.role_bindings : k => v.disable_wait_for_ready if v.disable_wait_for_ready != null }
}
output "role_bindings_principal" {
  description = "Map of principal values across all role_bindings, keyed the same as var.role_bindings except keys with no principal are omitted"
  value       = { for k, v in confluent_role_binding.role_bindings : k => v.principal if v.principal != null && length(v.principal) > 0 }
}
output "role_bindings_role_name" {
  description = "Map of role_name values across all role_bindings, keyed the same as var.role_bindings except keys with no role_name are omitted"
  value       = { for k, v in confluent_role_binding.role_bindings : k => v.role_name if v.role_name != null && length(v.role_name) > 0 }
}

