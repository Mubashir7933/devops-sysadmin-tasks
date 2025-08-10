# Deploying Nginx (Alpine) Container on Application Server 2

## Task Overview
Deploy an Nginx container named `nginx_2` on **Application Server 2** using the `nginx:alpine` image.  
The container must be in a **running** state after deployment.

---

## Steps

### 1. Verify Docker Installation
Check if Docker is available:
```bash
docker --version
```
2. Pull the Nginx Alpine Image
Download the lightweight Nginx image from Docker Hub:
```bash
docker pull nginx:alpine
```
3. Run the Container
Start a container named nginx_2 in detached mode:
```bash
docker run -d --name nginx_2 nginx:alpine
```
Flags explained:
-d → Run in background
--name nginx_2 → Assigns a custom container name
nginx:alpine → Specifies the image and version

4. Verify Container is Running
List active containers:

```bash
docker ps
```
Expected output should show:

Container Name: nginx_2

Image: nginx:alpine

Status: Up

5. Test Nginx (Optional)
Execute a simple HTTP request inside the container:

```bash
docker exec -it nginx_2 wget -qO- http://localhost
```
