🔒 ACL Configuration on /etc/hostname
📝 Task Overview
As part of a security audit within the Stratos DC, the Nautilus production support team was instructed to reconfigure access to the critical file /etc/hostname on App Server 3 using Access Control Lists (ACLs).

🎯 Objectives
Set both user owner and group owner of /etc/hostname to root.

Ensure others have read-only access.

Revoke all permissions from user javed.

Grant read-only permission to user ryan.

⚙️ Commands Used
```bash
sudo chown root:root /etc/hostname
sudo chmod o=r /etc/hostname
sudo setfacl -m u:javed:0 /etc/hostname
sudo setfacl -m u:ryan:r /etc/hostname
getfacl /etc/hostname
```
✅ Result
The final access configuration ensures:
Root has full control as owner.
Others can read the file, but not write or execute.
javed is explicitly denied all access.
ryan is granted read-only access through ACL.
