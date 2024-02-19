module "openstack_network" {
  source              = "network_module"
  network_name        = "network-test"
  subnet_name         = "subnet-test"
  subnet_cidr         = "172.16.0.0/24"
  router_name         = "router-test"
  external_network_id = ""
  
  external_floating_ip_pool1 = "Ext-Net"
  external_floating_ip_pool2 = "Ext-Net"
}
