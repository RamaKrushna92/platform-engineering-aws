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

module "vpc" {
  source = "./modules/vpc"
}

output "natgateway_ip" {
  value = module.vpc.natgateway_ip
  
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"
  vpc_id = module.vpc.vpc_id
}