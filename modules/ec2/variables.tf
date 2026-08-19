# instance type
variable "instance_type" {
  type = list(string)
  default = ["t3.micro"]
}

# ami
variable "ami" {
  type = string
  default = "ami-0a59248a6294cece2"
}

# instance count
variable "instance_count" {
  type = number
  default = 1
}

# vpc id 
variable "vpc_id" {
  type = string
}

# instance key
variable "key" {
  type = string
  default = "dev-ec2"
}

variable "subnet_id" {
  type = list(string)
  description = "this subnet used for ec2 creation"
}

variable "associate_public_ip_address" {
  type = bool
  default = true
}

variable "cpu_options" {
  type = number
  default = 1
}

variable "threads_per_core" {
  type = number
  default = 2
}
