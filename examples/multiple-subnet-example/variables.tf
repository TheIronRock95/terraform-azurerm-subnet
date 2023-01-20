variable "azure_location" {
  description = "Azure location to use"
  type        = string
}
variable "subnet_config" {
  description = "Config for multiple subnet"
  type = map
  default = {
    "DMN-WE-P-SNET-TERRAFORM" = {
        subnet_name = "DMN-WE-P-SNET-TERRAFORM"
        address_prefixes = ["10.1.0.0/27"]
    }
    "DMN-WE-A-SNET-TERRAFORM" = {
        subnet_name = "DMN-WE-A-SNET-TERRAFORM"
        address_prefixes = ["10.1.0.32/27"]
    },
    "DMN-WE-T-SNET-TERRAFORM" = {
        subnet_name = "DMN-WE-T-SNET-TERRAFORM"
        address_prefixes = ["10.1.0.64/27"]
    },
    "DMN-WE-D-SNET-TERRAFORM" = {
        subnet_name = "DMN-WE-D-SNET-TERRAFORM"
        address_prefixes = ["10.1.0.96/27"]
    },
      "DMN-WE-MGMT-SNET-TERRAFORM" = {
        subnet_name = "DMN-WE-MGMT-SNET-TERRAFORM"
        address_prefixes = ["10.1.0.128/25"]
    }
  }
}