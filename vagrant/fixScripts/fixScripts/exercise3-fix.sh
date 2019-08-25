#! /bin/bash

sudo su
cd /etc/apache2/sites-available
sed -i 's/deny/Allow/g' default 
chown -R $USER:$USER /var/www/index.html
chmod -R 755 /var/www
reboot 
