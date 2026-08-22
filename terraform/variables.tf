variable "ami-name" {
  default = "ami-091124c3965bce679"
}

variable "instance-type" {
  default = "t2.micro"
}

variable "cidr" {
  default = "10.0.0.0/16"
}

variable "name" {
  default = "harley-vpc"
}

variable "igw_name" {
  default = "harley-igw"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "public_subnet_name" {
  default = "harley-public-subnet"
}

variable "private_subnet_name" {
  default = "private-subnet"
}

variable "route_cidr" {
  default = "0.0.0.0/0"
}