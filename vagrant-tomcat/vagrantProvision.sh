    #!/usr/bin/env bash
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