  
#!/bin/bash
yum update -y
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd 
systemctl start httpd
systemctl enable httpd
cd /var/www/html
wget https://wordpress.org/wordpress-4.4.21.tar.gz
tar -xzvf wordpress-4.4.21.tar.gz
rm wordpress-4.4.21.tar.gz --recursive
cd /var/www/html/wordpress
mv ./* /var/www/html/
cd ..
rm wordpress --recursive
chown -R apache.apache /var/www/html/
systemctl restart httpd