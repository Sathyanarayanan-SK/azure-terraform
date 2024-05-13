output "instrumentation_key" {
  value = azurerm_application_insights.example.instrumentation_key
   sensitive = true
}
 
output "app_id" {
  value = azurerm_application_insights.example.app_id
   sensitive = true
}
output "connection_string" {
    value = azurerm_application_insights.example.connection_string
     sensitive = true
}
output "id" {
    value = azurerm_application_insights.example.id
     sensitive = true
}