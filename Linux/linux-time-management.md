# 🕒 Linux Timezone Management

This folder contains documentation for managing timezone settings across Linux systems in a secure and consistent way — essential for DevOps engineers and system administrators working with distributed systems.

---

## 📌 Task: Set Timezone to `Indian/Maldives` Across Nautilus App Servers

### 🧠 Context

The Nautilus App Servers in the Stratos Datacenter have inconsistent timezone settings. This leads to issues such as:

- ❌ Log timestamps not matching between servers
- ❌ Cron jobs running at incorrect times
- ❌ Problems with monitoring and auditing tools

To resolve this, all relevant servers must be updated to match the datacenter standard timezone:  
➡️ **`Indian/Maldives (MVT, UTC+05:00)`**

---

### 🎯 Objective

- Set the **default system timezone** on:
  - ✅ Nautilus DB Server
  - ✅ Nautilus Storage Server
  - ✅ Nautilus Backup Server
  - ✅ Nautilus Mail Server
- Ensure the setting is **persistent**.
- Do **not** reboot the servers.

---

### 🪜 Step-by-Step Instructions

Run the following on each App Server listed above:

```bash
# Step 1: SSH into the server
ssh tony@stapp01      # For DB Server
ssh steve@stapp02     # For Storage Server
ssh banner@stapp03    # For Backup or Mail Server

# Step 2: Check current timezone
timedatectl

# Step 3: Set timezone to Indian/Maldives
sudo timedatectl set-timezone Indian/Maldives

# Step 4: Verify the change
timedatectl | grep "Time zone"
date
```
📘 Why Use timedatectl?
Command	Description
timedatectl	Displays and manages time settings
set-timezone	Safely updates system timezone via systemd
date	Shows the current system time using the configured timezone

🔐 Why This Matters in DevOps
🧩 Log consistency across all nodes in a distributed environment

⏰ Scheduled jobs (e.g., cron) run at the correct local time

📊 Monitoring & alerting tools (e.g., Prometheus, Grafana, ELK) rely on consistent time references
