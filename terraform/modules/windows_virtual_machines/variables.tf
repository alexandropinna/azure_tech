// This file defines the variables required by the Windows Virtual Machines module.

variable "vm_details" {
  description = "A list of maps, each containing the details for a VM."
  type = list(object({
    name = string
    size = string
    tags = map(string)
  }))
}


variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where the VMs should be created."
  type        = string
}

variable "admin_username" {
  description = "The username of the local administrator used for the VMs."
  type        = string
}

variable "admin_password" {
  description = "The password of the local administrator used for the VMs."
  type        = string
}

variable "network_interface_ids" {
  description = "A list of network interface IDs, one for each VM."
  type        = list(string)
}
