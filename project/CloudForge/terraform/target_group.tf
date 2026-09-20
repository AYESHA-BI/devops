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
resource "aws_lb_target_group_attachment" "cloudforge_tg_attachment" {
  target_group_arn = aws_lb_target_group.cloudforge_tg.arn
  target_id        = aws_instance.cloudforge_ec2.id
  port             = 80
}
