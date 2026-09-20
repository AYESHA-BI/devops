resource "aws_s3_bucket" "cloudforge_bucket" {
  bucket_prefix = "cloudforge-terraform-state-ayesha"

  tags = {
    Name = "CloudForge-S3"
  }
}
