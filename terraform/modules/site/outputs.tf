output "cloudfront_url" {
  description = "HTTPS URL of the site"
  value       = "https://${aws_cloudfront_distribution.site.domain_name}"
}

output "distribution_id" {
  description = "CloudFront distribution ID"
  value       = aws_cloudfront_distribution.site.id
}

output "bucket" {
  description = "Origin bucket name"
  value       = aws_s3_bucket.site.id
}
