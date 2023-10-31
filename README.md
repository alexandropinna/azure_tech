# Azure Infrastructure Deployment with Terraform

This repository contains Terraform code for deploying a specific Azure infrastructure as per technical test requirements. The infrastructure includes virtual machines, network configurations, maintenance configurations, and Azure policies for auto-patching and enabling Defender on virtual machines.

## Resources Created

1. **Resource Group**:
   - A resource group named `example-resources` in the East US region.

2. **Virtual Network and Subnet**:
   - A virtual network named `example-vnet` with address space `10.0.0.0/16`.
   - A subnet named `example-subnet` with address prefix `10.0.1.0/24` within the virtual network.

3. **Network Interfaces**:
   - Two network interfaces `nic-vm1` and `nic-vm2` for connecting the virtual machines to the network.

4. **Windows Virtual Machines**:
   - Two Windows virtual machines named `TESTDC01` and `TESTAPP01`.
   - VM `TESTDC01` has tags `AutoPatching=FALSE` and `Defender=TRUE`.
   - VM `TESTAPP01` has tags `AutoPatching=TRUE` and `Defender=TRUE`.

5. **Maintenance Configuration**:
   - A maintenance configuration named `example-mc` to install only Security and Critical updates on Windows Virtual Machines on the second Sunday of every month.

6. **Azure Policies**:
   - An Azure policy named `autopatching-policy` to apply the maintenance configuration to all the Virtual Machines with the tag `AutoPatching=TRUE`.
   - An Azure policy named `defender-policy` to install and enable Defender on each Virtual Machine with the tag `Defender=TRUE`.

7. **Azure Defender for Cloud**:
   - Azure Defender for Cloud is enabled for Virtual Machines with a pricing tier of "Standard".



