terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = ">= 1.53.0"
    }
  }
}

provider "openstack" {
  auth_url    = "https://auth.cloud.ovh.net/v3"
  user_name   = "user-25QZZeyBcb6A"
  tenant_name = "4613160473683491"
  password    = "u5kTZQeDWX3zVQepHWHtm3CZcWsFAwTz"
  region      = "GRA11" 
}
