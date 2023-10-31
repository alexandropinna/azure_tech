// This file defines the variables required by the Network Interfaces module.

variable "names" {
  description = "A list of names for the network interfaces."
  type        = list(string)
}

variable "location" {
  description = "The Azure region where the network interfaces should be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet."
  type        = string
}

variable "private_ip_address_allocation" {
  description = "Specifies the allocation method for the private IP address."
  type        = string
  default     = "Dynamic"
}
