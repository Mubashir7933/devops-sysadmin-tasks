# 🚀 Terraform Task: Create Snapshot of an Existing EBS Volume

## 📘 Task Overview
The Nautilus DevOps team wanted to automate regular backups for their critical data by taking snapshots of existing EBS volumes.  
This task involved creating a **snapshot** of an existing volume named `devops-vol` in the **us-east-1** region using Terraform.

---

## 🎯 Objectives

1. Create a snapshot of the existing volume `devops-vol`.
2. Snapshot name: **`devops-vol-ss`**
3. Description: **`Devops Snapshot`**
4. Ensure the snapshot status becomes **`completed`**.
5. Use only **`main.tf`** (no additional files).

---

## ⚙️ Final `main.tf` Configuration

```hcl
provider "aws" {
  region = "us-east-1"
}

# Create snapshot directly from an existing volume
resource "aws_ebs_snapshot" "devops_vol_ss" {
  volume_id   = "vol-b32fc1d96de796804" # replace with your actual Volume ID
  description = "Devops Snapshot"

  tags = {
    Name = "devops-vol-ss"
  }
}
