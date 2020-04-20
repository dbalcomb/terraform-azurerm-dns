module "dns" {
  source = "../../"

  name   = "example"
  region = "uksouth"
  domain = "example.com"
}

module "host" {
  source = "../../modules/host"

  name = "www.example.com"
  zone = module.dns.zone

  ip_address = {
    name  = "example-ip"
    group = "example-rg"
  }
}
