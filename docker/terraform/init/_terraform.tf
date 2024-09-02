terraform {
  required_version = "~> 1.9.5"
  required_providers {
   kong = {
      source = "philips-labs/kong"
      version = "6.630.0"
    }
  }
  backend "local" { path = "/mnt/terraform/state" }
}

provider "kong" {
    kong_admin_uri  = "http://kong:8001"
    kong_admin_username = "kong"
    kong_admin_password = "kong"
}