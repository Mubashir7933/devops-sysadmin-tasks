📁 Developer Data Archiving: siva
📝 Task Overview
This task was performed on the Nautilus Storage Server within the Stratos Datacenter. Developer siva requested a backup of their non-confidential data located at /data/siva. The following operations were completed:

Created a compressed archive of the /data/siva directory.

Transferred the archive to the /home directory.
```bash
cd /data
tar -czvf siva.tar.gz siva
mv siva.tar.gz /home/
```
✅ Result
Archive siva.tar.gz successfully created.

Archive transferred to /home for further access or download.

