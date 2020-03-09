# Zone

This module configures an Azure DNS zone that can be used to resolve host names
to resources across the Azure platform.

## Usage

```hcl
module "zone" {
  source = "github.com/dbalcomb/terraform-azurerm-dns//modules/zone"

  name  = "example.com"
  group = "example-rg"
}
```

## Inputs

| Name    | Type     | Default | Description    |
| ------- | -------- | ------- | -------------- |
| `name`  | `string` |         | The zone name  |
| `group` | `string` |         | The zone group |

## Outputs

| Name           | Type     | Description           |
| -------------- | -------- | --------------------- |
| `id`           | `string` | The zone ID           |
| `name`         | `string` | The zone name         |
| `group`        | `string` | The zone group        |
| `name_servers` | `list`   | The zone name servers |
