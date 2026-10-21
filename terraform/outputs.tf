output "cloudfront_url" {
  description = "HTTPS URL of the CloudFront-served static site"
  value       = module.site.cloudfront_url
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID"
  value       = module.site.distribution_id
}

output "origin_bucket" {
  description = "Private origin S3 bucket"
  value       = module.site.bucket
}
