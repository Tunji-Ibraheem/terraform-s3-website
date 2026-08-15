terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "my_bucket" {
  source      = "../../modules/s3-bucket"
  bucket_name = var.bucket_name
}

output "bucket_name" {
  value = module.my_bucket.bucket_name
}

output "bucket_arn" {
  value = module.my_bucket.bucket_arn
}