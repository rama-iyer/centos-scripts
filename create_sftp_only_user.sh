#!/bin/bash

#### SFTP only User creation script ######

# Creating SFTP User with no shell access
sudo useradd --shell /bin/false sftpuser

# Create Directory for SFTP and set permissions
sudo mkdir -p /sftponly/files
sudo chown sftpuser:sftpuser /sftponly/files
sudo chown root:root /sftponly
sudo chmod 755 /sftponly

# Configure sshd for SFTP Only access for the sftp user
sudo tee /etc/ssh/sshd_config << EOF
Match User sftpuser
	ForceCommand internal-sftp
	PasswordAuthentication yes
	ChrootDirectory /sftponly
	PermitTunnel no
	AllowAgentForwarding no
	AllowTcpForwarding no
	X11Forwarding no
EOF

# Restart ssh to apply changes
sudo systemctl restart ssh

# Add key for login (if needed)
sudo mkdir /home/sftpuser/.ssh
sudo touch /home/sftpuser/.ssh/authorized_keys
sudo tee /home/sftpuser/.ssh/authorized_keys << EOF
<paste your key here>
EOF
sudo chown sftpuser:sftpuser /home/sftpuser/.ssh
sudo chown sftpuser:sftpuser /home/sftpuser/.ssh/authorized_keys
sudo chmod 755 /home/sftpuser/.ssh
