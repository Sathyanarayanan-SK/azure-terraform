resource "azurerm_application_insights" "example" {  # Define an Azure Application Insights resource
  name                = var.apiname                   # Set the name of the Application Insights resource using the provided variable
  location            = var.resource_group_location # Set the location of the resource group where the Application Insights resource will be created
  resource_group_name = var.resource_group_name      # Set the name of the resource group where the Application Insights resource will be created
  application_type    = "web"                        # Define the application type as "web"
  workspace_id = azurerm_log_analytics_workspace.example.id  # Associate the Application Insights resource with an existing Log Analytics workspace using its ID
}