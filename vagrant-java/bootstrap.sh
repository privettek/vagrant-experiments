#!/usr/bin/env bash

apt-get update

apt-get install -y maven git openjdk-8-jre openjdk-8-jdk unzip

export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64

##Add to ~/.bashrc for persistence through a reboot##

echo "export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64" >> ~/.bashrc
./run.sh -start 8090

sudo apt-get update

echo "Installing Apache.."
sudo apt-get install -y apache2

echo "Installing Tomcat.."
sudo apt-get install -y tomcat8

echo "Installing Tomcat8 docs.."
sudo apt-get install -y tomcat8-docs

echo "Installing Tomcat8 examples.."
sudo apt-get install -y tomcat8-examples

echo "Installing Tomcat8 administration webapps.."
sudo apt-get install -y tomcat8-admin

service tomcat8 start




