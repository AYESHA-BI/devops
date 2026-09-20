resource "aws_security_group" "cloudforge_sg" {
  name        = "cloudforge-sg"
  description = "Security group for CloudForge"
  vpc_id      = aws_vpc.cloudforge_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "CloudForge-SG"
  }
}
