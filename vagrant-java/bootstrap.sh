#!/usr/bin/env bash

apt-get update

apt-get install -y maven git openjdk-8-jre openjdk-8-jdk unzip

export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64

##Add to ~/.bashrc for persistence through a reboot##

echo "export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64" >> ~/.bashrc
./run.sh -start 8090




