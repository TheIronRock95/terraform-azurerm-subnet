variable "azure_location" {
  description = "Azure location to use"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the subnet. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "virtual_network_name" {
  description = "The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "subnet_config" {
  description = "Config for multiple subnet"
  type = map
  default = {
    "multiple-subnet-example" = {
        subnet_name = "myfirstsubnet"
        address_prefixes = ["10.1.0.0/27"]
        network_security_group_name = "myfirstnsg"
        nsg_resource_group_name = "myfirstrg"
    },
    "multiple-subnet-example2" = {
        subnet_name = "mysecondsubnet"
        address_prefixes = ["10.1.0.32/27"]
        network_security_group_name = "mysecondnsg"
        nsg_resource_group_name = "mysecondrg"
    },
  }
}