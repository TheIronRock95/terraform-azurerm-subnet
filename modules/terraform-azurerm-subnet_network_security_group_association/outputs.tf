output "azurerm_subnet_network_security_group_association_id" {
  description = "The ID of the Subnet."
  sensitive   = false
  value       = try(azurerm_subnet_network_security_group_association.this.*.id)
}