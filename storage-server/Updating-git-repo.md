# 🗂️ Git Repository update — Task 4

This task was part of my **Git as System administrator** challenge, focusing on real-world Git operations across multiple servers in a simulated infrastructure.

---

## 📌 Objective

The Nautilus DevOps team provided a Git repository (`/opt/apps.git`) cloned on the Storage Server at `/usr/src/kodekloudrepos/apps`. A sample HTML file was available on the Jump Host under `/tmp/index.html`.

✅ Goal: Copy `index.html` into the Git repository, commit the change, and push it to the master branch.

---

## 🛠️ Steps Performed

```bash
# On Jump Host: Copy the file to Storage Server
scp /tmp/index.html natasha@ststor01:/home/natasha/

# On Storage Server: Move the file to the Git repo
sudo mv /home/natasha/index.html /usr/src/kodekloudrepos/apps/

# Navigate into the repo
cd /usr/src/kodekloudrepos/apps

# (Optional) Fix permission issues if needed
# sudo chown -R natasha:natasha /usr/src/kodekloudrepos/apps/.git

# Git operations (ran as sudo because of permission issues)
sudo git add index.html
sudo git commit -m "Add index.html"
sudo git push origin master
```
📚 Concepts Practiced
scp: Secure file copy across servers

Git staging (git add), committing, and pushing changes

Working inside a cloned Git repository

Handling Linux permission issues and using sudo correctly

Understanding the role of Jump Hosts and Storage Servers

🧠 Key Takeaways


This task mirrors real-world DevOps tasks where code is maintained in shared repositories on remote servers. File transfers, Git collaboration, and permission handling are daily tasks in system automation and infrastructure-as-code workflows.
