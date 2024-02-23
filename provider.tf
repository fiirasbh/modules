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
  auth_url    = ""
  user_name   = ""
  tenant_name = ""
  password    = ""
  region      = "" 
}
