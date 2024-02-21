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

#Network2

variable "network_name_2" {
  description = "Le nom du deuxième réseau"
  type        = string
}

variable "subnet_name_2" {
  description = "Le nom du deuxième sous-réseau"
  type        = string
}

variable "subnet_cidr_2" {
  description = "CIDR du deuxième sous-réseau"
  type        = string
}



variable "external_network_id" {
  description = "The ID of the external network for the router"
  type        = string
}

variable "router_name" {
  description = "The name of the router"
  type        = string
}

variable "floating_ips" {
  description = "The pool from which to get the second external floating IP"
  type        = string
}
