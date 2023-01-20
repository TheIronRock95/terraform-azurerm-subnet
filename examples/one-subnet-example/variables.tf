variable "azure_location" {
  description = "Azure location to use"
  type        = string
}
variable "subnet_name" {
  description = "The name of the subnet. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "address_prefixes" {
  description = "The address prefixes to use for the subnet."
  type        = list(string)
  sensitive   = false
}