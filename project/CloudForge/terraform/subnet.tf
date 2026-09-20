resource "aws_subnet" "cloudforge_public_subnet" {
  vpc_id     = aws_vpc.cloudforge_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "CloudForge-Public-Subnet"
  }
}

resource "aws_subnet" "cloudforge_private_subnet" {
  vpc_id     = aws_vpc.cloudforge_vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "CloudForge-Private-Subnet"
  }
}

resource "aws_subnet" "cloudforge_public_subnet_2" {
  vpc_id            = aws_vpc.cloudforge_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "CloudForge-Public-Subnet-2"
  }
}
