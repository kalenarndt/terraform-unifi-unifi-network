provider "unifi" {

  username       = "terraform"
  password       = "terraform_pass"
  allow_insecure = true
  api_url        = "https://172.16.200.1"
}