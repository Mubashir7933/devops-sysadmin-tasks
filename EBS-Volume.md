# AWS EBS Volume Creation using Terraform

## 🧩 Overview
This project demonstrates how to create an **Amazon EBS (Elastic Block Store) volume** using **Terraform** as part of incremental AWS cloud migration practice on the **KodeKloud Engineer** platform.

The goal is to define infrastructure as code (IaC) for provisioning persistent storage that can be attached to EC2 instances for application data, logs, or system files.

---

## ⚙️ Task Description
The Nautilus DevOps team is migrating parts of their infrastructure to AWS in smaller, manageable steps.  
In this task, we create an **EBS volume** with specific configurations using Terraform.

### Requirements:
- **Volume Name:** `xfusion-volume`  
- **Volume Type:** `gp3`  
- **Volume Size:** `2 GiB`  
- **Region:** `us-east-1`  
- **Terraform File:** `main.tf`  

---

## 🏗️ Terraform Configuration
Below is the main Terraform configuration used for this task:

```hcl
# main.tf

provider "aws" {
  region = "us-east-1"
}

resource "aws_ebs_volume" "xfusion_volume" {
  availability_zone = "us-east-1a"
  size              = 2
  type              = "gp3"

  tags = {
    Name = "xfusion-volume"
  }
}
