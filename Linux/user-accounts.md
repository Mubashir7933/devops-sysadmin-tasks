# 👥 Group-Based Access Control: nautilus_developers (Stratos Datacenter)

To support centralized access management, the system admin team at xFusionCorp Industries implemented group-based permissions across the App server fleet. In this task, I configured a development group across all app servers to manage access securely and consistently.

---

## ✅ Task Objective

| Task                             | Description                              |
|----------------------------------|------------------------------------------|
| **Group Name**                   | `nautilus_developers`                    |
| **User Added**                   | `sonya`                                  |
| **Servers Affected**             | App Server 1, App Server 2, App Server 3 |
| **Environment**                  | Stratos Datacenter (via Jump Host)       |

---

## 🛠️ Steps Performed on Each App Server

1. **SSH into each App Server**
   ```bash
   ssh tony@stapp01   # App Server 1
   ssh steve@stapp02  # App Server 2
   ssh banner@stapp03 # App Server 3

   # Create group if not exists
   sudo groupadd nautilus_developers

   # Create user 'sonya' if it doesn't exist
   if ! id sonya &>/dev/null; then
   sudo useradd sonya
   fi

   # Add user to the group
   sudo usermod -aG nautilus_developers sonya

   # Verify group membership
   id sonya
   ```

🔐 Why This Matters
Implementing group-based access control offers several benefits:

✅ Easier permission management

✅ Enhanced security through least privilege

✅ Simplified automation of user role assignments

This is a foundational skill for DevOps engineers and system administrators, particularly when managing large fleets of Linux servers in production.

🧠 This task was part of my Linux server administration practice as I build hands-on experience in real-world DevOps tasks via KodeKloud and AWS.
