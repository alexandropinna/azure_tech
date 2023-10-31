// This file defines the Network Interfaces module.
// It creates multiple network interfaces based on the input variables provided.

resource "azurerm_network_interface" "nic" {
  count               = length(var.names)
  name                = var.names[count.index]
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "${var.names[count.index]}-config"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}
