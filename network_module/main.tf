resource "openstack_networking_network_v2" "network" {
  name           = var.network_name
  admin_state_up = true
}

resource "openstack_networking_subnet_v2" "subnet" {
  name       = var.subnet_name
  network_id = openstack_networking_network_v2.network.id
  cidr       = var.subnet_cidr
  ip_version = 4
}

#Network2

resource "openstack_networking_network_v2" "network_2" {
  name           = var.network_name_2
  admin_state_up = true
}

resource "openstack_networking_subnet_v2" "subnet_2" {
  name       = var.subnet_name_2
  network_id = openstack_networking_network_v2.network_2.id
  cidr       = var.subnet_cidr_2
  ip_version = 4
}


resource "openstack_networking_router_v2" "router" {
  name                = var.router_name
  external_network_id = var.external_network_id
  admin_state_up      = true
}

resource "openstack_networking_router_interface_v2" "router_interface" {
  router_id = openstack_networking_router_v2.router.id
  subnet_id = openstack_networking_subnet_v2.subnet.id
}

resource "openstack_networking_floatingip_v2" "fip1" {
  pool = "Ext-Net"
}

resource "openstack_networking_floatingip_v2" "fip2" {
  pool = "Ext-Net"
}


resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "openstack_compute_keypair_v2" "keypair" {
  name       = "sshkey"
  public_key = tls_private_key.example.public_key_openssh
}

