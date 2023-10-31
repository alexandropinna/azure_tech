// This file defines the Virtual Network module.
// It creates a single virtual network based on the input variables provided.

resource "azurerm_virtual_network" "vnet" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
}
