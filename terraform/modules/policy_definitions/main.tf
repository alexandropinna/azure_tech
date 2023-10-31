// This file defines the Policy Definitions module.
// It creates policy definitions based on the input variables provided.

resource "azurerm_policy_definition" "autopatching_policy" {
  name         = var.autopatching_policy_name
  policy_type  = var.policy_type
  mode         = var.mode
  display_name = var.autopatching_policy_display_name

  policy_rule = var.autopatching_policy_rule
}

resource "azurerm_policy_definition" "defender_policy" {
  name         = var.defender_policy_name
  policy_type  = var.policy_type
  mode         = var.mode
  display_name = var.defender_policy_display_name

  policy_rule = var.defender_policy_rule
}
