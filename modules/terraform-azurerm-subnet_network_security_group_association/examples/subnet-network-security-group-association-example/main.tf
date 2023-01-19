module "resource_group" {
  source  = "TheIronRock95/XXX/XXX/azurerm"
  version = "x.x.x"

  use_nsg_association       = true
  network_security_group_id = var.network_security_group_id
  subnet_id                 = var.subnet_id
}
