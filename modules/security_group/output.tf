output "public_security_group_id" {
    value = aws_security_group.redis_publicsg.id
}

output "private_security_group_id" {
    value = aws_security_group.redis_privatesg.id
}
