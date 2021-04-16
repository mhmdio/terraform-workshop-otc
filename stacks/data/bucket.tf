module "bucket_a" {
  source = "../../modules/bucket"

  tags              = var.tags
  bucket_name       = var.bucket_name
  bucket_versioning = var.bucket_versioning

}
