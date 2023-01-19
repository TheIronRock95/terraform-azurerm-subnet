output "azurerm_subnet_route_table_association_id" {
  description = "The ID of the Subnet."
  sensitive   = false
  value       = try(azurerm_subnet_route_table_association.this.*.id)
}