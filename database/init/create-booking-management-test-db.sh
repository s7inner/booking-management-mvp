#!/usr/bin/env bash

# Create database for testing environment
mysql --user=root --password="$MYSQL_ROOT_PASSWORD" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS booking_management_test;
    GRANT ALL PRIVILEGES ON \`booking_management_test\`.* TO '$MYSQL_USER'@'%';
    FLUSH PRIVILEGES;
EOSQL
