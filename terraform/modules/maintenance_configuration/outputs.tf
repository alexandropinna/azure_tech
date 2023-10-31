// This file defines the outputs of the Maintenance Configuration module.
// It outputs the ID of the created maintenance configuration.

output "maintenance_configuration_id" {
  description = "The ID of the created maintenance configuration."
  value       = azurerm_maintenance_configuration.maintenance.id
}
