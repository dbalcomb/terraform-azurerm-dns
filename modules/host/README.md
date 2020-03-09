# Host

This module configures a host domain / subdomain that can resolve to an IP
address resource inside the Azure platform.

## Usage

```hcl
module "zone" {
  source = "github.com/dbalcomb/terraform-azurerm-dns//modules/zone"

  # ...
}

module "host" {
  source = "github.com/dbalcomb/terraform-azurerm-aks-ingress//modules/host"

  name = "www.example.com"
  zone = module.zone

  ip_address = {
    name  = "example-ip"
    group = "example-rg"
  }
}
```

## Inputs

| Name               | Type     | Default | Description                  |
| ------------------ | -------- | ------- | ---------------------------- |
| `name`             | `string` |         | The host name                |
| `zone`             | `object` |         | The zone configuration       |
| `zone.name`        | `string` |         | The zone name                |
| `zone.group`       | `string` |         | The zone group               |
| `ip_address`       | `object` |         | The IP address configuration |
| `ip_address.name`  | `string` |         | The IP address name          |
| `ip_address.group` | `string` |         | The IP address group         |

## Outputs

| Name         | Type     | Description                  |
| ------------ | -------- | ---------------------------- |
| `name`       | `string` | The host name                |
| `zone`       | `object` | The zone configuration       |
| `ip_address` | `object` | The IP address configuration |
