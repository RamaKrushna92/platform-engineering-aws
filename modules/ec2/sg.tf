# security group for ec2 instance
resource "aws_security_group" "dev_ec2_sg" {
  name = "dev_ec2_sg"
  vpc_id = var.vpc_id

  tags = {
    Purpose = "allow tls"
  }
  
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "http"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "http"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}
