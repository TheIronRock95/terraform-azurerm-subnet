<!-- BEGIN_TF_DOCS -->
 # Azure subnet route table association
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/modules/TheIronRock95/resourcegroup/azurerm/latest)

# Usage - Module

```hcl
module "subnet_route_table_association" {
  source  = "TheIronRock95/XXX/azurerm"
  version = "x.x.x"

  use_route_association = true
  route_table_id        = var.route_table_id
  subnet_id             = var.subnet_id
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
| [azurerm_subnet_route_table_association.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_route_table_association) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| route\_table\_id | The ID of the Route Table which should be associated with the Subnet | `string` | yes |
| subnet\_id | The ID of the Subnet. Changing this forces a new resource to be created. | `string` | yes |
| use\_route\_association | Whether to implement route table association | `bool` | yes |

## Outputs

| Name | Description |
|------|-------------|
| azurerm\_subnet\_route\_table\_association\_id | The ID of the Subnet. |

## Related documentation
<!-- END_TF_DOCS -->