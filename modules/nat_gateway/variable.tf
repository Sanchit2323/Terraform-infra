variable "redis_publicsubnet" {
    type = string
  
}

variable "var_depends_on" {
    type = string
    description = "nat depends on internet gateway"
  
}

variable "nat_gateway_name" {
    type = string
    description = "name of nat-gateway"
  
}
