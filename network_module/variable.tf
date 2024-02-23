variable "network_name" {
  description = "Le nom du réseau"
  type        = string
}

variable "subnet_name" {
  description = "Le nom du sous-réseau"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR du sous-réseau"
  type        = string
}

#Network_2

variable "network_name_2" {
  description = "Le nom du réseau"
  type        = string
}

variable "subnet_name_2" {
  description = "Le nom du sous-réseau"
  type        = string
}

variable "subnet_cidr_2" {
  description = "CIDR du sous-réseau"
  type        = string
}

#Network_3

variable "network_name_3" {
  description = "Le nom du réseau"
  type        = string
}

variable "subnet_name_3" {
  description = "Le nom du sous-réseau"
  type        = string
}

variable "subnet_cidr_3" {
  description = "CIDR du sous-réseau"
  type        = string
}

variable "external_network_id" {
  description = "ID du réseau externe"
  type        = string
}

variable "router_name" {
  description = "nom du routeur"
  type        = string
}

variable "router_admin_name" {
  description = "nom du routeur"
  type        = string
}

variable "floating_ips" {
  description = "Liste des FIP"
  type        = list(string)
}
