#!/bin/bash
BASEDIR=$(dirname ${BASH_SOURCE[0]})/..

# Start the database
docker network create sequelize
docker run -d -e MYSQL_ROOT_PASSWORD=demo -p 3306:3306 --network sequelize --name mariadb mariadb

# Wait until the database is running
while :
do
    docker exec mariadb mysqladmin --user=root --password=demo status  >/dev/null 2>&1
    if [[ $? -eq 0 ]]; then
        break
    fi
    sleep 1
done

# Create the database
docker exec mariadb mysql --user=root --password=demo -e "create database if not exists demo"

# Synchronize the database tables and insert the test users
babel-node $BASEDIR/scripts/initdb.es6
