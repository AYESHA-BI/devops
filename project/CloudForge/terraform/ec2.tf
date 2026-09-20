resource "aws_instance" "cloudforge_ec2" {
  ami           = var.ami_id
  instance_type = "t2.micro"

  subnet_id = aws_subnet.cloudforge_public_subnet.id

  vpc_security_group_ids = [
    aws_security_group.cloudforge_sg.id
  ]

  tags = {
    Name = "CloudForge-EC2"
  }
}
