data "oci_bastion_sessions" "bastion_sessions_lookup" {
  for_each = var.bastion_sessions_lookup

  bastion_id              = each.value.bastion_id
  display_name            = each.value.display_name
  session_id              = each.value.session_id
  session_lifecycle_state = each.value.session_lifecycle_state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

