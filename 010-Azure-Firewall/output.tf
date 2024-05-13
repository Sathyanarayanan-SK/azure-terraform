output "azure_firewall_info" {
  description = "Information about the deployed Azure Firewall"
  value = {
    name               = azurerm_firewall.firewalltest.name
    id                 = azurerm_firewall.firewalltest.id
    public_ip_address  = azurerm_public_ip.EIP.ip_address
    subnet_id          = azurerm_subnet.firewallsubnet.id
    virtual_network_id = azurerm_virtual_network.vnet.id
  }
}
