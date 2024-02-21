variable "instance_count" {
  description = "Number of instances to create"
  type        = number
}

variable "image_id" {
  description = "The ID of the image to use for the instances"
  type        = string
}

variable "flavor_id" {
  description = "The ID of the flavor to use for the instances"
  type        = string
}

variable "network_id" {
  description = "The ID of the network to attach to the instances"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to attach to the instances"
  type        = string
}

variable "external_network_id" {
  description = "The ID of the external network for the router"
  type        = string
}

variable "key_pair" {
  description = "The name of the key pair to use"
  type        = string
}

variable "security_groups" {
  description = "List of security groups to associate with the instance"
  type        = list(string)
  default     = ["default"]
}

variable "instance_names" {
  description = "List of names for the instances"
  type        = list(string)
}
