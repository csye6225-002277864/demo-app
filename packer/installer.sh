#!/bin/sh
sudo dnf -y update
# Install Node.js version 20
curl -sL https://rpm.nodesource.com/setup_20.x | sudo bash -
sudo dnf -y install nodejs

# Install MySQL server
sudo dnf -y install mysql-server
sudo systemctl enable mysqld
sudo systemctl start mysqld

mysql -u root  -e "CREATE DATABASE IF NOT EXISTS cloud;"
mysql -u root  -e "CREATE USER '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}' ";
mysql -u root  -e "GRANT ALL PRIVILEGES ON cloud.* TO '${DB_USER}'@'localhost'";

# Install unzip
sudo dnf -y install unzip