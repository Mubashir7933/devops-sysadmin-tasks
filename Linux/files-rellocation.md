# 🧹 Filter and Copy User Files (ravi) – Nautilus App Server 1

Due to a data mix-up, user files under `/home/usersdata` got mingled. As part of the cleanup process, files owned by the user `ravi` were filtered and copied to `/official` without modifying the original files or directories.

---

## 🛠️ Bash Commands Used

```bash
# 1. Locate and copy all files (not directories) owned by 'ravi'
#    from /home/usersdata to /official, preserving full path
sudo find /home/usersdata -type f -user ravi -exec cp --parents {} /official \;

# 2. (Optional) Verify copied files
sudo find /official -type f

# 3. (Optional) Count files copied to cross-check
sudo find /home/usersdata -type f -user ravi | wc -l
sudo find /official -type f | wc -l
```
📚 DevOps Insight
This task is a great example of:

Access-based filtering using find

Safe file handling with preserved structure

Unix command chaining for automation and audits
