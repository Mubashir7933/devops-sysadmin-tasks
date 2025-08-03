# 🔐 Disable Root SSH Login – Stratos Datacenter (xFusionCorp)

As part of security audit protocols enforced by xFusionCorp Industries, direct root SSH access must be disabled on all application servers within the Stratos Datacenter. This prevents unauthorized full-access entry points and enforces better audit and privilege control.

---

## 🛠️ Bash Commands Used

```bash
# 1. SSH into each App Server (e.g., stapp01)
ssh banner@stapp01

# 2. Edit the SSH daemon configuration
sudo vi /etc/ssh/sshd_config

# 3. Inside the file, find the line:
# PermitRootLogin yes
# and change it to:
PermitRootLogin no

# (Uncomment the line if it’s commented out)

# 4. Save and exit the file (press ESC and type :wq)

# 5. Restart the SSH service to apply changes
sudo systemctl restart sshd

# 6. Verify the change
sudo grep PermitRootLogin /etc/ssh/sshd_config
```
🔍 What This Task Did
Disabled direct SSH access for the root user

Enforced login only via limited users (e.g., banner) who can escalate with sudo

Applied across all App Servers in the Stratos Datacenter

❗ Why This Is Important
🔒 Reduces risk of brute-force attacks on the root user

📜 Improves auditing by identifying real users via logs

🧱 Encourages least privilege policy (no direct root access)

🧠 DevOps Takeaway
Disabling root SSH login is one of the first steps in production hardening. It helps:

Secure the attack surface

Establish user accountability

Enforce safer administrative workflows

