provider "unifi" {
  username       = "terraform"
  password       = "terraform_pass"
  allow_insecure = true
  api_url        = "https://172.16.200.1"
}

terraform {
  required_providers {
    unifi = {
      source  = "paultyng/unifi"
      version = "0.34.0"
    }
  }
}
