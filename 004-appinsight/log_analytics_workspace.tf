resource "azurerm_log_analytics_workspace" "example" {  # Define an Azure Log Analytics Workspace resource
  name                = var.log_analytics_workspacename  # Set the name of the Log Analytics Workspace using the provided variable
  location            = var.resource_group_location      # Set the location of the resource group where the Log Analytics Workspace will be created
  resource_group_name = var.resource_group_name           # Set the name of the resource group where the Log Analytics Workspace will be created
  sku                 = var.sku                          # Set the SKU (pricing tier) of the Log Analytics Workspace
  retention_in_days   = var.retention_in_days            # Set the data retention period (in days) for the Log Analytics Workspace
}


