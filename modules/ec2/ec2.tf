resource "aws_instance" "dev_ec2_instance" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key
  vpc_security_group_ids = [ aws_security_group.dev_ec2_sg.id ]
  subnet_id = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address

  cpu_options {
    core_count = var.cpu_options
  }
  
  tags = {
    Name = "dev_ec2_instance"
    Purpose = "web application"
  }
}