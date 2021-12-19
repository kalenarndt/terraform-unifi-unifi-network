terraform {
  experiments      = [module_variable_optional_attrs]
  required_version = ">=1.0"
  required_providers {
    unifi = {
      source  = "paultyng/unifi"
      version = ">=0.34.0"
    }
  }
}