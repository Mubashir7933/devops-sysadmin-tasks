# AWS VPC Creation with IPv6 (Terraform)

## 📌 Overview
This project provisions an **Amazon Virtual Private Cloud (VPC)** in the AWS **us-east-1** region using **Terraform**.  
The VPC is named **`nautilus-vpc`** and is configured with both an **IPv4 CIDR block** and an **Amazon-provided IPv6 CIDR block**.

This setup represents the initial step in the Nautilus DevOps team's incremental migration to AWS cloud infrastructure. By codifying the VPC using Terraform, the configuration is **repeatable, version-controlled, and scalable** for future services.

---

## 🛠️ Prerequisites
- An AWS account with permissions to create VPCs.  
- Terraform installed locally (`terraform -v` to check).  
- AWS CLI configured with credentials (`aws configure`).  
- Working directory:  

```bash

---

## 📝 Terraform Configuration (`main.tf`)
```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "nautilus_vpc" {
  cidr_block                       = "10.0.0.0/16"
  assign_generated_ipv6_cidr_block = true

  tags = {
    Name = "nautilus-vpc"
  }
}
```
Explanation:

- provider "aws" → Specifies AWS region us-east-1.

- cidr_block = "10.0.0.0/16" → Defines the IPv4 address range.

- assign_generated_ipv6_cidr_block = true → Requests an Amazon-provided IPv6 block.

- tags → Adds a descriptive name nautilus-vpc.

## 🚀 Deployment Steps

# 1) Navigate to the Terraform working directory
cd /home/bob/terraform

# 2) Initialize Terraform (downloads AWS provider plugin)
terraform init

# 3) Review the execution plan
terraform plan

# 4) Apply the configuration to create the VPC
terraform apply -auto-approve

## 🧠 Key Learnings

VPC provides a secure, isolated AWS networking environment.

IPv6 future-proofs the network with a vast address space.

Terraform workflow (init → plan → apply → destroy) ensures consistent and automated provisioning.

Infrastructure as Code (IaC) makes infrastructure repeatable, auditable, and scalable across environments.
