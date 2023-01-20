resource "azurerm_subnet" "this" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes

  service_endpoints           = var.service_endpoints
  service_endpoint_policy_ids = var.service_endpoint_policy_ids

  dynamic "delegation" {
    for_each = var.subnet_delegation
    content {
      name = delegation.key
      dynamic "service_delegation" {
        for_each = toset(delegation.value)
        content {
          name    = service_delegation.value.name
          actions = service_delegation.value.actions
        }
      }
    }
  }

  private_endpoint_network_policies_enabled     = var.private_endpoint_network_policies_enabled
  private_link_service_network_policies_enabled = var.private_link_service_network_policies_enabled
}

module "subnet_network_security_group_association" {
  source = "./modules/terraform-azurerm-subnet_network_security_group_association"
  use_nsg_association = false
  network_security_group_id = var.network_security_group_id
  subnet_id                 = azurerm_subnet.this.id
}

# module "subnet_route_table_association" {
#   source = "./modules/terraform-azurerm-subnet_route_table_association"

#   use_route_association = true
#   route_table_id        = var.route_table_id
#   subnet_id             = azurerm_subnet.this.id
# }
