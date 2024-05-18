output "public_ec2_private_ip" {
  value = module.ec2_module.public_ec2_private_ip

}

output "public_ec2_public_ip" {
  value = module.ec2_module.public_ec2_public_ip

}

output "private_ec2_private_ips" {
  value = module.ec2_module.private_ec2_private_ips
  
}