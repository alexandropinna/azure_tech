// This file defines the outputs of the Azure Defender module.
// It outputs the tier and resource type of the configured Azure Defender.

output "defender_tier" {
  description = "The pricing tier of Azure Defender."
  value       = azurerm_security_center_subscription_pricing.defender.tier
}

output "defender_resource_type" {
  description = "The type of resource for which Azure Defender is enabled."
  value       = azurerm_security_center_subscription_pricing.defender.resource_type
}
