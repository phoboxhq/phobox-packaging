# Get and install an OpenJDK 11
# f.e. adopt-openjdk

# Get JPackager from Gluon
# http://download2.gluonhq.com/jpackager/11/jdk.packager-windows.zip
# Extract the zip into JAVA_HOME/bin

# Get JavaFX java modules from gluon
# https://gluonhq.com/download/javafx-11-0-2-jmods-windows/
# Extract the jmods in JAVA_HOME/jmods

# Get the latest phobox build (TODO)
# mkdir input/
# wget -p input/ https://github.com/phoboxhq/phobox/releases...
# and icon

# Run
JAVA_HOME\bin\jpackager.exe create-installer --icon input\logo.ico --output dist --input input --main-jar phobox.jar --name Phobox --add-modules java.base,java.datatransfer,java.desktop,java.scripting,java.xml,jdk.jsobject,jdk.unsupported,jdk.unsupported.desktop,jdk.xml.dom,javafx.controls,javafx.fxml,java.naming,java.sql,jdk.charsets,java.management,jdk.security.jgss,java.instrument
