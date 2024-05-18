

resource "aws_vpc" "opensearch_vpc" {
  cidr_block = var.vpc_cidr
  
  tags = {
    Name = var.vpc_name
  }
}