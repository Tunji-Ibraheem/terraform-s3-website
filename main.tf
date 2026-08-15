terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "my_bucket" {
  source      = "./modules/s3-bucket"
  bucket_name = "${var.bucket_name}-${terraform.workspace}"
}