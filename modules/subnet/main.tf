resource "aws_subnet" "opensearch_publicsubnet" {
  availability_zone = var.publiczone
  vpc_id = var.vpc_id
  map_public_ip_on_launch = true
  cidr_block = var.public_subnets_cidr
  tags = {
    "Name" = var.publicsubnet_name  
    }
}


resource "aws_subnet" "opensearch_privatesubnet" {
  availability_zone = "${element(var.privatezones, count.index)}"
  count    = length(var.private_subnets_cidr)
  vpc_id = var.vpc_id
  cidr_block = "${element(var.private_subnets_cidr, count.index)}"
  
  tags = {
    "Name" = "${element(var.privatesubnet_name, count.index)}" 
    }
}

