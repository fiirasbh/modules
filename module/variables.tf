variable "instance_count" {
  description = "Nombre d'instance à créer"
  type        = number
}

variable "image_id" {
  description = "ID image instance"
  type        = string
}

variable "flavor_id" {
  description = "ID flavor instances"
  type        = string
}

variable "networks" {
  description = "Liste des ID de réseau"
  type        = list(list(string))
}

variable "external_network_id" {
  description = "ID du réseau externe"
  type        = string
}

variable "fip_address" {
  description = "FIP à associer"
  type        = string
  default     = ""
}

variable "associate_fip" {
  description = "True si on rajoute une fip à l'intance sinon false"
  type        = bool
  default     = false
}


variable "key_pair" {
  description = "Nom de clé ssh"
  type        = string
}

variable "security_groups" {
  description = "Liste de groupe de sécurité"
  type        = list(string)
  default     = ["default"]
}

variable "instance_names" {
  description = "Liste de noms d'instances"
  type        = list(string)
}
