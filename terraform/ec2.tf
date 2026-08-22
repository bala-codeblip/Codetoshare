resource "aws_instance" "harley" {
  ami             = var.ami-name
  instance_type   = var.instance-type
  security_groups = ["harley-sg"]
  key_name        = "harley-key"

  tags = {
    Name = "harley-prod"
    env  = "production"
  }
}

resource "aws_ebs_volume" "harley-ebs" {
  availability_zone = aws_instance.harley.availability_zone
  size              = 1
  type              = "gp3"
  tags = {
    Name = "harley-ebs"
  }
}

resource "aws_volume_attachment" "harley-ebs-attachment" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.harley-ebs.id
  instance_id = aws_instance.harley.id
}