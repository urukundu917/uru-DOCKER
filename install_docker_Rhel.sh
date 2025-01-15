#!/bin/bash

# Exit script on error
set -e

# Function to check if the script is run as root
check_root() {
  if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root or use sudo."
    exit 1
  fi
}

# Step 1: Uninstall old versions of Docker
uninstall_old_versions() {
  echo "Uninstalling old Docker versions, if any..."
  yum remove -y docker \
                 docker-client \
                 docker-client-latest \
                 docker-common \
                 docker-latest \
                 docker-latest-logrotate \
                 docker-logrotate \
                 docker-engine || true
  echo "Old Docker versions uninstalled."
}

# Step 2: Set up the repository
setup_repository() {
  echo "Setting up the Docker repository..."
  yum install -y yum-utils
  yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/rhel/docker-ce.repo
  echo "Docker repository configured."
}

# Step 3: Install Docker Engine
install_docker() {
  echo "Installing Docker Engine..."
  yum install -y docker-ce docker-ce-cli containerd.io
  echo "Docker Engine installed."
}

# Step 4: Start and enable Docker service
start_docker_service() {
  echo "Starting and enabling Docker service..."
  systemctl start docker
  systemctl enable docker
  echo "Docker service started and enabled."
}

# Step 5: Verify Docker installation
verify_docker_installation() {
  echo "Verifying Docker installation..."
  docker --version
  echo "Docker installed successfully!"
}

# Execute functions
check_root
uninstall_old_versions
setup_repository
install_docker
start_docker_service
verify_docker_installation

echo "Docker installation script completed successfully."
