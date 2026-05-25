terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# configure the aws provider
provider "aws" {
  region = "ap-southeast-2"

}
# vpc module executing
module "vpc" {
  source = "../../vpc"
}
output "vpc_id" {
  value = module.vpc.vpc_id
  description = "dev_vpc id for ec2 instance reference"
}

# NatGateway public ip
output "natgateway_ip" {
  value = module.vpc.natgateway_ip
}

# subnet id
output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

# ec2 module
module "ec2" {
  source = "../../ec2"
  vpc_id = module.vpc.vpc_id
  subnet_id = [module.vpc.public_subnet_id, module.vpc.private_subnet_id]
}

output "ec2instance_id" {
  value = module.ec2.ec2instance_id
}

output "ec2instance_publicip" {
  value = module.ec2.ec2instance_publicip
}