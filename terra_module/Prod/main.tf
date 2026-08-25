module "new_module" {
  source = "../module/s3"
  bucket_name = var.bucket_name
  environment = var.environment 
}