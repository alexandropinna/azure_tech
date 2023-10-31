// This file defines the outputs of the Azure Resource Group module.
// It outputs the name and location of the created resource group.

output "name" {
  description = "The name of the created resource group."
  value       = azurerm_resource_group.rg.name
}

output "location" {
  description = "The location of the created resource group."
  value       = azurerm_resource_group.rg.location
}
