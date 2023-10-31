// This file defines the outputs of the Virtual Network module.
// It outputs the name of the created virtual network.

output "vnet_name" {
  description = "The name of the created virtual network."
  value       = azurerm_virtual_network.vnet.name
}
