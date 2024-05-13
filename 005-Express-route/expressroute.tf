resource "azurerm_express_route_circuit" "example" {  # Define an Azure ExpressRoute circuit resource
  name                  = var.express_route_circuit_name  # Set the name of the ExpressRoute circuit
  resource_group_name   = var.resource_group_name  # Specify the resource group where the ExpressRoute circuit will be created
  location              = var.resource_group_location  # Set the location of the resource group
  service_provider_name = var.service_provider_name  # Specify the service provider for the ExpressRoute circuit
  peering_location      = var.peering_location  # Set the peering location for the ExpressRoute circuit
  bandwidth_in_mbps     = var.bandwidth_in_mbps  # Specify the bandwidth in megabits per second (Mbps) for the ExpressRoute circuit

  sku {  # Define the SKU (pricing tier) for the ExpressRoute circuit
    tier   = var.express_route_circuit_sku  # Set the tier of the SKU
    family = var.billing-model  # Set the billing model family for the SKU
  }

  tags = {  # Define tags for the ExpressRoute circuit resource
    environment = "test"  # Set the environment tag to "test"
  }
}
