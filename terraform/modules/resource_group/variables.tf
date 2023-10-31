// This file defines the variables required by the Azure Resource Group module.

variable "name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where the resource group should be created."
  type        = string
}
