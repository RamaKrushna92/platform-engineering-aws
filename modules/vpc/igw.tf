resource "aws_internet_gateway" "dev_igw" {
  vpc_id = aws_vpc.dev_vpc.id

  tags = {
    Environment = var.Environment
    Name = "main"
    Purpose = "internet for vpc"
  }
}