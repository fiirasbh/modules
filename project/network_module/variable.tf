variable "network_name" {
  description = "The name of the network to create"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet to create"
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR of the subnet"
  type        = string
}

variable "router_name" {
  description = "The name of the router"
  type        = string
}

variable "external_network_id" {
  description = "The ID of the external network for the router"
  type        = string
}

variable "external_floating_ip_pool1" {
  description = "The pool from which to get the first external floating IP"
  type        = string
}

variable "external_floating_ip_pool2" {
  description = "The pool from which to get the second external floating IP"
  type        = string
}
