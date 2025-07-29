# 🚀 EC2 Instance Launch: datacenter-ec2 (Amazon Linux)

As part of our staged migration strategy to AWS Cloud, we created a baseline EC2 instance following best practices for infrastructure setup in a production-like environment.

## ✅ Task Summary

This task simulates a real-world scenario where a DevOps team (Nautilus) begins cloud migration in incremental steps. For this purpose, an EC2 instance was deployed in **us-east-1** with the following configuration:

| Setting              | Value                    |
|----------------------|--------------------------|
| **Instance Name**    | `datacenter-ec2`         |
| **AMI**              | Amazon Linux 2023        |
| **Instance Type**    | `t2.micro`               |
| **Region**           | `us-east-1`              |
| **Key Pair**         | `datacenter-kp` (RSA)    |
| **Security Group**   | Default (open HTTP/SSH)  |

## 🛠️ Steps Performed

1. **Login to AWS Console**  
   Using temporary credentials, accessed the AWS Console and selected the N. Virginia (us-east-1) region.

2. **Key Pair Creation**  
   Created an RSA key pair named `datacenter-kp`. This key was downloaded in `.pem` format for secure SSH access.

3. **Instance Launch**
   - Selected Amazon Linux AMI (latest)
   - Chose `t2.micro` for cost-effective usage
   - Attached `datacenter-kp` for authentication
   - Used the default VPC and default security group

4. **Verification**
   - Verified instance name and status from EC2 dashboard
   - Confirmed networking and access permissions

## 📸 Screenshot Proof

_(Add screenshot showing the EC2 instance `datacenter-ec2` running in the AWS Console)_

## 🌐 Real-World Relevance

This setup mirrors how DevOps teams begin transitioning legacy infrastructure to the cloud:
- Secure access via RSA keys
- Controlled network access via Security Groups
- Incremental rollout of cloud services

## 🔐 Notes

- Key pairs must be stored securely for SSH access.
- Security groups should later be refined for least privilege.
- Default VPC is used for simplicity in test environments.

---

🧠 *This task was part of my hands-on AWS & DevOps training via KodeKloud.*
<img width="1642" height="539" alt="image" src="https://github.com/user-attachments/assets/2558de36-309d-4c24-9eb7-053ed91c468d" />



