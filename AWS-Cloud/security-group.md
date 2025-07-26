# 🔐 AWS Security Group Creation - Task 2

As part of my AWS Cloud migration learning journey on **KodeKloud**, this task focused on setting up a **Security Group** to safely manage access to EC2 instances during infrastructure migration.

---

## ✅ Task Overview

Created a **Security Group** under the default VPC in the `us-east-1` region with the following configuration:

- **Name**: `xfusion-sg`
- **Description**: `Security group for Nautilus App Servers`
- **Inbound Rules**:
  - **HTTP (Port 80)** from `0.0.0.0/0` – allows public web access
  - **SSH (Port 22)** from `0.0.0.0/0` – allows remote admin access

> 🌐 `0.0.0.0/0` means access is allowed from anywhere (used for testing; in production, restrict it to specific IPs).

---

## 📚 What I Learned

- How **Security Groups** act as **instance-level firewalls** in AWS
- The difference between **inbound** and **outbound** traffic controls
- The importance of **opening only necessary ports** to protect cloud infrastructure
- Why security groups are crucial in **phased infrastructure migrations**

---

## 💡 Real-World Context

This task is part of a simulated migration by the Nautilus DevOps team, where security groups are used to:
- Safely expose application servers to the web
- Enable admin SSH access for configuration
- Maintain strict control over what kind of traffic is allowed

---

## 🔧 Tools Used

- **AWS Console**
- **EC2 Service**
- **Security Group Management**
- **KodeKloud AWS Labs**

---

🚀 This is my second documented cloud task toward mastering AWS and DevOps skills.
