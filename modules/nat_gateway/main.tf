resource "aws_eip" "nat_eip" {
  domain = "vpc" 
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = var.redis_publicsubnet
  depends_on    = [var.var_depends_on]

  tags = {
    Name = var.nat_gateway_name
  }
}




#aws_subnet.redis_publicsubnet.id
