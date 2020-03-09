resource "azurerm_resource_group" "main" {
  name     = format("%s-rg", var.name)
  location = var.region
}

module "zone" {
  source = "./modules/zone"

  name  = var.domain
  group = azurerm_resource_group.main.name
}
