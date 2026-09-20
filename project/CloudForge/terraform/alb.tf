resource "aws_lb" "cloudforge_alb" {
  name               = "cloudforge-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = [
    aws_security_group.cloudforge_sg.id
  ]

  subnets = [
    aws_subnet.cloudforge_public_subnet.id,
    aws_subnet.cloudforge_public_subnet_2.id
  ]

  tags = {
    Name = "CloudForge-ALB"
  }
}
