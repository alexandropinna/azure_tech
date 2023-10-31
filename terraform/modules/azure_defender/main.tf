// This file defines the Azure Defender module.
// It configures Azure Defender for Virtual Machines based on the input variables provided.

resource "azurerm_security_center_subscription_pricing" "defender" {
  tier          = var.tier
  resource_type = var.resource_type
}
