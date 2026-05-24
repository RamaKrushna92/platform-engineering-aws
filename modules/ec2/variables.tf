# vpc id 
variable "vpc_id" {
  type = string
}

# ami
variable "ami" {
  type = string
  default = "ami-0a59248a6294cece2"
}
# instance type
variable "instance_type" {
  type = string
  default = "t3.micro"
}

# instance key
variable "key" {
  type = string
  default = "dev-ec2"
}
variable "subnet_id" {
  type = string
}
