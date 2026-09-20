resource "aws_s3_bucket" "cloudforge_bucket" {
  bucket = "cloudforge-terraform-state-ayesha"

  tags = {
    Name = "CloudForge-S3"
  }
}
