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

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_subnet.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| address\_prefixes | The address prefix list to use for the subnet. | `list(string)` | yes |
| azure\_location | The location/region where the virtual network is created. Changing this forces a new resource to be created. | `string` | yes |
| name | The name of the virtual network. Changing this forces a new resource to be created. | `string` | yes |
| resource\_group\_name | Resource group name | `string` | yes |
| virtual\_network\_name | Virtual network name | `string` | yes |
| delegation | Configuration delegations on subnet<br>object({<br>  name = object({<br>    name = string,<br>    actions = list(string)<br>  })<br>}) | `map(list(any))` | no |
| private\_endpoint\_network\_policies\_enabled | Enable or disable network policies for the Private Endpoint on the subnet. | `bool` | no |
| private\_link\_service\_network\_policies\_enabled | Enable or disable network policies for the Private Link Service on the subnet. | `bool` | no |
| service\_endpoint\_policy\_ids | The list of IDs of Service Endpoint Policies to associate with the subnet. | `list(string)` | no |
| service\_endpoints | The list of Service endpoints to associate with the subnet. | `list(string)` | no |

## Outputs

No outputs.

## Related documentation
<!-- END_TF_DOCS -->