module "openstack_instance_bastion" {
  source           = "./module"
  instance_count   = 1
  instance_names   = ["bastion"]
  image_id         = "d32d0872-3364-4042-8e0c-c003595d46cd"
  flavor_id        = "c6e9b74f-c419-426c-b24c-85aa0ce73495"
  key_pair         = "sshkey"
  security_groups  = ["default"]
  external_network_id = "bcf59eb2-9d83-41cc-b4f5-0435ed594833"
  networks         = [[module.openstack_network.network_id_2]]
  fip_address      = module.openstack_network.fip1_address
  associate_fip    = true
}
