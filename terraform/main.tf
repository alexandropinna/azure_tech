// Reference the resource_group module to create a resource group
module "resource_group" {
  source   = "./modules/resource_group"  // Path to the resource_group module
  name     = var.name                    // Variable for the name of the resource group
  location = var.location                // Variable for the location of the resource group
}

// Reference the network_interfaces module to create network interfaces
module "network_interfaces" {
  source                    = "./modules/network_interfaces"
  names                     = var.network_interface_names
  location                  = var.location
  resource_group_name       = module.resource_group.name
  subnet_id                 = module.subnet.subnet_id
  private_ip_address_allocation = var.private_ip_address_allocation
}

// Reference the virtual_network module to create a virtual network
module "virtual_network" {
  source              = "./modules/virtual_network"
  name                = var.virtual_network_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  address_space       = var.address_space
}

// Reference the subnet module to create a subnet
module "subnet" {
  source              = "./modules/subnet"
  name                = var.subnet_name
  resource_group_name = module.resource_group.name
  virtual_network_name= module.virtual_network.vnet_name
  address_prefixes    = var.address_prefixes
}

// Reference the maintenance_configuration module to create a maintenance configuration
module "maintenance_configuration" {
  source              = "./modules/maintenance_configuration"
  name                = var.maintenance_config_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  scope               = var.scope
  tags                = var.tags
}

// Reference the windows_virtual_machines module to create Windows VMs
module "windows_virtual_machines" {
  source              = "./modules/windows_virtual_machines"
  vm_details          = var.vm_details
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [module.network_interfaces.network_interface_ids[0], module.network_interfaces.network_interface_ids[1]]
}

// Reference the azure_defender module to configure Azure Defender
module "azure_defender" {
  source        = "./modules/azure_defender"
  tier          = var.tier
  resource_type = var.resource_type
}



// Reference the policy_definitions module to create policy definitions
module "policy_definitions" {
  source                       = "./modules/policy_definitions"
  autopatching_policy_name     = var.autopatching_policy_name
  policy_type                  = var.policy_type
  mode                         = var.mode
  autopatching_policy_display_name = var.autopatching_policy_display_name
  autopatching_policy_rule     = var.autopatching_policy_rule
  defender_policy_name         = var.defender_policy_name
  defender_policy_display_name = var.defender_policy_display_name
  defender_policy_rule         = var.defender_policy_rule
}

