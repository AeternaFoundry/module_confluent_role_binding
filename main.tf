resource "confluent_role_binding" "role_bindings" {
  for_each = var.role_bindings

  crn_pattern            = each.value.crn_pattern
  principal              = each.value.principal
  role_name              = each.value.role_name
  disable_wait_for_ready = each.value.disable_wait_for_ready
}

