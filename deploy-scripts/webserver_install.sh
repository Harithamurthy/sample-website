#!/usr/bin/env bash
set -e
apt update -y
apt install nginx -y
systemctl enable nginx
systemctl start nginx

chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# Remove Ubuntu’s default Nginx placeholder page
rm -f /var/www/html/index.html /var/www/html/index.nginx-debian.html || true
