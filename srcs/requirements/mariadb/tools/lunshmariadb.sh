#!/bin/bash

# Start the MySQL service
service mysql start

# Run MySQL commands
mysql -e "CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${DB_USER}\`@'%' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO \`${DB_USER}\`@'%' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -e "ALTER USER 'root'@'%' IDENTIFIED BY '${DB_ROOT_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"

# Shutdown MySQL
mysqladmin -u root -p$DB_ROOT_PASSWORD shutdown

# Start MySQL safely
exec mysqld_safe

