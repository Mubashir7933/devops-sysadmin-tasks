# AWS VPC: `datacenter-vpc` (Terraform, us-east-1)

## 📌 Overview
An **Amazon Virtual Private Cloud (VPC)** provides a logically isolated section of the AWS cloud where resources can be launched in a secure, controlled network environment.  
The configuration defines the following key parameters:  

- **Region** – The geographic AWS location where the VPC will be provisioned (`us-east-1`).  
- **CIDR Block** – The IPv4 address range allocated to the VPC (`192.168.0.0/24`), which determines the number of available IP addresses.  
- **Tags** – Metadata applied to the resource, in this case naming the VPC as `datacenter-vpc` for easy identification and management.  

**Terraform** is used as the Infrastructure as Code (IaC) tool to declaratively provision this environment. By defining the infrastructure in a configuration file (`main.tf`), the setup becomes version-controlled, repeatable, and consistent across environments. This ensures infrastructure changes can be applied, reviewed, and rolled back with confidence.  
---

## 📂 Working Directory
All files live in:
/home/bob/terraform

## main.tf

```bash

---

## 📝 `main.tf`
```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "datacenter_vpc" {
  cidr_block = "192.168.0.0/24"

  tags = {
    Name = "datacenter-vpc"
  }
}
```
What this does

- Uses AWS in N. Virginia (us-east-1)

- Creates a VPC with CIDR 192.168.0.0/24 (256 IPs: .0–.255)

- Tags it Name = datacenter-vpc so it’s easy to spot in the console
