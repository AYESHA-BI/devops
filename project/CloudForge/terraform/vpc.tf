resource "aws_vpc" "cloudforge_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "CloudForge-VPC"
  }
}
