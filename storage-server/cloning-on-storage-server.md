# 📁 Git Tasks -  Cloning Repositories  

These are my notes and hands-on documentation for Git concepts using both the **CLI** . Task 2 focuses on cloning a local repo.
---

## 🔧 Task 2: Clone Existing Git Repository (CLI)

🎯 **Objective:**  
Clone the existing Git repository `/opt/ecommerce.git` into the target directory `/usr/src/kodekloudrepos` on the **Storage Server**, without making any modifications.

### ✅ Steps Performed

```bash
# 1. SSH into the storage server as user natasha
ssh natasha@ststor01

# 2. Navigate to the target location
cd /usr/src
sudo mkdir -p kodekloudrepos
cd kodekloudrepos

# 3. Clone the repository
sudo git clone /opt/ecommerce.git

# 4. Navigate into the cloned repo and check status
cd ecommerce
git config --global --add safe.directory /usr/src/kodekloudrepos/ecommerce
git status
```
