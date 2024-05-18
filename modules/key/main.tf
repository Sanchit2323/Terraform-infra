resource "aws_key_pair" "mykeypair" {
  key_name   = var.key_name
  public_key = file(var.key_file)
}