// This file defines the variables required by the Maintenance Configuration module.

variable "name" {
  description = "The name of the maintenance configuration."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where the maintenance configuration should be created."
  type        = string
}

variable "scope" {
  description = "The maintenance scope."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
