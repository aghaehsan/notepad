#!/bin/bash
# chkconfig: 345 20 80
# description: Spring Boot Webservice 
source /etc/environment
java -Dspring.profiles.active=production -Dproduction_datasource_url=jdbc:mysql://notepad.csh10c7welhl.us-east-1.rds.amazonaws.com:3306/notepad -Dproduction_datasource_username=root -Dproduction_datasource_password=root1234 -jar /opt/spring-boot-demo/*
