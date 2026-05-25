resource "aws_instance" "dev_ec2_instance" {
  ami = var.ami
  instance_type = var.instance_type[0]
  count = var.instance_count
  key_name = var.key
  vpc_security_group_ids = [ aws_security_group.dev_ec2_sg.id ]
  subnet_id = var.subnet_id[count.index]
  associate_public_ip_address = count.index == 0 ? true : false

  cpu_options {
    core_count = var.cpu_options
    threads_per_core = var.threads_per_core
  }

  depends_on = [
    aws_vpc_security_group_ingress_rule.allow_inbound_ports
  ]
  
  tags = {
    Name = "app-server-${count.index == 0 ? "public" : "private"}"
  }
}