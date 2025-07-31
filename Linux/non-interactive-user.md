## 👤 Creating a Non-Interactive User for Backup Agent Tool

As per the security policies of xFusionCorp Industries, a non-interactive system user named `ravi` was created on App Server 1. This user is intended to run backup agent processes securely without allowing shell login access.

### 🛠️ Command Used

```bash
sudo useradd -s /sbin/nologin ravi
```
<img width="310" height="164" alt="image" src="https://github.com/user-attachments/assets/d3766c97-cc8f-4396-b19a-08b052b12275" />
