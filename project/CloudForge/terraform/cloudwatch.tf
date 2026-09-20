resource "aws_cloudwatch_metric_alarm" "cloudforge_ec2_cpu" {
  alarm_name          = "CloudForge-EC2-High-CPU"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "Alarm when CloudForge EC2 CPU is above 80%"

  dimensions = {
    InstanceId = aws_instance.cloudforge_ec2.id
  }
}
