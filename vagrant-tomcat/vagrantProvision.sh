    #!/usr/bin/env bash
    sudo apt-get update
    echo "Installing Apache.."
	sudo apt-get install -y apache2
    echo "Installing Tomcat.."
	sudo apt-get install -y tomcat7
	echo "Installing Tomcat7 docs.."
	sudo apt-get install -y tomcat7-docs
	echo "Installing Tomcat7 examples.."
	sudo apt-get install -y tomcat7-examples
	echo "Installing Tomcat7 administration webapps.."
	sudo apt-get install -y tomcat7-admin
	service tomcat7 start