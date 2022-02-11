output "name" {
  description = "The host name"
  value       = trimsuffix(azurerm_dns_a_record.main.fqdn, ".")
}

output "zone" {
  description = "The zone configuration"
  value       = var.zone
}

output "ip_address" {
  description = "The IP address configuration"
  value       = var.ip_address
}
