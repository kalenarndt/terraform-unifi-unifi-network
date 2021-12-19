module "l3-network" {
  source = "github.com/kalenarndt/terraform-unifi-unifi-network"

  network = {
    "cts-app1" = {
      dhcp_dns     = ["172.16.11.2", "172.16.11.5"]
      dhcp_enabled = true
      dhcp_lease   = 86400
      dhcp_start   = "172.16.203.10"
      dhcp_stop    = "172.16.203.200"
      domain_name  = "bmrf.io"
      name         = "cts-app1"
      purpose      = "corporate"
      subnet       = "172.16.203.1/24"
      vlan_id      = 203
    }
  }
}