resource "aws_iam_role" "cloudforge_ec2_role" {
  name = "CloudForge-EC2-Role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "ec2.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })
}
resource "aws_iam_instance_profile" "cloudforge_ec2_profile" {
  name = "CloudForge-EC2-Profile"
  role = aws_iam_role.cloudforge_ec2_role.name
}
