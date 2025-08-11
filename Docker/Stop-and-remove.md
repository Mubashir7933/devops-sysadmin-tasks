# Stop and Remove a Docker Container on App Server

This guide documents the steps to connect to an App Server via SSH, identify a running Docker container, stop it, and remove it.

---

## **Steps**

```bash
# ===== 1. SSH into the target App Server =====
# From the jump host, connect to the App Server (replace with correct username and hostname/IP)
ssh tony@stapp01

# The first time connecting, you may see a fingerprint warning.
# Type 'yes' to continue, then enter the user password when prompted.

# ===== 2. List running Docker containers =====
docker ps

# This shows all running containers with details:
# CONTAINER ID   IMAGE     COMMAND               CREATED              STATUS              PORTS     NAMES

# ===== 3. Stop the target container =====
# Replace <container_id> with the actual container ID from `docker ps`
docker stop f483c447a9b0

# ===== 4. Verify the container has stopped =====
docker ps
# This should return no results if there are no running containers.

# ===== 5. Remove the stopped container =====
docker rm f483c447a9b0

# ===== 6. Verify removal =====
# This should return nothing if the container is fully removed
docker ps -a
```
