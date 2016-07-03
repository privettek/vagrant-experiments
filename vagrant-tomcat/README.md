Vagrant-Ubuntu-WebServer
======

This is a vagrant provision to automate the setup of a Ubuntu OS on the virtual box with 
apache2 and tomcat web services. The guest machine will use ip 10.0.0.10 (defined in the
vagrantfile).

Pre-requisite
--------
1. Install Oracle VirtualBox;
2. Install Vagrant.

Usage
--------
1. Install the correct Ubuntu OS<br/>
Go to the command line prompt and enter the command below:
```
vagrant box add UbuntuTrusty14 https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box;
```
2. Check out the "vagrantfile" and "vagrantProvision.sh" files and put them in your vagrant folder. 

3. In the command line prompt, go to the folder containing the two files above and enter the command below:
```
vagrant up
```
Vagrant will use the above two files to setup your virtual machine and download/install/start apache2 and tomcat automatically.

Expected Result
--------
After the vagrant up complete, you can verify the web server by visiting the address below from your browser:
```
http://10.0.0.10/ -- apache2
http://10.0.0.10:8080/ -- tomcat
```
