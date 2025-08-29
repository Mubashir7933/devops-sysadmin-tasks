# AWS Elastic IP Allocation with Terraform

## 📌 Overview
This project provisions an **Elastic IP (EIP)** in the AWS **us-east-1** region using **Terraform**.  
The Elastic IP is tagged as **`nautilus-eip`** and can later be attached to EC2 instances, NAT gateways, or load balancers.  

Elastic IPs provide a **static IPv4 address** that remains fixed, even if the associated instance is stopped or restarted — making them critical for scenarios where DNS records, firewalls, or client connections require a stable endpoint.

This task represents another incremental step in the Nautilus DevOps team's migration strategy, ensuring network stability and reliability.

---

## 🛠️ Prerequisites
- AWS account with permissions to allocate Elastic IPs.  
- Terraform installed (`terraform -v` to check).  
- AWS CLI configured with credentials (`aws configure`).  
- Working directory:  

---

## 📝 Terraform Configuration (`main.tf`)
```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "nautilus_eip" {
  vpc = true

  tags = {
    Name = "nautilus-eip"
  }
}
```
Explanation:

- provider "aws" → Specifies the AWS provider and region (us-east-1).

- resource "aws_eip" "nautilus_eip" → Reserves an Elastic IP address.

- vpc = true → Ensures the EIP is for use with instances in a VPC.

- tags → Assigns a descriptive tag for easy identification in the AWS Console.

# 🧠 Key Learnings

- Elastic IPs ensure static IPv4 addressing in AWS.

- They are essential for DNS records, firewall rules, and stable connectivity.

- Terraform workflow (init → plan → apply → destroy) provides automation and repeatability.

- Using Infrastructure as Code (IaC) makes infrastructure consistent, auditable, and easy to manage across teams.
