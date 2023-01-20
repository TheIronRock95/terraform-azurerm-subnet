module "subnet" {
  source  = "sironite/subnet/azurerm"
  version = "x.x.x"

  subnet_name          = var.value.subnet_name
  azure_location       = var.azure_location
  resource_group_name  = module.resourcegroup.resource_group_name[4]
  virtual_network_name = module.virtualnetwork.virtual_network_name
  address_prefixes     = var.address_prefixes
}
