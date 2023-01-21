locals {
  network_security_group_id = format("/subscriptions/%s/resourceGroups/%s/providers/Microsoft.Network/networkSecurityGroups/%s", data.azurerm_subscription.current.subscription_id, var.nsg_resource_group_name, coalesce(var.network_security_group_name, "fake"))
  subnet_id = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/resourceGroups/${var.resource_group_name}/providers/Microsoft.Network/virtualNetworks/${var.virtual_network_name}/subnets/${coalesce(var.subnet_name)}"
}