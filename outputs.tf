output "bastion_sessions_lookup_id" {
  description = "Map of id values across all bastion_sessions_lookup, keyed the same as var.bastion_sessions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_bastion_sessions.bastion_sessions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bastion_sessions_lookup_bastion_id" {
  description = "Map of bastion_id values across all bastion_sessions_lookup, keyed the same as var.bastion_sessions_lookup except keys with no bastion_id are omitted"
  value       = { for k, v in data.oci_bastion_sessions.bastion_sessions_lookup : k => v.bastion_id if v.bastion_id != null && length(v.bastion_id) > 0 }
}
output "bastion_sessions_lookup_display_name" {
  description = "Map of display_name values across all bastion_sessions_lookup, keyed the same as var.bastion_sessions_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_bastion_sessions.bastion_sessions_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "bastion_sessions_lookup_filter" {
  description = "Map of filter values across all bastion_sessions_lookup, keyed the same as var.bastion_sessions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_bastion_sessions.bastion_sessions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "bastion_sessions_lookup_session_id" {
  description = "Map of session_id values across all bastion_sessions_lookup, keyed the same as var.bastion_sessions_lookup except keys with no session_id are omitted"
  value       = { for k, v in data.oci_bastion_sessions.bastion_sessions_lookup : k => v.session_id if v.session_id != null && length(v.session_id) > 0 }
}
output "bastion_sessions_lookup_session_lifecycle_state" {
  description = "Map of session_lifecycle_state values across all bastion_sessions_lookup, keyed the same as var.bastion_sessions_lookup except keys with no session_lifecycle_state are omitted"
  value       = { for k, v in data.oci_bastion_sessions.bastion_sessions_lookup : k => v.session_lifecycle_state if v.session_lifecycle_state != null && length(v.session_lifecycle_state) > 0 }
}
output "bastion_sessions_lookup_sessions" {
  description = "Map of sessions values across all bastion_sessions_lookup, keyed the same as var.bastion_sessions_lookup except keys with no sessions are omitted"
  value       = { for k, v in data.oci_bastion_sessions.bastion_sessions_lookup : k => v.sessions if v.sessions != null && length(v.sessions) > 0 }
}

