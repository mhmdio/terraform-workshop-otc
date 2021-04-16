output "bucket_domain_name" {
  value       = opentelekomcloud_s3_bucket.this.bucket_domain_name
  description = "bucket_domain_name - The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
}
