module "subnet" {
  source  = "sironite/subnet/azurerm"
  version = "x.x.x"

  for_each = var.subnet_config

  azure_location       = var.azure_location
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  subnet_name          = each.value.subnet_name
  address_prefixes     = each.value.address_prefixes

  nsg_resource_group_name = each.value.nsg_resource_group_name
  network_security_group_name = each.value.network_security_group_name
}