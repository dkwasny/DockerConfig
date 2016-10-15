#!/bin/bash

mysqld_safe &

tail -n100 -f /var/log/mariadb/mariadb.log;

mysqladmin -u root -ppassword shutdown;
