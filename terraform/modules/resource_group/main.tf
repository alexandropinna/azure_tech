// This file defines the Azure Resource Group module.
// It creates a single resource group based on the input variables provided.

resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
}
