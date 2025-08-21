# AWS VPC Creation with Terraform

## 📌 Overview
This project demonstrates how to create a **Virtual Private Cloud (VPC)** in AWS using **Terraform**.  
The VPC is named `devops-vpc`, deployed in the **`us-east-1` region**, and uses the CIDR block `10.0.0.0/16`.  

By managing infrastructure as code (IaC), we ensure repeatability, version control, and easier collaboration for DevOps workflows.

---

## 🛠️ Prerequisites
- AWS account with appropriate IAM permissions  
- Terraform installed on your system (`terraform -v` to check)  
- AWS credentials configured (`aws configure`)  

---

## 📂 Project Structure
The working directory for this task is:

/home/bob/terraform/

Inside it, we maintain a single configuration file:

main.tf
```bash

---

## 📝 Terraform Configuration (`main.tf`)

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "devops_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "devops-vpc"
  }
}

```
