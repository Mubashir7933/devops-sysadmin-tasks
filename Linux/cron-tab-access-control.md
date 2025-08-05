# 🔒 Crontab Access Control: Restricting Users from Scheduling Cron Jobs

## 📌 Scenario

In alignment with security compliance standards, the Nautilus project team has decided to restrict access to the `crontab` utility. Only designated users should be allowed to create or edit cron jobs on **App Server 3**.

---

## 🎯 Objective

- ✅ Allow crontab access to the user: `kirsty`  
- ❌ Deny crontab access to the user: `garrett`  
- 🛑 Ensure access control is applied using system-managed cron policy files

---

## 🧠 Background

Cron jobs are scheduled tasks in Linux, and misuse of crontab can lead to security or performance issues. Linux provides two special files to control access:

| File | Description |
|------|-------------|
| `/etc/cron.allow` | If this file exists, **only users listed here** can use `crontab` |
| `/etc/cron.deny`  | If `cron.allow` doesn't exist, **users listed here are blocked** from using `crontab` |

> 🔐 If both files exist, `/etc/cron.allow` takes priority.

---

## 🪜 Steps to Configure Access

Run the following commands on **App Server 3** to meet the requirements:

### 📦 Bash Command Snippet

```bash
# Step 1: SSH into App Server 3
ssh tony@stapp03

# Step 2: Check if /etc/cron.allow exists (create if not)
ls -l /etc/cron.allow || sudo touch /etc/cron.allow

# Step 3: Allow 'kirsty' to use crontab (overwrite or append if needed)
echo "kirsty" | sudo tee /etc/cron.allow

# Optional: Append without overwriting existing content
# echo "kirsty" | sudo tee -a /etc/cron.allow

# Step 4: Explicitly deny 'garrett' (optional, since he's not in cron.allow)
echo "garrett" | sudo tee /etc/cron.deny

# Step 5 (Optional): Test access for each user
sudo su - kirsty -c "crontab -l"     # Should work (or open with crontab -e)
sudo su - garrett -c "crontab -l"    # Should be denied
