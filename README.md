**The following description works with an installed OracleJDK 8-10. There is the javapackager included. In OpenJDK 13 will be the jpackager included.**

# Windows-Build
 1. Download and install Inno-Setup 5 (Currently 6 is not working)
    * http://files.jrsoftware.org/is/5/innosetup-5.5.9.exe
    * Don't forget to setup the Path-Variable with the installation directory
 2. Get the latest phobox.jar build
    * https://github.com/phoboxhq/phobox/releases
 3. Put all in one directory and run windows-build.bat
 4. Enjoy the installer in dist/bundle/phobox.exe

# Debian/Ubuntu-Build
 1. Install fakeroot
    * sudo apt-get install fakeroot
 2. Get the latest phobox.jar build
    * https://github.com/phoboxhq/phobox/releases
 3. Put all in one directory and run linux-build.sh
 4. Enjoy the installer in dist/bundle/phobox.deb

# MacOS-Build
_TODO_

# Resources
 * Thanks to @jonashackt for https://github.com/jonashackt/springboot2exe
 * https://medium.com/@adam_carroll/java-packager-with-jdk11-31b3d620f4a8
 * https://bugs.openjdk.java.net/browse/JDK-8200758
 * https://stackoverflow.com/a/54081212/3912144
