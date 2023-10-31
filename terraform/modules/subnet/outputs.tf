// This file defines the outputs of the Subnet module.
// It outputs the ID of the created subnet.

output "subnet_id" {
  description = "The ID of the created subnet."
  value       = azurerm_subnet.subnet.id
}
