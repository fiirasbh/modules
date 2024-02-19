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

resource "openstack_networking_router_v2" "router" {
  name                = var.router_name
  external_network_id = var.external_network_id
  admin_state_up      = true
}

resource "openstack_networking_router_interface_v2" "router_interface" {
  router_id = openstack_networking_router_v2.router.id
  subnet_id = openstack_networking_subnet_v2.subnet.id
}

resource "openstack_networking_floatingip_v2" "external_floating_ip1" {
  pool = var.external_floating_ip_pool1
}

resource "openstack_networking_floatingip_v2" "external_floating_ip2" {
  pool = var.external_floating_ip_pool2
}

