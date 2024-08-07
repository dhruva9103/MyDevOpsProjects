
#!/bin/bash

# Update package index
sudo apt-get update

# Install general tools
sudo apt-get install -y curl wget git

# Install Docker
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://lnkd.in/gzmnhDZr | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu/ $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install Kubernetes CLI (kubectl)
curl -LO "https://dl.k8s.io/release/v1.26.0/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl            

# Install Terraform
curl -LO "https://releases.hashicorp.com/terraform/1.5.3/terraform_1.5.3_linux_amd64.zip"
unzip https://releases.hashicorp.com/terraform/1.5.3/terraform_1.5.3_linux_amd64.zip
sudo mv terraform /usr/local/bin/

# Install Ansible
sudo apt-get install -y ansible

# Install Jenkins
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins

# Clean up
sudo apt-get autoremove -y
sudo apt-get clean

echo "DevOps tools installed successfully."
