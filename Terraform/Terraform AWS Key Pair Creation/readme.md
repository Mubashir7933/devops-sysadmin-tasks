# Terraform AWS Key Pair Creation (`xfusion-kp`)

## 📌 Overview
This project demonstrates how to use **Terraform** to create an AWS **Key Pair** with the RSA algorithm, save the private key locally, and manage the process entirely as code.

It is part of the Nautilus DevOps team’s **incremental AWS migration strategy**, where infrastructure changes are deployed in small, controlled steps for minimal disruption and better risk management.

---

## 🧠 Learning Objective
By completing this task, a new DevOps engineer will learn:
- What **Terraform** is and how it works.
- How to use the **TLS** provider to generate keys.
- How to create AWS resources using code instead of the AWS Console.
- How to store sensitive files securely on the local system.

---

## 🛠 Task Requirements
1. **Key Pair Name** → `xfusion-kp`
2. **Key Type** → RSA
3. **Private Key Location** → `/home/bob/xfusion-kp.pem`
4. **Terraform Working Directory** → `/home/bob/terraform`
5. **Only use `main.tf`** (no separate `.tf` files)

---

## 📂 Project Structure
terraform/
└── main.tf
