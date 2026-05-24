output "natgateway_ip" {
  value = aws_eip.eip_natgateway.public_ip
  description = "public ip of natgateway"
}

output "vpc_id" {
  value = aws_vpc.dev_vpc.id
  description = "dev_vpc id for ec2 instance reference"
}

output "subnet_id" {
  value = aws_subnet.dev_public_subnet.id
  description = "attach with dev-ec2instance"
}