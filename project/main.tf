module "instances_openstack" {
  source           = "/home/lab/Documents/module_instances/project/instance_module"
  instance_name    = ["vm_01", "vm_02", "vm_03"]
  image_id         = "d32d0872-3364-4042-8e0c-c003595d46cd"
  flavor_id        = "e92cc5e2-e80f-46ce-ad5d-dc175135b468"  
}
