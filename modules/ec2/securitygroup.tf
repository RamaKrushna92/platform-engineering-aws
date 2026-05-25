resource "aws_security_group" "dev_ec2_sg" {
  name = "allow tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id = var.vpc_id
}

# inbound rule, allow traffic from internet
resource "aws_vpc_security_group_ingress_rule" "allow_inbound_ports" {
  security_group_id = aws_security_group.dev_ec2_sg.id
  cidr_ipv4 = "0.0.0.0/0"
  for_each = toset([ "80", "443", "22", "8080" ])
  ip_protocol = "tcp"
  from_port = each.value
  to_port = each.value
}

# resource "aws_vpc_security_group_egress_rule" "allow_all_outbound_ipv4" {
#   security_group_id = aws_security_group.dev_ec2_sg.id
#   cidr_ipv4 = "0.0.0.0/0"
#   ip_protocol = "-1"
# }