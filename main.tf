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

# module "subnet_association" {
#   source  = "module/terraform-azurerm-subnet_network_security_group_association"

# }

# module "subnet_association" {
#   source  = "module/terraform-azurerm-subnet_route_table_association"

# }
