#!/bin/bash

# Get an OpenJDK 11 and install it (it's just necessary if your don't have an OpenJDK)
# wget https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.3_7.tar.gz
# tar -xvzf OpenJDK11U-jdk_x64_linux_hotspot_11.0.3_7.tar.gz
# export JAVA_HOME=`pwd`/jdk-11.0.3+7/
# export PATH=$PATH:$JAVA_HOME/bin

# Get the Gluon JPackager
wget http://download2.gluonhq.com/jpackager/11/jdk.packager-linux.zip
unzip jdk.packager-linux.zip

# Install fakeroot is't necessary for jpackager
sudo apt-get install fakeroot

# Get Gluon JavaFX modules (TODO)
#wget https://gluonhq.com/download/javafx-11-0-2-jmods-linux/
# extract
# mv extract to JAVA_HOME/jmods

# Get the latest phobox build (TODO)
mkdir input/
wget -p input/ https://github.com/phoboxhq/phobox/releases...

# Start the build process
./jpackager create-installer deb \
	--icon input/logo.png \
	--output dist \
	--input input \
	--main-jar phobox.jar \
	--name Phobox \
	--add-modules java.base,java.datatransfer,java.desktop,java.scripting,java.xml,jdk.jsobject,jdk.unsupported,jdk.unsupported.desktop,jdk.xml.dom,javafx.controls,javafx.fxml,java.naming,java.sql,jdk.charsets,java.management,jdk.security.jgss,java.instrument
