
# Terraform S3 Static Website

Deploy a static website to AWS S3 using Terraform with public access and website hosting enabled.

## Architecture
User → S3 Static Website Hosting → Public Internet

## Tech Stack
- **IaC**: Terraform
- **Cloud**: AWS S3
- **Features**: Public read access, Website endpoint

## Prerequisites
1. AWS Account with IAM user that has S3 permissions
2. Terraform >= 1.5.0 installed
3. AWS CLI configured with `aws configure`

## How to Deploy
```bash
git clone https://github.com/Tunji-Ibraheem/terraform-s3-website
cd terraform-s3-website
terraform init
terraform plan
terraform apply
