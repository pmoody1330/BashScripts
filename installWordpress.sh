#!/bin/bash

# Check that the script is being run with root access
[ "$EUID" -eq 0 ] || {
  echo 'Please run with sudo or as root.'
  exit 1
}

# Install Apache, PHP, and PHP modules
yum -q install -y httpd php php-mysql

# Start and enable the web server
systemctl start httpd
systemctl enable httpd

# Install MariaDB
yum -q install -y mariadb-server

# Start and enable MariaDB
systemctl start mariadb
systemctl enable mariadb

# Create a wordpress database
mysqladmin create wordpress

# Create a user for the wordpress database
mysql -e "GRANT ALL on wordpress.* to wordpress@localhost identified by 'wordpress123';"
mysql -e "FLUSH PRIVILEGES;"

# Secure mysql
echo -e "\n\nrootpassword123\nrootpassword123\n\n\n\n\n" | mysql_secure_installation

# Download and extract WordPress
TMP_DIR=$(mktemp -d)
cd $TMP_DIR
curl -sOL https://wordpress.org/wordpress-5.1.1.tar.gz
tar zxf wordpress-5.1.1.tar.gz
mv wordpress/* /var/www/html


# Clean up
cd /
rm -rf $TMP_DIR

#Install the wp-cli tool
curl -sOL https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
chmod 755 /usr/local/bin/wp

# Configure wordpress
cd /var/www/html
/usr/local/bin/wp core config --dbname=wordpress --dbuser=wordpress --dbpass=wordpress123

# Install wordpress
/usr/local/bin/wp core install --url=http://10.23.45.60 \
--title="Blog" --admin_user="admin" --admin_password="admin" \
--admin_email="vagrant@localhost.localdomain"
