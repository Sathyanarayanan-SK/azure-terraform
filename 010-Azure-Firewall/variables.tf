# Variables for Azure Firewall configuration
variable "firewall_name" {
    description = "Name of the Azure Firewall"  # Description of the variable
    default = "testFW"  # Default value for the variable
}

variable "location" {
    description = "Location for Azure resources"  # Description of the variable
    default = "Central India"  # Default value for the variable
}

variable "resource_group_name" {
    default = "Terraform-rg"  # Default value for the variable
}

variable "sku_name" {
    default = "AZFW_VNet"  # Default value for the variable
}

variable "sku_tier" {
    default = "Standard"  # Default value for the variable
}

variable "vnetname" {
    default = "vnettest"  # Default value for the variable
}

variable "fname" {
    default = "AzureFirewallSubnet"  # Default value for the variable
}

variable "pubipname" {
    default = "firewallip"  # Default value for the variable
}
variable "vnetrange" {
    defaults = ["10.0.0.0/16"]
}
variable "firewallsubnetrange" {
    defaults = ["10.0.2.0/16"]
}
