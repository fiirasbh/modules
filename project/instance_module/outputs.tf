output "instance_ip" {
  value = [for instance in openstack_compute_instance_v2.instance : instance.network.0.fixed_ip_v4]
}
