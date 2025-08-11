
---

## ⚙️ Step-by-Step Guide

### 1️⃣ Understanding Terraform
Terraform is an **Infrastructure as Code (IaC)** tool that:
- Lets you define infrastructure in `.tf` files using **HCL** (HashiCorp Configuration Language).
- Works in a **write → plan → apply** cycle.
- Communicates with cloud providers (AWS, Azure, GCP, etc.) via **providers**.

---

### 2️⃣ Terraform Configuration (`main.tf`)
This file contains:
- **Provider Configuration** for AWS.
- A **TLS Resource** to generate an RSA private key.
- An **AWS Key Pair Resource** using the generated public key.
- A **Local File Resource** to save the private key locally with secure permissions.

```hcl
terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

provider "aws" {
  region = "us-east-1" # change if needed
}

# 1) Generate a new RSA private key
resource "tls_private_key" "xfusion_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# 2) Create AWS Key Pair using the generated public key
resource "aws_key_pair" "xfusion_kp" {
  key_name   = "xfusion-kp"
  public_key = tls_private_key.xfusion_key.public_key_openssh
}

# 3) Save private key locally with secure permissions
resource "local_file" "xfusion_private_key" {
  content         = tls_private_key.xfusion_key.private_key_pem
  filename        = "/home/bob/xfusion-kp.pem"
  file_permission = "0600"
}
