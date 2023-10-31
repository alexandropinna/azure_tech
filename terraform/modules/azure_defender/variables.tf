// This file defines the variables required by the Azure Defender module.

variable "tier" {
  description = "The pricing tier of Azure Defender."
  type        = string
}

variable "resource_type" {
  description = "The type of resource for which Azure Defender will be enabled."
  type        = string
}
