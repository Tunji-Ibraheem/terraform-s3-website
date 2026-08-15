output "bucket_name" {
  description = "The name of the created bucket"
  value       = module.my_bucket.bucket_name
}

output "bucket_arn" {
  description = "The ARN of the created bucket"
  value       = module.my_bucket.bucket_arn
}