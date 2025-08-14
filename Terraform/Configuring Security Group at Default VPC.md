# 🚀 Terraform: Create a Security Group in the Default VPC

## 📜 Task Overview
We’re creating an **AWS Security Group** in the **default VPC** (us-east-1) using Terraform.  
This SG will allow **HTTP** and **SSH** access from anywhere, perfect for lab/demo purposes.

---

## 📌 Requirements for creating security group
1. **Name:** `xfusion-sg`  
2. **Description:** `Security group for Nautilus App Servers`  
3. **Inbound Rules:**
   - HTTP → Port **80**, Source **0.0.0.0/0**
   - SSH → Port **22**, Source **0.0.0.0/0**
4. Create in the **default VPC** in **us-east-1**  
5. All code in a **single file**: `main.tf` inside `/home/bob/terraform`

---

## 🛠 main.tf
```hcl
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Look up default VPC
data "aws_vpc" "default" {
  default = true
}

# Create Security Group
resource "aws_security_group" "xfusion_sg" {
  name        = "xfusion-sg"
  description = "Security group for Nautilus App Servers"
  vpc_id      = data.aws_vpc.default.id

  # Allow HTTP from anywhere
  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow SSH from anywhere
  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "xfusion-sg"
  }
}

output "security_group_id" {
  value = aws_security_group.xfusion_sg.id
}
