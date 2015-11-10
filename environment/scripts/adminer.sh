#!/bin/bash

echo "Installing Adminer"

mkdir /usr/share/adminer && cd /usr/share/adminer && wget https://www.adminer.org/static/download/4.2.2/adminer-4.2.2.php -O index.php

echo "Copying Adminer config"

cp -f /vagrant/environment/config/adminer.conf /etc/httpd/conf.d/adminer.conf

echo "Restarting Apache"
/sbin/service httpd restart

echo "Adminer installed"
