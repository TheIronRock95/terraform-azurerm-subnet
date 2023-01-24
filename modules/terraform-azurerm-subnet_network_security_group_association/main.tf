resource "azurerm_subnet_network_security_group_association" "this" {
  count = var.network_security_group_name == null ? 0 : 1

  subnet_id                 = var.subnet_id
  network_security_group_id = var.network_security_group_id
}
