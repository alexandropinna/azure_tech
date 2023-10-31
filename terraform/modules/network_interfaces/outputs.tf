// This file defines the outputs of the Network Interfaces module.

output "network_interface_ids" {
  description = "The IDs of the created network interfaces."
  value       = [for nic in azurerm_network_interface.nic : nic.id]
}
