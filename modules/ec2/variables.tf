variable "ami" {
  type = string
  default = "ami-0a59248a6294cece2"
  description = "dev ec2 ami value"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "vpc_id" {
  type = string
}