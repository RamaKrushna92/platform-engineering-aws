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
<<<<<<< HEAD
}

module "vpc" {
  source = "./modules/vpc"
}

output "natgateway_ip" {
  value = module.vpc.natgateway_ip
=======
>>>>>>> 58327b7c8d5c35e53d11ca6fd500ee322b6d44c7
}