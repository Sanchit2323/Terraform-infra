variable "vpc_id" {
  type = string
  
}

variable "vpc_cidr" {
  type = string
  
}

variable "sg_publicname" {
    type = string
    description = "public security group name"
  
}

variable "my_ip" {
  description = "Your IP address"
  type        = string
  sensitive   = true
  
}
variable "sg_privatename" {
    type = string
    description = "private security group name"
  
  
}
variable "public_ec2_private_ip" {
  type = string
  description = "private ip of public instance"
  sensitive = true
}