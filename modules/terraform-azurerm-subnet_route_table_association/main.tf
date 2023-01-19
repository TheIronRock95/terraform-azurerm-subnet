resource "azurerm_subnet_route_table_association" "this" {
  count = var.use_route_association == true ? length(var.route_table_id) : 0

  subnet_id      = element(var.subnet_id[*], count.index)
  route_table_id = element(var.route_table_id[*], count.index)
}
