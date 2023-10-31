// This file defines the outputs of the Policy Definitions module.
// It outputs the IDs of the created policy definitions.

output "autopatching_policy_id" {
  description = "The ID of the Auto Patching policy."
  value       = azurerm_policy_definition.autopatching_policy.id
}

output "defender_policy_id" {
  description = "The ID of the Defender policy."
  value       = azurerm_policy_definition.defender_policy.id
}
