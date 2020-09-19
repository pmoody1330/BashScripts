#!/bin/bash

# Check that the script is being run with root access
[ "$EUID" -eq 0 ] || {
  echo 'Please run with sudo or as root.'
  exit 1
}

# install PostgreSQL
apt update
apt install postgresql postgresql-contrib -y
service postgresql start
systemctl enable postgresql

sudo -i -u postgres

# create the database
CREATE ROLE "go" PASSWORD 'Password!' NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN;
CREATE DATABASE "cruise" ENCODING="UTF8" TEMPLATE="template0";
GRANT ALL PRIVILEGES ON DATABASE "cruise" TO "go";
ALTER ROLE "go" SUPERUSER;

#list the databases
psql cruise -c '\l'

