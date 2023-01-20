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
