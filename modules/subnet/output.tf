output "aws_public_subnet_id" {
    value = aws_subnet.opensearch_publicsubnet.id
}

output "aws_private_subnet_ids" {
    value = "${aws_subnet.opensearch_privatesubnet.*.id}"
}