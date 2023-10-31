// This file defines the Maintenance Configuration module.
// It creates a single maintenance configuration based on the input variables provided.

resource "azurerm_maintenance_configuration" "maintenance" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  scope               = var.scope

  tags = var.tags
}
