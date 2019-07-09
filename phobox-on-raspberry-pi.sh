#!/bin/bash

version="1.0.0"

if ! type -p java; then
	echo "Download java"
	echo "-------------------------"
	# Get and install java from bellsoft (arm build and includes javafx)
	wget https://github.com/bell-sw/Liberica/releases/download/11.0.2/bellsoft-jdk11.0.2-linux-arm32-vfp-hflt.deb

	echo "Install java"
	echo "-------------------------"
	sudo apt-get install ./bellsoft-jdk11.0.2-linux-arm32-vfp-hflt.deb 
	sudo update-alternatives --config javac
	sudo update-alternatives --config java
fi

if [ ! -f phobox.jar ]; then
	# Get phobox as jar file
	wget https://github.com/phoboxhq/phobox/releases/download/v$version/phobox-server-$version.jar -O phobox.jar
fi

if [ ${#X} -gt 0 ]; then
	java -Djavafx.platform=gtk2 -jar phobox.jar "$@"
else
	java -jar phobox.jar -nw "$@"
fi
