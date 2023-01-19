resource "azurerm_subnet" "this" {
  count = length(var.name)

  name                 = var.name[count.index]
  resource_group_name  = element(var.resource_group_name[*], count.index)
  virtual_network_name = element(var.virtual_network_name[*], count.index)
  address_prefixes     = [element(var.address_prefixes[*], count.index)]

  service_endpoints           = var.service_endpoints
  service_endpoint_policy_ids = var.service_endpoint_policy_ids

  delegation {
    name = var.service_delegation_name

    service_delegation {
      name    = var.service_delegation_name
      actions = var.service_delegation_actions
    }
  }

  private_endpoint_network_policies_enabled     = var.private_endpoint_network_policies_enabled
  private_link_service_network_policies_enabled = var.private_link_service_network_policies_enabled
}

module "subnet_network_security_group_association" {
  source = "./modules/terraform-azurerm-subnet_network_security_group_association"

  use_nsg_association       = false
  network_security_group_id = var.network_security_group_id
  subnet_id                 = azurerm_subnet.this.*.id
}

module "subnet_association" {
  source = "./modules/terraform-azurerm-subnet_route_table_association"

  use_route_association = true
  subnet_id             = element(var.subnet_id[*], count.index)
  route_table_id        = element(var.route_table_id[*], count.index)
}
