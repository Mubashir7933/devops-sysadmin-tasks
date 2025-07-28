# 🌐 AWS Elastic IP Allocation - Task 5

As part of the incremental AWS cloud migration strategy by the Nautilus DevOps team, this task involved allocating a static public IP address (Elastic IP) to be used in future phases of the project.

---

## ✅ Task Summary

Allocated a new **Elastic IP (EIP)** with the following configuration:

- **Elastic IP Address**: `34.192.167.205`
- **Tag (Name)**: `datacenter-eip`
- **Region**: `us-east-1` (N. Virginia)
- **Association**: Not yet assigned to any EC2 instance (reserved for later)

---

## 🧠 What I Learned

- Elastic IPs are **static public IP addresses** in AWS that do not change between restarts
- They are essential when stable IP communication is required — for web servers, DNS, VPNs, etc.
- Reserved EIPs **do incur cost** if not attached to a running instance, so must be managed responsibly
- Tagging helps organize cloud resources and maintain clarity across a growing infrastructure

---

## 💡 Real-World Use Case

Elastic IPs are used in:
- Web applications needing a **fixed IP address** for firewall rules or DNS mapping
- **NAT Gateways** or **Bastion Hosts** requiring public access
- Staging or production environments needing externally accessible endpoints

---

## 🔧 Tools Used

- **AWS Console**
- **EC2 Dashboard → Elastic IPs**
- **Resource Tagging**
- **KodeKloud AWS Lab Environment**

---

📌 This is Task 5 in my AWS Cloud System Administration track. The Elastic IP is now available for association with EC2 or NAT Gateway in future steps.
<img width="1676" height="452" alt="image" src="https://github.com/user-attachments/assets/1b0eb136-ce64-4ce9-aa8e-974e5b4daec2" />

