<!-- BEGIN_TF_DOCS -->
 # Azure subnet network security group association
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/modules/TheIronRock95/resourcegroup/azurerm/latest)

# Usage - Module

```hcl
module "resource_group" {
  source  = "TheIronRock95/XXX/XXX/azurerm"
  version = "x.x.x"

  use_nsg_association       = true
  network_security_group_id = var.network_security_group_id
  subnet_id                 = var.subnet_id
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
| [azurerm_subnet_network_security_group_association.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| network\_security\_group\_id | The ID of the Network Security Group which should be associated with the Subnet. Changing this forces a new resource to be created. | `string` | yes |
| subnet\_id | The ID of the Subnet. Changing this forces a new resource to be created. | `string` | yes |
| use\_nsg\_association | Whether to implement Network Security Group Association | `bool` | yes |

## Outputs

| Name | Description |
|------|-------------|
| azurerm\_subnet\_network\_security\_group\_association\_id | The ID of the Subnet. |

## Related documentation
<!-- END_TF_DOCS -->