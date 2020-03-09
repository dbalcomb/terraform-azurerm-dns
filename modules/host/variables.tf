variable "name" {
  description = "The host name"
  type        = string
}

variable "zone" {
  description = "The zone configuration"
  type = object({
    name  = string
    group = string
  })
}

variable "ip_address" {
  description = "The IP address configuration"
  type = object({
    name  = string
    group = string
  })
}
