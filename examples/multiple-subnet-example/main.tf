module "subnet" {
  source  = "sironite/subnet/azurerm"
  version = "x.x.x"

  for_each = var.subnet_config

  azure_location       = var.azure_location
  resource_group_name  = module.resourcegroup.resource_group_name[4]
  virtual_network_name = module.virtualnetwork.virtual_network_name
  subnet_name          = each.value.subnet_name
  address_prefixes     = each.value.address_prefixes

  nsg_resource_group_name = each.value.nsg_resource_group_name
  network_security_group_name = each.value.network_security_group_name
}