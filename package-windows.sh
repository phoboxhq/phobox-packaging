#!/bin/bash
# Info: This scripts should be executed on windows in a "git bash" environment
# Creates a distributable version of phobox for windows

# Get packager from badlogic
wget https://libgdx.badlogicgames.com/ci/packr/packr.jar

# Get a suitable JDK
wget https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_windows_hotspot_8u212b04.zip

# Get resources from phobox project
git clone https://github.com/phoboxhq/phobox.git

# Package 
java -jar packr.jar \
     --platform windows64 \
     --jdk OpenJDK8U-jdk_x64_windows_hotspot_8u212b04.zip \
     --executable phobox \
     --classpath phobox-server-1.0.0-SNAPSHOT.jar \
     --removelibs phobox-server-1.0.0-SNAPSHOT.jar \
     --mainclass de.milchreis.phobox.PhoboxServerApplication \
     --vmargs Xmx1G \
     --resources phobox/phobox-server/src/main/resources \
     --output dist
     
rm OpenJDK*.zip
rm packr.jar
rm -r phobox/

## Result: Packaging done, but the packr doesn't work with spring boot's jarlauncher
