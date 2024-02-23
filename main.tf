module "openstack_network" {
  source              = "./network_module"
  network_name        = "Network_pub"
  subnet_name         = "Subnet_pub"
  subnet_cidr         = "172.18.0.0/24"
  network_name_2      = "Network_admin"
  subnet_name_2       = "Subnet_admin"
  subnet_cidr_2       = "172.16.0.0/24"
  network_name_3      = "Network_data"
  subnet_name_3       = "Subnet_data"
  subnet_cidr_3       = "172.14.0.0/24"
  router_name         = "Router"
  router_admin_name   = "Router_admin"
  floating_ips        = []
  external_network_id = "bcf59eb2-9d83-41cc-b4f5-0435ed594833"

}
