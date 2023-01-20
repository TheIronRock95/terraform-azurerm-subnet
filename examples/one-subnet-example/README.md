# Terraform module | AzureRM - Subnet

This Terraform module is designed to create a subnet for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`subnet`

```hcl

module "subnet" {
  source  = "sironite/subnet/azurerm"
  version = "x.x.x"

  subnet_name          = var.value.subnet_name
  azure_location       = var.azure_location
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes
}
```

## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
