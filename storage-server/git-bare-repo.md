# 📦 Git Bare Repository Setup on Storage Server

This folder documents my hands-on experience setting up a **Git bare repository** on a Storage Server, as part of my DevOps learning journey.

---

## ✅ Task Summary

The goal was to prepare a central Git repository to be used by developers for pushing and pulling code, just like a self-hosted GitHub alternative.

---

## 🧠 What I Did

| Step | Description |
|------|-------------|
| 1️⃣  | SSH'd into the `ststor01` Storage Server |
| 2️⃣  | Installed Git using `yum` package manager |
| 3️⃣  | Created a **bare Git repository** at `/opt/news.git` |
| 4️⃣  | Verified the repository was correctly initialized |

---

## 🧰 Commands Used

```bash
# SSH into the Storage Server
ssh natasha@172.16.238.15

# Install Git
sudo yum install git -y

# Create the bare repository
sudo git init --bare /opt/news.git

# Verify it exists
ls -ld /opt/news.git
```
🔍 Why It Matters
A bare Git repository is used as a central hub for team collaboration. It allows multiple developers to:

Push commits

Pull updates

Sync work without relying on third-party platforms like GitHub

This setup mirrors real-world enterprise Git server configurations, where self-hosted repositories are used for internal development.

📚 Key Concepts Learned
Difference between bare and regular Git repositories

How Git objects store code history

Git repo hosting in a self-managed environment

Practical Linux package management using yum

