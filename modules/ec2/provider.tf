variable "public_subnet_id" {
    type = string
    description = "public subnet id" 
}

variable "instance_ami" {
  type    = string
  
}

variable "instance_type" {
  type = string

}

variable "key_name" {
    type = string
  
}
variable "public_ec2_name" {
    type = string
    description = "public ec2 name"
  
}
variable "private_subnet_ids" {
    type = list(string)
    description = "private subnet id"
  
}
variable "private_ec2_name" {
    type = list(string)
    description = "private ec2 name" 
}
variable "public_sg_id" {
    type = string
}
variable "private_sg_id" {
    type = string
}