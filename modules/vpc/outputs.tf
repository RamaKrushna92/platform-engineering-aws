output "natgateway_ip" {
  value = aws_eip.eip_natgateway.public_ip
  description = "public ip of natgateway"
}

output "vpc_id" {
  value = aws_vpc.dev_vpc.id
  description = "dev_vpc id for ec2 instance reference"
}

output "public_subnet_id" {
  value = aws_subnet.dev_public_subnet.id
  description = "attach with dev-ec2instance"
}

output "private_subnet_id" {
  value = aws_subnet.dev_private_subnet.id
  description = "attach with dev-ec2instance-private"
}

output "enable_dns_hostnames" {
  value = aws_vpc.dev_vpc.enable_dns_hostnames
  description = "the public dns name"
}