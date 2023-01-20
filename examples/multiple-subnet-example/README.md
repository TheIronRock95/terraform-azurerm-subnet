# Terraform module | AzureRM - Subnet

This Terraform module is designed to create a subnet for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`subnet`

```hcl

module "subnet" {
  source  = "TheIronRock95/subnet/azurerm"
  version = "x.x.x"

  for_each = var.subnet_config

  subnet_name          = each.value.subnet_name
  azure_location       = var.azure_location
  resource_group_name  = module.resourcegroup.resource_group_name[4]
  virtual_network_name = module.virtualnetwork.virtual_network_name
  address_prefixes     = each.value.address_prefixes
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
