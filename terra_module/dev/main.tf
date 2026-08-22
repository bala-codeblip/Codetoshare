module "new_module_test" {
  source = "../module"
  ami-name = var.ami-name
  instance-name = var.instance-name
  cidr = var.cidr
  sg-name = var.sg-name
  instance-type = var.instance-type
  key-name = var.key-name
}
module "new_module_test" {
  source = "../module"
  ami-name = var.ami-name
  instance-name = var.instance-name
  cidr = var.cidr
  sg-name = var.sg-name
  instance-type = var.instance-type
  key-name = var.key-name
}