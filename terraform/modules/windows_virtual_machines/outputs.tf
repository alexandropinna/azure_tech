// This file defines the outputs of the Windows Virtual Machines module.
// It outputs the IDs of the created VMs.

output "vm_ids" {
  description = "The IDs of the created VMs."
  value       = [for vm in azurerm_windows_virtual_machine.vm : vm.id]
}
