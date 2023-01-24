module "subnet_network_security_group_association" {
  source  = "sironite/subnet_network_security_group_association/azurerm"
  version = "x.x.x"


  network_security_group_id = var.network_security_group_id
  subnet_id                 = var.subnet_id
}
