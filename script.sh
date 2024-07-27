#!/bin/bash

mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo
yum install java-1.8.0-openjdk -y
curl -O https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.89/bin/apache-tomcat-8.5.89.tar.gz
mkdir /opt/tomcat
tar -xf apache-tomcat-8.5.89.tar.gz -C /opt/tomcat --strip-components=1
curl -o /opt/tomcat/webapps/sample.war https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/sample.war
