#!/bin/bash
# install updates
sudo yum update -y

# install java 8
sudo yum install java-1.8.0 -y

# create the working directory
mkdir /opt/spring-boot-demo

mv /tmp/*.jar /opt/spring-boot-demo
mv /tmp/startApp.sh /opt/spring-boot-demo

# create a springboot user to run the app as a service
useradd springboot
# springboot login shell disabled
#chsh -s /sbin/nologin springboot
chown -R springboot:springboot  /opt/spring-boot-demo/
chmod -R 500  /opt/spring-boot-demo/

# create a symbolic link
ln -s /opt/spring-boot-demo/startApp.sh /etc/init.d/spring-boot-demo


#service spring-boot-demo start

# automatically start httpd and spring-boot-ec2-demo if this ec2 instance reboots
chkconfig spring-boot-demo on
