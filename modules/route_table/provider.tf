variable "vpc_id" {
  type = string
  
}
variable "route_public_name" {
    type = string
}

variable "internet_gateway" {
  type = string
}

variable "aws_public_subnet_id" {
    type = string
    description = "entry of public subnet in route table"
  
}

variable "route_private_name" {
    type = string
    description = "name of private route table"
  
}

variable "aws_private_subnet_ids" {
    type = list(string)
    description = "entry of private subnet in route table"

}
variable "nat_gateway" {
    type = string
    description = "entry of nat gateway in private route table"
  
}

