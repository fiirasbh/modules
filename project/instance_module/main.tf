resource "openstack_compute_instance_v2" "instance" {
  count           = 2
  name            = var.instance_name[count.index]
  image_id        = var.image_id
  flavor_id       = var.flavor_id
  key_pair        = ""

  network {
    name = ""
  }
}
