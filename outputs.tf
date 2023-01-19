output "azurerm_subnet_id" {
  description = "The subnet ID."
  sensitive   = false
  value       = try(azurerm_subnet.this.*.id)
}
output "azurerm_subnet_name" {
  description = "The name of the subnet."
  sensitive   = false
  value       = try(azurerm_subnet.this.*.name)
}
output "azurerm_subnet_resource_group_name" {
  description = "The name of the resource group in which the subnet is created in."
  sensitive   = false
  value       = try(azurerm_subnet.this.*.resource_group_name)
}
output "azurerm_subnet_virtual_network_name" {
  description = "The name of the virtual network in which the subnet is created in"
  sensitive   = false
  value       = try(azurerm_subnet.this.*.virtual_network_name)
}
output "azurerm_subnet_address_prefixes" {
  description = "The address prefixes for the subnet"
  sensitive   = false
  value       = try(azurerm_subnet.this.*.address_prefixes)
}