# 🧱 Terraform Task — Create AMI from EC2 Instance

## 📘 Overview
This project demonstrates how to **create an Amazon Machine Image (AMI)** from an **existing EC2 instance** using **Terraform**.  
It simulates a real-world DevOps workflow where infrastructure migration to AWS is performed in **incremental phases** — creating reusable images before scaling or redeploying environments.

The AMI can later be used to launch new EC2 instances with the same configuration, software, and data as the original machine.

---

## 🧩 Task Description
The Nautilus DevOps team decided to migrate a portion of their infrastructure to AWS gradually.  
As part of this migration, the goal of this task is to:

- Provision an EC2 instance named **`devops-ec2`**.
- Create an AMI from that instance named **`devops-ec2-ami`**.
- Ensure that the AMI reaches the **`available`** state before completion.

All operations are automated and managed using Terraform.

---

## ⚙️ Terraform Configuration

The main Terraform configuration is written inside **`main.tf`** located at:
## 🛠 main.tf Configuration

```hcl
provider "aws" {
  region = "us-east-1"
}

# Create EC2 instance
resource "aws_instance" "ec2" {
  ami                    = "ami-0c101f26f147fa7fd"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-234905be50d8f684e"]

  tags = {
    Name = "devops-ec2"
  }
}

# Create AMI from the new EC2
resource "aws_ami_from_instance" "devops_ami" {
  name               = "devops-ec2-ami"
  source_instance_id = aws_instance.ec2.id
  description        = "AMI created from devops-ec2"
  depends_on         = [aws_instance.ec2]
}
```
## 💡 Notes

- The AMI is **region-specific** (`us-east-1` in this example).
- If you **re-apply Terraform**, it will **not recreate** the AMI unless the instance configuration changes.
- You can reuse this AMI to **launch identical EC2 instances** in future environments or deployments.

---

## 🧠 Learning Takeaways

- Understand how to automate image creation via **Infrastructure as Code (IaC)**.
- Learn the Terraform **resource dependency model** using the `depends_on` argument.
- See how AWS AMIs support the **immutable infrastructure** design pattern for safer, reproducible environments.
