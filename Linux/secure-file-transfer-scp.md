# 🚀 Secure File Transfer Using `scp` from Jump Host to App Server

## 📘 Scenario

A Nautilus developer has stored confidential data on the **Jump Host** within the Stratos Datacenter. For security and compliance, this data needs to be transferred to **App Server 3**, but developers do **not** have direct access to the app servers. The **System Admin team** must perform the transfer from the **Jump Host**.

---

## 🎯 Objective

- 📂 Source file: `/tmp/nautilus.txt.gpg` (on the Jump Host)
- 📁 Destination path: `/home/opt` (on App Server 3)
- 🛑 Do not log into App Server 3 just to copy — use `scp` from the Jump Host

---

## 🧠 Background

In secure environments, direct access to production servers is limited. A **jump host** (or bastion host) is often used to act as a middle layer for controlled access.

Using `scp` (secure copy), we can copy files **over SSH** from one machine to another — without switching between sessions.

---

## 🪜 Step-by-Step Instructions

Run these commands **on the Jump Host**:

### 📦 Bash Command Snippet

```bash
# Step 1: Confirm you're on the Jump Host
whoami
hostname
pwd

# Step 2: Check if the source file exists
ls -l /tmp/nautilus.txt.gpg

# Step 3: Copy the file from Jump Host to App Server 3
scp /tmp/nautilus.txt.gpg tony@stapp03:/home/opt/

# Step 4 (Optional): Verify it was copied by logging into App Server 3
ssh tony@stapp03
ls -l /home/opt/nautilus.txt.gpg
```

🧠 Command Breakdown
Command	Purpose
scp	Securely copies files between machines over SSH
/tmp/nautilus.txt.gpg	Path to the file you're copying (on Jump Host)
tony@stapp03	Remote user (tony) on destination server (stapp03)
/home/opt/	Target directory on App Server 3

