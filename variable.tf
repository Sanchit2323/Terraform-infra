

variable "vpc_name" {
  description = "vpc name"
  type        = string

}

variable "vpc_cidr" {
  description = "vpc cidr"
  type        = string

}

variable "privatesubnet_name" {
  description = "private subnet name"
  type        = list(string)
}

variable "public_subnets_cidr" {
  description = "public subnet name"
  type        = string
}

variable "private_subnets_cidr" {
  description = "private subnet cidr"
  type        = list(string)
}

variable "publicsubnet_name" {
  description = "public subnet name"
  type        = string
}

variable "internet_gateway" {
  description = "internet gateway name"
  type        = string

}
variable "nat_gateway_name" {
  description = "nat gateway name"
  type        = string

}
variable "route_public_name" {
  description = "public route table name"
  type        = string

}
variable "route_private_name" {
  description = "private route table name"
  type        = string

}

variable "sg_publicname" {
  description = "public security group name"
  type        = string

}
variable "my_ip" {
  description = "Your IP address"
  type        = string
  sensitive   = true

}
variable "sg_privatename" {
  description = "private security group name"
  type        = string
}

variable "instance_ami" {
  type = string

}
variable "instance_type" {
  type = string

}
variable "key_name" {
  type = string
}
variable "key_file" {
  type = string
}

variable "public_ec2_name" {
  type        = string
  description = "name of public ec2 name"
}

variable "private_ec2_name" {
  type        = list(string)
  description = "name of private ec2 name"
}

variable "region" {
  description = "vpc region"
  type = string
   
}

variable "zone" {
  description = "default zone"
  type = string
  
}

variable "zones" {
  description = "list of zones"
  type = list(string)
  
}