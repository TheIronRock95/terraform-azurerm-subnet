<!-- BEGIN_TF_DOCS -->
 # Azure subnet network security group association
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/modules/TheIronRock95/resourcegroup/azurerm/latest)

# Usage - Module

```hcl
module "subnet_terraform-azurerm-subnet_network_security_group_association" {
  source  = "sironite/subnet/azurerm//modules/terraform-azurerm-subnet_network_security_group_association"
  version = "x.x.x"

  subnet_id                   = var.subnet_id
  network_security_group_id   = var.network_security_group_id
  network_security_group_name = var.network_security_group_name
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
| network\_security\_group\_name | The name of the network security group | `string` | no |

## Outputs

No outputs.

## Related documentation
<!-- END_TF_DOCS -->