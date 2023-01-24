module "subnet_terraform-azurerm-subnet_network_security_group_association" {
  source  = "sironite/subnet/azurerm//modules/terraform-azurerm-subnet_network_security_group_association"
  version = "x.x.x"

  subnet_id                   = var.subnet_id
  network_security_group_id   = var.network_security_group_id
}


