module "openstack_network" {
  source              = "./network_module"
  network_name        = "Network_pub"
  subnet_name         = "Subnet_pub"
  subnet_cidr         = "172.16.0.0/24"
  router_name         = "Router"
  floating_ips        = "default"
  external_network_id = "bcf59eb2-9d83-41cc-b4f5-0435ed594833"
  network_name_2 = "Network_admin"
  subnet_name_2  = "Subnet_admin"
  subnet_cidr_2  = "172.18.0.0/24"


}
module "openstack_instance_group1" {
  source = "./module"
  instance_count   = 1
  instance_names   = ["vm1"]
  image_id         = "d32d0872-3364-4042-8e0c-c003595d46cd"
  flavor_id        = "e92cc5e2-e80f-46ce-ad5d-dc175135b468"
  network_id        = module.openstack_network.network_id
  subnet_id         = module.openstack_network.subnet_id
  key_pair         = "sshkey"
  security_groups  = ["default"]
  external_network_id = "bcf59eb2-9d83-41cc-b4f5-0435ed594833"
}

