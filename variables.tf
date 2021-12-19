variable "network" {
  type = map(object({
    name                = string
    purpose             = string
    subnet              = string
    vlan_id             = number
    dhcp_start          = optional(string)
    dhcp_stop           = optional(string)
    dhcp_dns            = optional(list(string))
    dhcp_enabled        = optional(bool)
    site                = optional(string)
    dhcp_lease          = optional(number)
    domain_name         = optional(string)
    network_group       = optional(string)
  }))
  description = "(Required) Map containing the configuration for the Unifi networks"
}

