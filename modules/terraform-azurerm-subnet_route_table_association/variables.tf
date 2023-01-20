variable "use_route_association" {
  description = "Whether to implement route table association"
  type        = bool
  sensitive   = false
}
variable "subnet_id" {
  description = "The ID of the Subnet. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "route_table_id" {
  description = "The ID of the Route Table which should be associated with the Subnet"
  type        = string
  sensitive   = false
}