# 🛡️ EC2 Termination Protection Enabled: devops-ec2 (us-east-1)

During the AWS migration phase, the Nautilus DevOps team identified that a critical EC2 instance lacked termination protection. To prevent accidental deletion and ensure service continuity, termination protection was enabled on the instance named `devops-ec2`.

---

## ✅ Task Summary

| Attribute                | Value             |
|--------------------------|-------------------|
| **Instance Name**        | `devops-ec2`      |
| **Region**               | `us-east-1`       |
| **Termination Protection** | ✅ Enabled         |
| **Final State**          | Running           |

---

## 🛠️ Steps Performed

1. **Logged into AWS Console**
   - Used temporary credentials for account `891376908875`
   - Verified region: `us-east-1`

2. **Located the Target EC2 Instance**
   - Used the EC2 dashboard to search for instance `devops-ec2`

3. **Enabled Termination Protection**
   - Navigated to:  
     `Actions → Instance Settings → Change Termination Protection`
   - Enabled the setting to prevent accidental termination

4. **Verified Setting**
   - Confirmed from the instance detail page that **Termination Protection** is now enabled

---

## 🧠 Why Termination Protection Matters

Termination protection is an important safety feature for cloud environments where:
- The EC2 instance runs essential production services
- There's a risk of accidental deletion by users or scripts
- Uptime and continuity are top priorities

By enabling this setting, you ensure the instance cannot be terminated unless protection is manually turned off first.

---

🧠 *This task is part of my AWS DevOps learning journey through KodeKloud, where I focus on building resilient cloud infrastructure with best practices.*

