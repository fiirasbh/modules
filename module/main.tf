resource "openstack_compute_instance_v2" "instance" {
  count           = var.instance_count
  name            = var.instance_names[count.index]
  image_id        = var.image_id
  flavor_id       = var.flavor_id
  key_pair        = var.key_pair
  security_groups = var.security_groups

  network {
    uuid = var.network_id
  }

}

#name            = "instance-${format("%02d", count.index + 1)}"