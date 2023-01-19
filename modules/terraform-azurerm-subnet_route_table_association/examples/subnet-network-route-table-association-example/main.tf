module "subnet_route_table_association" {
  source  = "TheIronRock95/XXX/azurerm"
  version = "x.x.x"

  use_route_association = true
  route_table_id        = var.route_table_id
  subnet_id             = var.subnet_id
}


