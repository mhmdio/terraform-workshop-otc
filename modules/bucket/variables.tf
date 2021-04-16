variable "tags" {
  type = map(string)
}

variable "bucket_name" {
  type        = string
  description = "S3 bucket name"
}

variable "bucket_versioning" {
  type        = bool
  description = ""
}
