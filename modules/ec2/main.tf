resource "aws_instance" "public_ec2" {
  subnet_id                   = var.public_subnet_id
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.public_sg_id]
  root_block_device {
    volume_type           = "gp2"
    volume_size           = "10"
    delete_on_termination = true
  }
  tags = {
    Name = var.public_ec2_name
  }
}

resource "aws_instance" "private_ec2" {
  count                  = length(var.private_subnet_ids)
  subnet_id              = "${element(var.private_subnet_ids, count.index)}"
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.private_sg_id]
  key_name               = var.key_name
  root_block_device {
    volume_type           = "gp2"
    volume_size           = "10"
    delete_on_termination = true
  }

  tags = {
    Name = "${var.private_ec2_name[count.index]}"
  }
}

