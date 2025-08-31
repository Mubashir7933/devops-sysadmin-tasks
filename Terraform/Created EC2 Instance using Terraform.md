# Terraform EC2 Instance Provisioning – xfusion-ec2

This project provisions an **Amazon EC2 instance** on AWS using **Terraform**.  
It is part of the Nautilus DevOps team's incremental migration strategy to the cloud.

---

## 🚀 Task Overview
The goal is to create an EC2 instance with the following requirements:

- **Instance Name:** `xfusion-ec2`
- **AMI:** `ami-0c101f26f147fa7fd` (Amazon Linux 2)
- **Instance Type:** `t2.micro`
- **Key Pair:** `xfusion-kp` (RSA key)
- **Security Group:** Default security group (or a custom one if default is missing)
- **Working Directory:** `/home/bob/terraform`
- **Terraform File:** `main.tf`

---

## 📂 Project Structure
/home/bob/terraform
└── main.tf
---

## ⚙️ Prerequisites
Before running Terraform:
1. Install Terraform → [Download here](https://developer.hashicorp.com/terraform/downloads)  
2. Install and configure AWS CLI:  
   ```bash
   aws configure
   ```
main.tf

```bash
provider "aws" {
  region = "us-east-1"
}

# Create a new RSA key pair
resource "aws_key_pair" "xfusion_key" {
  key_name   = "xfusion-kp"
  public_key = file("~/.ssh/id_rsa.pub")
}

# Create EC2 instance
resource "aws_instance" "xfusion" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.xfusion_key.key_name

  # Use default SG (if available) or replace with a custom SG ID
  security_groups = ["default"]

  tags = {
    Name = "xfusion-ec2"
  }
}
```

# 🧰 Troubleshooting

Error: InvalidGroup.NotFound
If the default security group does not exist in your region, create a new security group and update main.tf to use its ID.

Key pair mismatch
Ensure the ~/.ssh/id_rsa.pub file exists and is valid.

# 📚 Key Learning Points

Terraform follows the workflow: init → validate → plan → apply → verify.

Security groups are tied to VPCs; the “default” SG may not exist in every account/region.

Infrastructure as Code (IaC) ensures repeatable, version-controlled infrastructure.
