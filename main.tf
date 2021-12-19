resource "unifi_network" "network" {
  for_each           = var.network
  name               = each.value.name
  purpose            = each.value.purpose
  subnet             = each.value.subnet
  vlan_id            = each.value.vlan_id
  dhcp_start         = each.value.dhcp_start != null ? each.value.dhcp_start : null
  dhcp_stop          = each.value.dhcp_stop != null ? each.value.dhcp_stop : null
  dhcp_dns           = each.value.dhcp_dns != [""] ? each.value.dhcp_dns : [""]
  dhcp_enabled       = each.value.dhcp_enabled != null ? each.value.dhcp_enabled : null
  dhcp_lease         = each.value.dhcp_lease != null ? each.value.dhcp_lease : null
  site               = each.value.site != null ? each.value.site : "default"
  network_group      = each.value.network_group != null ? each.value.network_group : null
}
