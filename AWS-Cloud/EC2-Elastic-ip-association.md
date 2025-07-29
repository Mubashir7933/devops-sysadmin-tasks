# 🌐 Elastic IP Association: nautilus-ec2 ← nautilus-ec2-eip (us-east-1)

As part of ongoing infrastructure deployment on AWS, the Nautilus DevOps team assigned a static public IP (Elastic IP) to a key instance to ensure consistent public accessibility. This is essential for DNS pointing, stable remote access, and high-availability configurations.

---

## ✅ Task Summary

| Attribute            | Value                 |
|----------------------|-----------------------|
| **Instance Name**    | `nautilus-ec2`        |
| **Elastic IP Name**  | `nautilus-ec2-eip`    |
| **Region**           | `us-east-1`           |
| **Action**           | EIP Attached to EC2   |
| **Final State**      | `nautilus-ec2` now has public IP via EIP |

---

## 🛠️ Steps Performed

1. **Logged into AWS Console**
   - Used temporary credentials for AWS account `533267155812`
   - Region: `us-east-1`

2. **Located Resources**
   - Navigated to **Elastic IPs**, identified EIP with Name: `nautilus-ec2-eip`
   - Navigated to **Instances**, identified EC2 with Name: `nautilus-ec2`

3. **Associated Elastic IP**
   - Selected the EIP and clicked:
     `Actions → Associate Elastic IP`
   - Chose:
     - **Resource Type**: EC2 instance
     - **Instance**: `nautilus-ec2`
     - **Private IP**: auto-selected
   - Clicked **Associate**

4. **Validation**
   - Confirmed the EC2 instance now reflects the Elastic IP in the **Public IPv4 address** field

---

## 🌐 Why Elastic IP Matters

Elastic IPs provide:
- 🔗 **Consistent public IP** even across instance restarts
- 🛰️ **Reliable DNS configuration** for external services
- 🔐 **Remote access stability** for DevOps and monitoring tools

This is especially important in production systems where **IP whitelisting**, **SSL certificates**, and **uptime reliability** are critical.

---

## 📸 Screenshot Proof

<img width="905" height="313" alt="image" src="https://github.com/user-attachments/assets/4d67a374-b037-48e5-b84f-1e3efdb0433c" />


---

🧠 *This task was completed as part of my AWS DevOps hands-on learning journey via KodeKloud, focusing on real-world infrastructure operations.*

