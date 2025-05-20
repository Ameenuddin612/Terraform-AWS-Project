# Terraform AWS Web Infrastructure Project

This project uses **Terraform** to provision a highly available and scalable web infrastructure on **Amazon Web Services (AWS)**. It automates the deployment of a VPC, public subnets across availability zones, EC2 instances running Apache web servers, an Application Load Balancer (ALB), and secure networking with security groups.

## 📌 Features

- ✅ **Custom VPC** with two public subnets across different AZs
- ✅ **Internet Gateway** and **route table** for internet access
- ✅ **EC2 Instances** running Apache, dynamically showing instance metadata
- ✅ **Application Load Balancer (ALB)** to distribute traffic
- ✅ **Security Groups** for HTTP and SSH access
- ✅ **Remote Terraform state** stored in an S3 bucket
- ✅ **User Data scripts** to bootstrap EC2 servers on launch
- ✅ Modular and reusable infrastructure as code

## Getting Started
### 📦 Prerequisites

- Terraform installed (`>=1.0`)
- AWS CLI installed and configured
- An S3 bucket already created to store remote state (or create it manually)

🌐 Output
After successful apply, Terraform will output the Load Balancer DNS. Visit it in your browser to see the running servers.

# 🧾 What Each Server Does
Each EC2 instance runs a simple Apache web server and displays:
- Server name (Server 1 or Server 2)
- Instance ID fetched using metadata service
- Basic animated HTML page via index.html

# 🛡️ Security Group Rules
Type	    Port	  Source	    Description
Ingress	  80	    0.0.0.0/0	  HTTP access
Ingress	  22	    0.0.0.0/0	  SSH access
Egress	  All	    0.0.0.0/0	  Outbound

# 🌍 Technologies Used
- Terraform
- AWS EC2
- AWS VPC
- AWS S3
- AWS ALB


