resource "opentelekomcloud_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = "private"
  tags   = var.tags

  versioning {
    enabled = var.bucket_versioning
  }

  force_destroy = true

  lifecycle {
    # create_before_destroy = true
    prevent_destroy = false
    # ignore_changes = [
    #   # Ignore changes to tags, e.g. because a management agent
    #   # updates these based on some ruleset managed elsewhere.
    #   tags,
    # ]
  }
}
