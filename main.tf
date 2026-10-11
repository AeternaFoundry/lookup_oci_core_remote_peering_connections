data "oci_core_remote_peering_connections" "core_remote_peering_connections_lookup" {
  for_each = var.core_remote_peering_connections_lookup

  compartment_id = each.value.compartment_id
  drg_id         = each.value.drg_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

