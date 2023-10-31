variable "name" {
  description = "The name of the resource."
  type        = string
}

variable "location" {
  description = "The location of the resource."
  type        = string
}

variable "network_interface_names" {
  description = "A list of names."
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the resource."
  type        = string
}

variable "private_ip_address_allocation" {
  description = "The private IP address allocation method."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the resource."
  type        = string
}

variable "address_space" {
  description = "The address space of the virtual network."
  type        = list(string)
}

variable "address_prefixes" {
  description = "The address prefixes of the subnet."
  type        = list(string)
}

variable "maintenance_config_name" {
  description = "The name of the resource."
  type        = string
}

variable "scope" {
  description = "The scope of the maintenance configuration."
  type        = string
}

variable "tags" {
  description = "A map of tags to add to the resource."
  type        = map(string)
}

variable "vm_details" {
  description = "Details for the VMs."
  type        = any
}

variable "admin_username" {
  description = "The admin username for the VMs."
  type        = string
}

variable "admin_password" {
  description = "The admin password for the VMs."
  type        = string
}

variable "tier" {
  description = "The tier of the Azure Defender."
  type        = string
}

variable "resource_type" {
  description = "The resource type for Azure Defender pricing."
  type        = string
}

variable "autopatching_policy_name" {
  description = "The name of the autopatching policy."
  type        = string
}

variable "policy_type" {
  description = "The policy type."
  type        = string
}

variable "mode" {
  description = "The policy mode."
  type        = string
}

variable "autopatching_policy_display_name" {
  description = "The display name of the autopatching policy."
  type        = string
}

variable "autopatching_policy_rule" {
  description = "The rule for the autopatching policy."
  type        = string
}

variable "defender_policy_name" {
  description = "The name of the defender policy."
  type        = string
}

variable "defender_policy_display_name" {
  description = "The display name of the defender policy."
  type        = string
}

variable "defender_policy_rule" {
  description = "The rule for the defender policy."
  type        = string
}
