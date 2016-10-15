#!/bin/bash

# Only the most of secure passwords for root.
ROOT_PASSWORD="password"

function run-sql() {
	mysql -u root -p$ROOT_PASSWORD -e "$1";
}

function secure-sql() {
	# Set the root password
	mysql -u root -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$ROOT_PASSWORD')";
	run-sql "SET PASSWORD FOR 'root'@'::1' = PASSWORD('$ROOT_PASSWORD')";
	run-sql "SET PASSWORD FOR 'root'@'127.0.0.1' = PASSWORD('$ROOT_PASSWORD')";

	# Drop the anonymous user
	run-sql "DELETE FROM mysql.user WHERE User = ''";

	# Disable remote root login
	run-sql "DELETE FROM mysql.user WHERE User = 'root' AND Host NOT IN ('localhost', '::1', '127.0.0.1')";

	# Drop the test database
	run-sql "DROP DATABASE test";
}

function add-hive() {
	run-sql "CREATE DATABASE hive_metastore";
	run-sql "CREATE USER 'hive'@'%' IDENTIFIED BY 'password'";
	run-sql "GRANT ALL ON hive_metastore.* TO 'hive'@'%'";
}

# Start MariaDB
mysqld_safe&

while [ ! -f /var/run/mariadb/mariadb.pid ]; do
	sleep 1
done;

secure-sql
add-hive

# Shutdown MariaDB
mysqladmin -u root -ppassword shutdown
