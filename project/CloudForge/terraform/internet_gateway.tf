resource "aws_internet_gateway" "cloudforge_igw" {
  vpc_id = aws_vpc.cloudforge_vpc.id

  tags = {
    Name = "CloudForge-IGW"
  }
}
