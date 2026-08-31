# Terraform S3 Static Website Hosting

This project uses Terraform to provision an AWS S3 bucket configured for static website hosting.  
It’s part of my DevOps learning portfolio to demonstrate Infrastructure as Code, AWS, and CI/CD basics.

## What this project does
- Creates an S3 bucket with public read access
- Enables Static Website Hosting on the bucket
- Uploads `index.html` to serve as the homepage
- Manages all infrastructure through Terraform modules

## Tech Stack
**Cloud**: AWS S3  
**IaC**: Terraform  
**CI/CD**: GitHub Actions  
**Language**: HTML

## Project Structure
my-s3-terraform-project/
├── modules/s3-bucket/    # Reusable S3 module
├── environments/
│   ├── dev/              # Dev environment
│   └── prod/             # Prod environment
├── index.html            # Website homepage
├── main.tf               # Root Terraform config
├── variables.tf          # Input variables
└── .github/workflows/    # GitHub Actions CI/CD

## How to Deploy
1.  **Clone the repo**
    ```bash
    git clone https://github.com/Tunji-Ibraheem/terraform-s3-website
    cd terraform-s3-website
    
Initialize Terraform
    terraform init

    Plan and Apply
        terraform plan -var="bucket_name=tunji-s3-learning-bucket-2026-dev-env"
    terraform apply -var="bucket_name=tunji-s3-learning-bucket-2026-dev-env"
