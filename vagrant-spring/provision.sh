#!/bin/bash
sudo cp /vagrant/env/hosts /etc/hosts

# install java
sudo apt-get install python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

# install mysql
sudo echo mysql-server mysql-server/root_password password vagrant | debconf-set-selections
sudo echo mysql-server mysql-server/root_password_again password vagrant | debconf-set-selections
sudo apt-get install -y mysql-server

# install tomcat
sudo apt-get install -y tomcat8
sudo rm -rf /var/lib/tomcat8/webapps/ROOT/
sudo cp /vagrant/target/RewardHall.war /var/lib/tomcat8/webapps/ROOT.war
sudo cp /vagrant/env/config/tomcat/server.xml /var/lib/tomcat8/conf/server.xml
sudo usermod -G www-data tomcat

# install apache reverse proxy to tomcat
sudo apt-get install -y apache2
sudo a2enmod proxy proxy_http proxy_ajp
sudo rm /etc/apache2/sites-enabled/000-default.conf
sudo cp /vagrant/env/config/apache/rewardhall.conf /etc/apache2/sites-enabled/rewardhall.conf

sudo service tomcat8 restart
sudo service apache2 restart
