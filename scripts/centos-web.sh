#!/bin/bash

# Apache
yum install -y http httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

#php
yum install -y php php-cli php-common php-devel php-mysql

# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/yhendricks/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/yhendricks/vagrant/master/files/info.php

service mysqld start
service httpd restart
