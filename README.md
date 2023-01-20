<!-- BEGIN_TF_DOCS -->
 # Azure subnet
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/modules/TheIronRock95/resourcegroup/azurerm/latest)

# Usage - Module

```hcl
module "resource_group" {
  source  = "TheIronRock95/XXX/azurerm"
  version = "x.x.x"


}

```
## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| subnet\_association | ./modules/terraform-azurerm-subnet_route_table_association | n/a |
| subnet\_network\_security\_group\_association | ./modules/terraform-azurerm-subnet_network_security_group_association | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_subnet.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| address\_prefixes | The address prefixes to use for the subnet. | `list(string)` | yes |
| azure\_location | The location/region where the virtual network is created. Changing this forces a new resource to be created. | `string` | yes |
| name | The name of the subnet. Changing this forces a new resource to be created. | `list(string)` | yes |
| resource\_group\_name | The name of the resource group in which to create the subnet. Changing this forces a new resource to be created. | `string` | yes |
| virtual\_network\_name | The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created. | `string` | yes |
| network\_security\_group\_id | The ID of the Network Security Group which should be associated with the Subnet. Changing this forces a new resource to be created. | `string` | no |
| private\_endpoint\_network\_policies\_enabled | Enable or Disable network policies for the private endpoint on the subnet. Setting this to `true` will Enable the policy and setting this to `false` will Disable the policy. Defaults to `true`. | `bool` | no |
| private\_link\_service\_network\_policies\_enabled | Enable or Disable network policies for the private link service on the subnet. Setting this to `true` will Enable the policy and setting this to `false` will Disable the policy. Defaults to `true`. | `bool` | no |
| service\_delegation\_actions | A list of Actions which should be delegated. | `list(string)` | no |
| service\_delegation\_name | The name of service to delegate to. | `string` | no |
| service\_endpoint\_policy\_ids | The list of IDs of Service Endpoint Policies to associate with the subnet. | `list(string)` | no |
| service\_endpoints | The list of Service endpoints to associate with the subnet. | `list(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| azurerm\_subnet\_address\_prefixes | The address prefixes for the subnet |
| azurerm\_subnet\_id | The subnet ID. |
| azurerm\_subnet\_name | The name of the subnet. |
| azurerm\_subnet\_resource\_group\_name | The name of the resource group in which the subnet is created in. |
| azurerm\_subnet\_virtual\_network\_name | The name of the virtual network in which the subnet is created in |

## Related documentation
<!-- END_TF_DOCS -->