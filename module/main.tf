resource "openstack_compute_instance_v2" "instance" {
  count           = var.instance_count
  name            = var.instance_names[count.index]
  image_id        = var.image_id
  flavor_id       = var.flavor_id
  key_pair        = var.key_pair
  security_groups = var.security_groups

  dynamic "network" {
    for_each = var.networks[count.index]
    content {
      uuid = network.value
    }
  }
}
resource "openstack_compute_floatingip_associate_v2" "fip_associate" {
  count       = var.associate_fip ? 1 : 0
  floating_ip = var.fip_address
  instance_id = openstack_compute_instance_v2.instance[count.index].id
}
