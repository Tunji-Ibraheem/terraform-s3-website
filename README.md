# Terraform S3 Static Website Hosting

![Terraform](https://img.shields.io/badge/IaC-Terraform-7B42BC?style=for-the-badge&logo=terraform)
![AWS](https://img.shields.io/badge/AWS-S3%20%7C%20CloudFront-FF9900?style=for-the-badge&logo=amazonaws)
![CI/CD](https://img.shields.io/badge/CI/CD-GitHub%20Actions-2088FF?style=for-the-badge&logo=githubactions)

A production-ready infrastructure project that provisions a static website on AWS S3 using Terraform and deploys updates automatically with GitHub Actions CI/CD.

 <img width="1366" height="768" alt="Screenshot " src="https://github.com/user-attachments/assets/1a009975-96b8-4d00-84a2-b7aede1a2b52" />

![Website Screenshot](screenshot.png)

## 🏗️ Architecture
Git Push 
   ↓
GitHub Actions CI/CD
   ↓
Terraform Plan/Apply
   ↓
AWS S3 + Static Website Hosting
   ↓
Public Website

## 🎯 What I Built
- **Infrastructure as Code**: 100% of AWS resources provisioned with Terraform
- **Modular Design**: Reusable Terraform modules for clean, scalable code
- **CI/CD Pipeline**: Automatic deployment on `git push` to main branch
- **Static Website**: Hosted on S3 with public access and custom `index.html`

## 🛠️ Tech Stack
- **Cloud**: AWS S3
- **IaC**: Terraform 
- **CI/CD**: GitHub Actions
- **Language**: HCL, HTML, CSS

## 📁 Project Structure
terraform-s3-website/
├── modules/
│   └── s3-website/          # Reusable S3 module
├── environments/
│   └── dev/
│       └── main.tf          # Dev environment config
├── .github/
│   └── workflows/           # CI/CD pipelines
├── index.html               # Website content
├── screenshot.png           # Project screenshot
└── README.md


## 🚀 How to Deploy

### 1. Prerequisites
```bash
- AWS Account with programmatic access
- Terraform >= 1.5.0
- AWS CLI configured

Clone & Initialize
git clone https://github.com/Tunji-Ibraheem/terraform-s3-website.git
cd terraform-s3-website/environments/dev
terraform init

Deploy Infrastructure
terraform plan
terraform apply

CI/CD
Every git push to the main branch automatically triggers the GitHub Actions workflow to validate and apply Terraform changes.

Live Demo
After terraform apply, my website will be available at the S3 website endpoint.

What I Learned
Terraform modules and workspace structure
S3 static website hosting and bucket policies
Setting up GitHub Actions for IaC automation
Managing AWS infrastructure as code vs manual console

Built by *Tunji Ibraheem* | Junior Cloud/DevOps Engineer
