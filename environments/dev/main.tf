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

output "website_endpoint" {
  value = module.my_bucket.website_endpoint
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "tunji-terraform-state-bucket-2026"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}