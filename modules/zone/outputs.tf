output "id" {
  description = "The zone ID"
  value       = azurerm_dns_zone.main.id
}

output "name" {
  description = "The zone name"
  value       = azurerm_dns_zone.main.name
}

output "group" {
  description = "The zone group"
  value       = azurerm_dns_zone.main.resource_group_name
}

output "name_servers" {
  description = "The zone name servers"
  value       = azurerm_dns_zone.main.name_servers
}
