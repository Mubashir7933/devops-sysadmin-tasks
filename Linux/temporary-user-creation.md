# 🔐 Temporary User Creation with Expiry – Nautilus Project

As part of the Nautilus DevOps team's access control strategy, temporary users are created for developers who require time-limited access to servers. This ensures secure, compliant, and automated deactivation of user accounts once the access period is over.

---

## 🛠️ Bash Commands Used

```bash
# 1. SSH into App Server 1
ssh banner@stapp01

# 2. Create user 'john' with an expiry date of 2024-02-17
sudo useradd -e 2024-02-17 john

# 3. (Optional) Set a password for the user
sudo passwd john

# 4. Verify that the expiry date is set correctly
sudo chage -l john
```
🧩 Task Summary
Username: john

Purpose: Temporary developer access

Expiry Date: 2024-02-17

Server: App Server 1 in Stratos Datacenter

✅ Result
User john was successfully created with the desired expiry date.

After February 17, 2024, the account will be automatically disabled.

This approach supports secure, temporary access aligned with DevOps best practices.

🧠 Key Takeaways
Use useradd -e to automate account deactivation.

Validate expiry using chage -l <username>.

Enhances access control, reduces human error, and supports audit compliance.

📚 DevOps Relevance
This task demonstrates real-world user lifecycle management, especially for:

Interns

Contractors

Temporary developers

It reflects how DevOps engineers can balance agility and security in shared infrastructure.
