resource "aws_s3_bucket_acl" "s3_bucket" {
  bucket = var.bucket_name
}