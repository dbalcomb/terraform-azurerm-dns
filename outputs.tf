output "name" {
  description = "The resource name"
  value       = azurerm_resource_group.main.name
}

output "region" {
  description = "The resource region"
  value       = azurerm_resource_group.main.location
}
