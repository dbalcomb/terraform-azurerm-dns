# terraform-azurerm-dns

[Azure DNS](https://azure.microsoft.com/en-gb/services/dns/) Terraform Module.

## Usage

```hcl
module "dns" {
  source = "github.com/dbalcomb/terraform-azurerm-dns"

  name   = "example"
  region = "uksouth"
  domain = "example.com"
}
```

## Inputs

| Name     | Type     | Default | Description    |
| -------- | -------- | ------- | -------------- |
| `name`   | `string` |         | The DNS name   |
| `region` | `string` |         | The DNS region |
| `domain` | `string` |         | The DNS domain |

## Outputs

| Name     | Type     | Description            |
| -------- | -------- | ---------------------- |
| `name`   | `string` | The DNS name           |
| `region` | `string` | The DNS region         |
| `domain` | `string` | The DNS domain         |
| `zone`   | `object` | The zone configuration |

## Modules

- [Zone](modules/zone/README.md)
- [Host](modules/host/README.md)
