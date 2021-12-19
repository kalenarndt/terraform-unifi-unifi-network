<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0 |
| <a name="requirement_unifi"></a> [unifi](#requirement\_unifi) | >=0.34.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_unifi"></a> [unifi](#provider\_unifi) | 0.34.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [unifi_network.network](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_network"></a> [network](#input\_network) | (Required) Map containing the configuration for the Unifi networks | <pre>map(object({<br>    name                = string<br>    purpose             = string<br>    subnet              = string<br>    vlan_id             = number<br>    dhcp_start          = optional(string)<br>    dhcp_stop           = optional(string)<br>    dhcp_dns            = optional(list(string))<br>    dhcp_enabled        = optional(bool)<br>    site                = optional(string)<br>    dhcp_lease          = optional(number)<br>    domain_name         = optional(string)<br>    network_group       = optional(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_networks"></a> [networks](#output\_networks) | Output of the entire network resource block. Filter by key when using with other objects |
<!-- END_TF_DOCS -->