resource "azurerm_subnet_network_security_group_association" "this" {
  count                     = var.use_nsg_association == true ? length(var.network_security_group_id) : 0
  
  subnet_id                 = element(var.subnet_id[*], count.index)
  network_security_group_id = element(var.network_security_group_id[*], count.index)
}
