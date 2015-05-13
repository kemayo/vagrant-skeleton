#!/bin/bash

echo "Installing PHP and common modules"
yum install -y phpMyAdmin

echo "Copying phpMyAdmin config"
cp -f /vagrant/environment/config/phpMyAdmin.conf /etc/httpd/conf.d/phpMyAdmin.conf
cp -f /vagrant/environment/config/phpMyAdmin.config.inc.php /etc/phpMyAdmin/config.inc.php

# it's created with permissions that don't work...
chmod -R ugo+rx /etc/phpMyAdmin/config.inc.php

echo "Restarting Apache"
/sbin/service httpd restart

echo "PHPMyAdmin installed"
