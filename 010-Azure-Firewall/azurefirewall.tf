# Define virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetname  # Name of the virtual network
  address_space       = var.vnetrange  # Address space for the virtual network
  location            = var.location  # Location of the virtual network
  resource_group_name = var.resource_group_name  # Resource group for the virtual network
}

# Define subnet for firewall
resource "azurerm_subnet" "firewallsubnet" {
  name                 = var.fname  # Name of the subnet
  resource_group_name  = var.resource_group_name  # Resource group for the subnet
  virtual_network_name = azurerm_virtual_network.vnet.name  # Name of the virtual network where the subnet is located
  address_prefixes     = var.firewallsubnetrange  # Address prefix for the subnet
}

# Define public IP address
resource "azurerm_public_ip" "EIP" {
  name                = var.pubipname  # Name of the public IP address
  location            = var.location  # Location of the public IP address
  resource_group_name = var.resource_group_name  # Resource group for the public IP address
  allocation_method   = "Static"  # Allocation method for the public IP address
  sku                 = "Standard"  # SKU for the public IP address
}

# Define Azure Firewall
resource "azurerm_firewall" "firewalltest" {
  name                = var.firewall_name  # Name of the Azure Firewall
  location            = var.location  # Location of the Azure Firewall
  resource_group_name = var.resource_group_name  # Resource group for the Azure Firewall
  sku_name            = var.sku_name  # SKU name for the Azure Firewall
  sku_tier            = var.sku_tier  # SKU tier for the Azure Firewall

  # Define IP configuration for the Azure Firewall
  ip_configuration {
    name                 = "configuration"  # Name of the IP configuration
    subnet_id            = azurerm_subnet.firewallsubnet.id  # ID of the subnet where the Azure Firewall is deployed
    public_ip_address_id = azurerm_public_ip.EIP.id  # ID of the public IP address associated with the Azure Firewall
  }
}
