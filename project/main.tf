module "openstack_network" {
  source              = "/home/lab/Documents/module_network/project/network_module"
  network_name        = "network-test"
  subnet_name         = "subnet-test"
  subnet_cidr         = "172.16.0.0/24"
  router_name         = "router-test"
  external_network_id = "bcf59eb2-9d83-41cc-b4f5-0435ed594833"
  
  external_floating_ip_pool1 = "Ext-Net"
  external_floating_ip_pool2 = "Ext-Net"
}
