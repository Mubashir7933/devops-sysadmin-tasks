# 🚀 Terraform Task: Create a CloudWatch Alarm for EC2 CPU Utilization

## 📘 Task Overview
The Nautilus DevOps team is setting up AWS monitoring as part of their infrastructure automation initiative.  
This task involves creating a **CloudWatch Alarm** using Terraform that monitors an **EC2 instance’s CPU utilization** and triggers when it exceeds **80%**.

The configuration is implemented entirely in a single `main.tf` file under `/home/bob/terraform`.

---

## 🎯 Objectives

1. Create an **EC2 instance** for testing.
2. Set up a **CloudWatch alarm** named `xfusion-alarm`.
3. Monitor the instance’s **CPU utilization**.
4. Trigger the alarm when CPU exceeds **80%**.
5. Use a **5-minute evaluation period**.
6. All configuration must be done via **Terraform only** (no manual AWS Console setup).

---

## ⚙️ Final `main.tf` Configuration

```hcl
provider "aws" {
  region = "us-east-1"
}

# Create an EC2 instance
resource "aws_instance" "devops_instance" {
  ami           = "ami-0c94855ba95c71c99"  # Amazon Linux 2 AMI (replace if unavailable)
  instance_type = "t2.micro"

  tags = {
    Name = "devops-instance"
  }
}

# Create a CloudWatch alarm for the instance's CPU utilization
resource "aws_cloudwatch_metric_alarm" "xfusion_alarm" {
  alarm_name          = "xfusion-alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300                    # 5 minutes = 300 seconds
  statistic           = "Average"
  threshold           = 80                     # Trigger when CPU > 80%
  alarm_description   = "Triggered when EC2 CPU utilization exceeds 80%."

  dimensions = {
    InstanceId = aws_instance.devops_instance.id
  }

  actions_enabled = false                      # No SNS/notification for simplicity
}
