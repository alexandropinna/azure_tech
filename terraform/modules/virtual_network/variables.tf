// This file defines the variables required by the Virtual Network module.

variable "name" {
  description = "The name of the virtual network."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where the virtual network should be created."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}
