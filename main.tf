resource "azurerm_subnet" "this" {
  name                 = var.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes

  service_endpoints           = var.service_endpoints
  service_endpoint_policy_ids = var.service_endpoint_policy_ids

  dynamic "delegation" {
    for_each = var.delegation
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

# module "subnet_association" {
#   source  = "module/terraform-azurerm-subnet_network_security_group_association"

# }

# module "subnet_association" {
#   source  = "module/terraform-azurerm-subnet_route_table_association"

# }