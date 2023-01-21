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

  azure_location       = var.azure_location
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  subnet_name          = var.subnet_name
  address_prefixes     = var.address_prefixes

  nsg_resource_group_name = var.nsg_resource_group_name
  network_security_group_name = var.network_security_group_name
}
```

## Authors

The module is maintained by [Wouter Damman](https://github.com/TheIronRock95)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
