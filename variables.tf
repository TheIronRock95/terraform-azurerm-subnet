variable "azure_location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "name" {
  description = "The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}
variable "virtual_network_name" {
  description = "Virtual network name"
  type        = string
}
variable "address_prefixes" {
  description = "The address prefix list to use for the subnet."
  type        = list(string)
}
variable "service_endpoints" {
  description = "The list of Service endpoints to associate with the subnet."
  type        = list(string)
  default     = []
}
variable "service_endpoint_policy_ids" {
  description = "The list of IDs of Service Endpoint Policies to associate with the subnet."
  type        = list(string)
  default     = null
}
variable "private_endpoint_network_policies_enabled" {
  description = "Enable or disable network policies for the Private Endpoint on the subnet."
  type        = bool
  default     = null
}
variable "private_link_service_network_policies_enabled" {
  description = "Enable or disable network policies for the Private Link Service on the subnet."
  type        = bool
  default     = null
}

variable "delegation" {
  description = <<EOD
Configuration delegations on subnet
object({
  name = object({
    name = string,
    actions = list(string)
  })
})
EOD
  type        = map(list(any))
  default     = {}
}