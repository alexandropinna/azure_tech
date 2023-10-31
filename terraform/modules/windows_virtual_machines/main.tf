// This file defines the Windows Virtual Machines module.
// It creates multiple Windows VMs based on the input variables provided.

resource "azurerm_windows_virtual_machine" "vm" {
  count               = length(var.vm_details)
  name                = var.vm_details[count.index]["name"]
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_details[count.index]["size"]
  admin_username      = var.admin_username
  admin_password      = var.admin_password

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }

  network_interface_ids = [var.network_interface_ids[count.index]]

  tags = var.vm_details[count.index]["tags"]
}
