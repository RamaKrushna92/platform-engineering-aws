# ec2 main file under the module
resource "aws_instance" "dev_instance" {
  ami = var.ami
  instance_type = var.instance_type
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.dev_ec2_sg.id]
  key_name = "dev-ec2"
  
  tags = {
    Name = "dev_ec2_instance"
    Purpose = "web application"
  }
}