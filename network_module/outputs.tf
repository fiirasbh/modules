output "network_id" {
  value = openstack_networking_network_v2.network.id
}

output "subnet_id" {
  value = openstack_networking_subnet_v2.subnet.id
}

#Network2

output "network_id_2" {
  value = openstack_networking_network_v2.network_2.id
}

output "subnet_id_2" {
  value = openstack_networking_subnet_v2.subnet_2.id
}


output "router_id" {
  value = openstack_networking_router_v2.router.id
}

output "private_key" {
  value     = tls_private_key.example.private_key_pem
  sensitive = true
}

output "floating_ip" {
  value = [
    openstack_networking_floatingip_v2.fip1.address,
    openstack_networking_floatingip_v2.fip2.address
  ]
}
