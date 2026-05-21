# elastic ip for nategateway
resource "aws_eip" "eip_natgateway" {
  domain = "vpc"

  tags = {
    Name = "${var.Environment} eip"
    Purpose = "assign with natGateway"
  }
}