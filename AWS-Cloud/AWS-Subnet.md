# 🌐 AWS Subnet Creation - Task 4

As part of the ongoing AWS infrastructure migration project led by the Nautilus DevOps team, I successfully created a custom subnet in the default VPC within the `us-east-1` region. This prepares the environment for secure and logically segmented deployment of AWS services.

---

## ✅ Task Summary

Created a new subnet with the following details:

- **Subnet Name**: `nautilus-subnet`
- **VPC**: Default VPC (`172.31.0.0/16`)
- **Subnet IPv4 CIDR Block**: `172.31.100.0/24`
- **Availability Zone**: `us-east-1a`
- **Public IP Assignment**: Off (can be configured later)

---

## 🧠 What I Learned

- Subnets divide a VPC’s IP range into smaller addressable segments
- Every subnet must have a **non-overlapping CIDR block** within the VPC range
- Subnets are mapped to **Availability Zones** for redundancy and availability
- A subnet is required to launch any **EC2**, **RDS**, or **containerized service**

---

## 💡 Real-World Use Case

In real-world cloud architectures:
- Subnets are used to **separate public-facing and private workloads**
- This allows better **security**, **routing control**, and **high availability**
- For example, web servers may sit in a **public subnet**, while databases stay in **private subnets**

---

## 🔧 Tools Used

- **AWS Console**
- **VPC Dashboard**
- **Subnet Planning & CIDR Management**
- **KodeKloud AWS Lab Environment**

---

📌 This marks **Task 4** of my AWS cloud migration journey under system administration, focusing on preparing isolated and scalable networking infrastructure.
<img width="1674" height="559" alt="image" src="https://github.com/user-attachments/assets/6bbc6db9-74f3-402b-ae31-5998980d2c52" />

