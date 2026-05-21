# Nat Gateway
resource "aws_nat_gateway" "dev_nat_gateway" {
  subnet_id = aws_subnet.dev_private_subnet.id
  allocation_id = aws_eip.eip_natgateway.id
  depends_on = [ aws_internet_gateway.dev_igw ]

  tags = {
    Name = "${var.Environment} nat gateway"
    Purpose = "associate with private subnetnet"
  }
}