variable "aws_region" {
  description = "AWS region for the S3 origin bucket"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name prefix applied to all resources"
  type        = string
  default     = "ahmad-static-site"
}
