resource "azurerm_dns_zone" "main" {
  name                = var.name
  resource_group_name = var.group

  tags = {
    provisioner = "terraform"
  }
}
