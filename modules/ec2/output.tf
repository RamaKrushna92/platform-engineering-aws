output "ec2instance_publicip" {
  value = aws_instance.dev_ec2_instance.public_ip
}

output "ec2instance_id" {
  value = aws_instance.dev_ec2_instance.id
}