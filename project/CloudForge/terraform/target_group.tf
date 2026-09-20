resource "aws_lb_target_group" "cloudforge_tg" {
  name     = "cloudforge-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.cloudforge_vpc.id

  health_check {
    path = "/"
  }

  tags = {
    Name = "CloudForge-TG"
  }
}
