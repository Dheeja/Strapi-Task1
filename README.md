# 🚀 Strapi Deployment on EC2 using Terraform & Docker

This project demonstrates how to **automatically deploy a Strapi application on AWS EC2** using **Terraform and Docker**.

---

## 📁 Project Structure

```
strapi-app/
├── config/
├── database/
├── dist/
├── node_modules/
├── public/
├── src/
├── types/
├── Dockerfile
├── favicon.png
├── package.json
├── package-lock.json
├── tsconfig.json
└── README.md

strapi-terraform/
├── main.tf
├── outputs.tf
├── terraform.tfvars
├── user-data.sh
├── variables.tf

README.md
```

---

## 🐳 Docker

### 1. Dockerfile

The `Dockerfile` is located inside the `strapi-app/` directory. It builds the Strapi app and prepares it for deployment in a container.

### 2. Build and Push Docker Image

```bash
# Authenticate with AWS ECR (if using ECR)
aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <your-account>.dkr.ecr.<your-region>.amazonaws.com

# Build the image
docker build -t strapi-app ./strapi-app

# Tag the image
docker tag strapi-app:latest <your-ecr-repo-url>/strapi-app:latest

# Push to ECR
docker push <your-ecr-repo-url>/strapi-app:latest
```

---

## ☁️ Terraform (strapi-terraform/)

### What it does:

- Creates an EC2 instance on AWS.
- Uses a `user-data.sh` script to install Docker, pull the Strapi Docker image from ECR, and run the container.

### Usage

```bash
cd strapi-terraform

# Initialize Terraform
terraform init

# Preview the infrastructure
terraform plan

# Apply the infrastructure
terraform apply

# To destroy the infrastructure
terraform destroy
```

Make sure you have the following in `terraform.tfvars`:

```hcl
aws_region     = "us-east-1"
instance_type  = "t2.micro"
key_name       = "your-keypair"
ecr_image_url  = "your-ecr-url/strapi-app:latest"
```

---

## 🔐 Security

- Use IAM roles and environment variables to manage credentials securely.
- Avoid committing `.terraform/`, `.tfstate`, and secrets to version control.

---

## 📎 Notes

- CI/CD not used in this task as per requirements.
- You can later enhance this with GitHub Actions or AWS CodePipeline.

---

## ✅ Status

✅ Fully Automated Deployment using Docker + Terraform on EC2 Complete

---

## 🔗 Repo Link

[GitHub - prem-pjena/strapi-app](https://github.com/prem-pjena/strapi-app)

🔗 PR: [prem-task-3](https://github.com/PearlThoughts-DevOps-Internship/strapi--Monitor-hub/pull/5)

---

## 👨‍💻 Author

**Prem Prakash Jena**  
_DevOps Engineer_  
[GitHub](https://github.com/prem-pjena) | [Portfolio](https://devops-portfolio-five.vercel.app/) | [LinkedIn](https://linkedin.com/in/premprakashj/)