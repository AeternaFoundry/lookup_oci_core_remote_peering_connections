output "core_remote_peering_connections_lookup_id" {
  description = "Map of id values across all core_remote_peering_connections_lookup, keyed the same as var.core_remote_peering_connections_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_remote_peering_connections.core_remote_peering_connections_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_remote_peering_connections_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_remote_peering_connections_lookup, keyed the same as var.core_remote_peering_connections_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_remote_peering_connections.core_remote_peering_connections_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_remote_peering_connections_lookup_drg_id" {
  description = "Map of drg_id values across all core_remote_peering_connections_lookup, keyed the same as var.core_remote_peering_connections_lookup except keys with no drg_id are omitted"
  value       = { for k, v in data.oci_core_remote_peering_connections.core_remote_peering_connections_lookup : k => v.drg_id if v.drg_id != null && length(v.drg_id) > 0 }
}
output "core_remote_peering_connections_lookup_filter" {
  description = "Map of filter values across all core_remote_peering_connections_lookup, keyed the same as var.core_remote_peering_connections_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_remote_peering_connections.core_remote_peering_connections_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_remote_peering_connections_lookup_remote_peering_connections" {
  description = "Map of remote_peering_connections values across all core_remote_peering_connections_lookup, keyed the same as var.core_remote_peering_connections_lookup except keys with no remote_peering_connections are omitted"
  value       = { for k, v in data.oci_core_remote_peering_connections.core_remote_peering_connections_lookup : k => v.remote_peering_connections if v.remote_peering_connections != null && length(v.remote_peering_connections) > 0 }
}

