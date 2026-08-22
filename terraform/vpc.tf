resource "aws_vpc" "harley-vpc" {
  cidr_block = var.cidr
  tags = {
    Name = var.name
  }
}

resource "aws_internet_gateway" "harley-igw" {
  vpc_id = aws_vpc.harley-vpc.id
  tags = {
    Name = var.igw_name
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.harley-vpc.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet_name
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.harley-vpc.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = "us-west-2b"

  tags = {
    Name = var.private_subnet_name
  }
}

resource "aws_default_route_table" "default-harley" {
  default_route_table_id = aws_vpc.harley-vpc.default_route_table_id
  route {
    cidr_block = var.route_cidr
    gateway_id = aws_internet_gateway.harley-igw.id
  }
}

/* resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.harley-vpc.id
} */

resource "aws_route_table_association" "public_route_table_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_vpc.harley-vpc.default_route_table_id
}


