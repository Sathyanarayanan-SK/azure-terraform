variable "firewall_name" {
    description = "name of firewall"
    default = "testFW"
}

variable "location" {
    description = "name of location"
    default = "Central india"
  
}
variable "resource_group_name" {
  default = "Terraform-rg"
}
variable "sku_name" {
    default = "AZFW_VNet"
  
}
variable "sku_tier" {
    default = "Standard"
  
}
variable "vnetname" {
    default = "vnettest"
  
}
variable "fname" {
    default = "firewalltest"
  
}
variable "pubipname" {
    default = "firewallip"

}
