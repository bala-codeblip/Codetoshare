resource "aws_instance" "example" {
  ami           = var.ami-name
  instance_type = var.instance-type
  vpc_security_group_ids = [aws_security_group.example.id]
  key_name = var.key-name

  tags = {
    Name = var.instance-name
  }
}