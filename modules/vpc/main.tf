

resource "aws_vpc" "redis_vpc" {
  cidr_block = var.vpc_cidr
  
  tags = {
    Name = var.vpc_name
  }
}
