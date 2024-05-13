variable "resource_group_name" {  # Define a variable for the name of the resource group
    default = "Terraform-RG"   # Set a default value for the resource group name
}

variable "resource_group_location" {  # Define a variable for the location of the resource group
    default = "Central India"  # Set a default value for the resource group location
}

variable "express_route_circuit_name" {  # Define a variable for the name of the ExpressRoute circuit
    description = "Name of the Azure ExpressRoute circuit"  # Provide a description for the variable
    default = "test-tf"  # Set a default value for the ExpressRoute circuit name
}

variable "express_route_circuit_sku" {  # Define a variable for the SKU (pricing tier) of the ExpressRoute circuit
    description = "Standard/local/premium"  # Provide a description for the variable
    default = "Standard"  # Set a default value for the SKU
}

variable "service_provider_name" {  # Define a variable for the service provider of the ExpressRoute circuit
    description = "Vodafone"  # Provide a description for the variable
    default = "Vodafone"  # Set a default value for the service provider
}

variable "peering_location" {  # Define a variable for the peering location of the ExpressRoute circuit
    description = "dallas"  # Provide a description for the variable
    default = "dallas"  # Set a default value for the peering location
}

variable "billing-model" {  # Define a variable for the billing model of the ExpressRoute circuit
    description = "MeteredData/Unlimited"  # Provide a description for the variable
    default = "MeteredData"  # Set a default value for the billing model
}

variable "bandwidth_in_mbps" {  # Define a variable for the bandwidth (in Mbps) of the ExpressRoute circuit
    default = "50"  # Set a default value for the bandwidth
}
