resource "aws_vpc" "dev_vpc" {
  cidr_block = var.cidr_block
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Environment = var.Environment
    Name = "${var.Environment}_env_vpc"
    Purpose = "for ${var.Environment} environment"
  }
}

