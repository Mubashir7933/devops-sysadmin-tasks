🔐 Grant Executable Permissions to Bash Script
📝 Task Overview
The system administrator team at xFusionCorp Industries deployed a script named xfusioncorp.sh to /tmp on App Server 1. However, the script lacked the necessary executable permissions. The objective was to ensure the script is executable by all users.

📂 File Location
```bash
/tmp/xfusioncorp.sh
```
⚙️ Commands Used
```bash
sudo chmod 755 /tmp/xfusioncorp.sh
ls -l /tmp/xfusioncorp.sh
```
🔍 Resulting Permission Breakdown
```bash
-rwxr-xr-x 1 root root 40 Aug  4 09:30 /tmp/xfusioncorp.sh
```
Entity	Permission	Description
Owner	rwx	Read, write, and execute
Group	r-x	Read and execute
Others	r-x	Read and execute

This ensures the script can be safely executed by any user, while only the root user (owner) can modify it.
