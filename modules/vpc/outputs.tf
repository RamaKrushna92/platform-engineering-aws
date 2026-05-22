output "natgateway_ip" {
  value = aws_eip.eip_natgateway.public_ip
  description = "public ip of natgateway"
}