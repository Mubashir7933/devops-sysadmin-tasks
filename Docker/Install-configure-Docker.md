# Remove old Docker
sudo yum remove -y docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

# Install deps & add repo
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker CE
sudo yum install -y docker-ce docker-ce-cli containerd.io --nobest

# Start & enable
sudo systemctl start docker && sudo systemctl enable docker

# Verify
docker --version && echo "✅ Docker ready"
