variable "azure_location" {
  description = "Azure location to use"
  type        = string
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