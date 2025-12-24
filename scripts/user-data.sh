#!/bin/bash
# User data script to start a simple Python HTTP server

# Update system packages
apt update -y

# Install Python (usually preinstalled, but ensured here)
apt install -y python3

# Create application directory
mkdir -p /home/ubuntu/app
cd /home/ubuntu/app

# Create a simple index.html file
cat <<EOF > index.html
<h1>AWS secure production project</h1>
<p>App in instance of subnet-01</p>
EOF

# Start Python HTTP server on port 8000
nohup python3 -m http.server 8000 &
