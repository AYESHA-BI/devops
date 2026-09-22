variable "aws_region" {
  description = "AWS region for CloudForge"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for CloudForge EC2"
  type        = string
}
