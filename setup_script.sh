#!/bin/bash

sudo apt-get update

sudo apt install -y python3-pip nginx

#sudo vim /etc/nginx/sites-enabled/fastapi_nginx


# Define the filename
filename="/etc/nginx/sites-enabled/fastapi_nginx"



# Get the IP address from user input
read -p "Enter the server IP address: " server_ip

# Add the configuration to the file
echo "server {" >> "$filename"
echo "    listen 80;" >> "$filename"
echo "    server_name $server_ip;" >> "$filename"
echo "    location / {" >> "$filename"
echo "        proxy_pass http://127.0.0.1:8000;" >> "$filename"
echo "    }" >> "$filename"
echo "}" >> "$filename"

echo "Configuration added to $filename."


sudo service nginx restart

pip install --upgrade pip

git clone https://github.com/JenilPadshala/job-rec-sys.git

cd job-rec-sys

pip3 install -r requirements.txt
