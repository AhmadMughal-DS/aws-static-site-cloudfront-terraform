output "cloudfront_url" {
  description = "HTTPS URL of the CloudFront-served static site"
  value       = "https://${aws_cloudfront_distribution.site.domain_name}"
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID"
  value       = aws_cloudfront_distribution.site.id
}

output "origin_bucket" {
  description = "Name of the private origin S3 bucket"
  value       = aws_s3_bucket.site.id
}
