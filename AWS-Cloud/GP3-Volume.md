# 💽 AWS EBS Volume Creation - Task 3

This task is part of the incremental AWS Cloud migration strategy by the Nautilus DevOps team. The goal was to provision a dedicated **EBS volume** (cloud-based storage disk) in the `us-east-1` region to support upcoming EC2-based application deployments.

---

## ✅ Task Summary

Created an **Elastic Block Store (EBS) volume** with the following properties:

- **Name**: `nautilus-volume`
- **Type**: `gp3` (General Purpose SSD)
- **Size**: `2 GiB`
- **Region**: `us-east-1` (N. Virginia)

This volume will later be attached to an EC2 instance as part of infrastructure provisioning for the Nautilus migration project.

---

## 🧠 What I Learned

- EBS volumes are like **virtual hard drives** in AWS
- They must be provisioned in the **same Availability Zone** as the EC2 instance they will attach to
- **gp3 volumes** offer customizable performance and are ideal for general-purpose workloads
- Creating volumes is a critical first step before migrating files or running applications in the cloud

---

## 💡 Real-World Use Case

In real infrastructure migration projects:
- EBS volumes are created to **store application data**, **logs**, **databases**, or **boot OS**
- They help decouple storage from compute, providing flexibility and durability
- Snapshots of EBS volumes can be used for **backups** or **cloning environments**

---

## 🔧 Tools Used

- **AWS Console**
- **EC2 Service → Elastic Block Store**
- **KodeKloud AWS Lab Environment**

---

📌 This task represents the **third phase** of my practical AWS learning journey and cloud infrastructure migration experience.

<img width="830" height="158" alt="image" src="https://github.com/user-attachments/assets/e4b5f26d-617d-4b11-866f-49ed13275f82" />
