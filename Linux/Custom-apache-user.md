# 🔐 Custom Apache User Creation: `mariyam`

As part of the hardening policy for xFusionCorp Industries' Apache web applications, individual system users are created per application to isolate and secure services. In this task, I created a custom user named `mariyam` on **App Server 1** with the following specs:

## ✅ Task Details

| Parameter        | Value               |
|------------------|---------------------|
| Username         | mariyam             |
| UID              | 1672                |
| Home Directory   | /var/www/mariyam    |
| Server           | App Server 1        |

## ⚙️ Commands Used

```bash
# Check if UID is already in use
getent passwd 1672

# Create home directory (if not already present)
sudo mkdir -p /var/www/mariyam

# Create the user with specific UID and home
sudo useradd -u 1672 -d /var/www/mariyam -m mariyam

# (Optional) Set password
sudo passwd mariyam

# Verify
id mariyam
getent passwd mariyam
ls -ld /var/www/mariyam
```
🔐 Why Use Custom Apache Users?
Security: Isolates applications and minimizes impact of potential breaches

Auditability: Easier to trace actions by user

Scalability: Prepares infrastructure for application-specific configurations

📂 This is part of my ongoing DevOps learning journey — hands-on with system administration, security best practices, and user management on Linux.
