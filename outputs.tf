output "name" {
  description = "The DNS name"
  value       = var.name
}

output "region" {
  description = "The DNS region"
  value       = var.region
}

output "domain" {
  description = "The DNS domain"
  value       = var.domain
}

output "zone" {
  description = "The zone configuration"
  value       = module.zone
}
