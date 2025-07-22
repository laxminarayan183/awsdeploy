#!/bin/bash
ec2-user
sudo yum update -y
sudo yum install apache2 -y
rm /var/www/html/index.html
