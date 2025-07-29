# 🛡️ EC2 Stop Protection Enabled: nautilus-ec2 (us-east-1)

During the ongoing AWS migration, the Nautilus DevOps team implemented essential safety measures to prevent unintended service disruptions. As part of this process, stop protection was enabled on an EC2 instance to avoid accidental shutdown during critical operations.

---

## ✅ Task Summary

| Attribute             | Value               |
|-----------------------|---------------------|
| **Instance Name**     | `nautilus-ec2`      |
| **Region**            | `us-east-1`         |
| **Protection Enabled**| Stop Protection ✅   |
| **Final State**       | Running             |

---

## 🔧 Steps Performed

1. **Accessed AWS Console**
   - Logged in with temporary credentials for account `637423283722`
   - Region selected: `N. Virginia (us-east-1)`

2. **Located the EC2 Instance**
   - Searched for instance named `nautilus-ec2` in the EC2 dashboard

3. **Enabled Stop Protection**
   - Navigated to:  
     `Actions → Instance Settings → Change Stop Protection`
   - Enabled the setting to prevent accidental stops via console or CLI

4. **Verified the Change**
   - Confirmed that Stop Protection is now marked as `Enabled` under instance details

---

## 🚨 Why Stop Protection Matters

Stop protection is a **best practice** in environments where:
- EC2 instances serve production workloads
- Uptime and availability are critical
- Infrastructure is shared among multiple users or automated systems

It helps prevent **accidental downtimes** caused by:
- Human error (clicking “Stop” instead of “Reboot”)
- Automation scripts misfiring
- Unintended CLI commands

---

## 📸 Screenshot Proof

<img width="746" height="201" alt="image" src="https://github.com/user-attachments/assets/fb73b4c8-dbc0-4705-a5e9-201ead6703f0" />


---

🧠 *This task is part of my hands-on AWS infrastructure hardening experience through KodeKloud’s DevOps bootcamp.*

