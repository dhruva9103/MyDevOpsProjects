
#!/bin/bash

# Update package index
sudo apt-get update

# Install general tools
sudo apt-get install -y curl wget git

# Install Docker
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://lnkd.in/gzmnhDZr | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://lnkd.in/gYzqM6F7 $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Install Docker Compose
sudo curl -L "https://lnkd.in/gpWHm8GE -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install Kubernetes CLI (kubectl)
curl -LO "https://lnkd.in/gmmdYTRT"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# Install Terraform
curl -LO "https://lnkd.in/g4gG7UMe"
unzip https://lnkd.in/gGd6SkR4
sudo mv terraform /usr/local/bin/

# Install Ansible
sudo apt-get install -y ansible

# Install Jenkins
wget -q -O - https://lnkd.in/gZcTTkxA | sudo apt-key add -
sudo sh -c 'echo deb https://lnkd.in/gcMfQxGk binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins

# Install GitLab Runner
curl -L --output /tmp/gitlab-runner.deb "https://lnkd.in/gk7Jgg72"
sudo dpkg -i /tmp/gitlab-runner.deb

# Clean up
sudo apt-get autoremove -y
sudo apt-get clean

echo "DevOps tools installed successfully."
