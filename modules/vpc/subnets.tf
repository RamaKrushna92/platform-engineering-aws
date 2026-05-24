# public subnet
resource "aws_subnet" "dev_public_subnet" {
  vpc_id = aws_vpc.dev_vpc.id
  cidr_block = var.dev_public_subnet_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.Environment} public subnet"
    Purpose = "internet access"
  }
}

# public subnet route table
resource "aws_route_table" "public_subnet_route_table" {
  vpc_id = aws_vpc.dev_vpc.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.dev_igw.id
  }

  tags = {
    Name = "${var.Environment} public subnet route table"
    Purpose = "internet access for public subnet access"
  }
}

# Route table public subnet association
resource "aws_route_table_association" "public_route_association" {
  subnet_id = aws_subnet.dev_public_subnet.id
  route_table_id = aws_route_table.public_subnet_route_table.id
}

# private subnet
resource "aws_subnet" "dev_private_subnet" {
  vpc_id = aws_vpc.dev_vpc.id
  cidr_block = var.dev_private_subnet_cidr

  tags = {
    Name = "${var.Environment} private subnet"
    Purpose = "Route via NatGateway"
  }
}

# private subnet route table
resource "aws_route_table" "private_subnet_route_table" {
  vpc_id = aws_vpc.dev_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.dev_nat_gateway.id
  }

  tags = {
    Name = "${var.Environment} private subnet route table"
    Puspose = "Restrict internet access"
  }
}

# Route table private subnet association
resource "aws_route_table_association" "private_route_association" {
  route_table_id = aws_route_table.private_subnet_route_table.id
  subnet_id = aws_subnet.dev_private_subnet.id
}
