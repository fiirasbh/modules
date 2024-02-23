module "openstack_instance_vm" {
  source = "./module"
  instance_count   = 1
  instance_names   = ["vm1"]
  image_id         = "d32d0872-3364-4042-8e0c-c003595d46cd"
  flavor_id        = "e92cc5e2-e80f-46ce-ad5d-dc175135b468"
  key_pair         = "sshkey"
  security_groups  = ["default"]
  external_network_id = "bcf59eb2-9d83-41cc-b4f5-0435ed594833"
  networks = [[module.openstack_network.network_id, module.openstack_network.network_id_3]]
  associate_fip = false
}

