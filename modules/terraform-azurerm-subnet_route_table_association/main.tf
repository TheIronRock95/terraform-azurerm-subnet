resource "azurerm_subnet_route_table_association" "this" {
  count = var.use_route_association == true ? length(var.route_table_id) : 0

  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id
}
