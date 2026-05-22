variable "cidr_block" {
  type = string
  description = "This is a CIDR Range for the dev vpc"
  default = "10.0.0.0/16"
  sensitive = true
}

variable "Environment" {
  type = string
  description = "This is the Environment for all resources"
  default = "dev"
}

variable "dev_public_subnet_cidr" {
  type = string
  default = "10.0.100.0/24"
}

variable "dev_private_subnet_cidr" {
  type = string
  default = "10.0.101.0/24"
}