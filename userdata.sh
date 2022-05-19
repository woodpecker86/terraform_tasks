#!/bin/sh
sudo amazon-linux-extras install -y nginx1
sudo systemctl start nginx
sudo systemctl enable nginx
echo "The page was created by the user data" | sudo tee /usr/share/nginx/html/index.html