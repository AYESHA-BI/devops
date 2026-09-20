output "vpc_id" {
  value = aws_vpc.cloudforge_vpc.id
}

output "ec2_public_ip" {
  value = aws_instance.cloudforge_ec2.public_ip
}

output "alb_dns_name" {
  value = aws_lb.cloudforge_alb.dns_name
}
