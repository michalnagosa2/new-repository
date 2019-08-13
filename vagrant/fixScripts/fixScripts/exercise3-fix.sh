Steps to resolve the issue:

1. sudo su
2. I went to  /etc/apache2/sites-available folder
3. I run nano default to open and edit this file
4. I changed the permission from Deny to Allow in /var/www block
		<Directory /var/www/>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride None
                Order allow,deny
                Allow from all
        </Directory>



5. I run this command: chown -R $USER:$USER /var/www/index.html
6. I run this command: chmod -R 755 /var/www
7. I reboot the machine 
8. I refreshed the page and the message "Hello world" displayed.
