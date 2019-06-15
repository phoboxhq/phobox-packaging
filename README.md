# Windows-Build
 1. Download and install Inno-Setup 5 (Currently 6 is not working)
    * http://files.jrsoftware.org/is/5/innosetup-5.5.9.exe
    * Don't forget to setup the Path-Variable with the installation directory
 2. Get the latest phobox.jar build
    * https://github.com/phoboxhq/phobox/releases
 4. Download and install the latest OpenJDK in Verison 8 or 11 (LTS)
    * f.e. here https://adoptopenjdk.net
 5. Put all in one directory and run windows-build.bat
 6. Enjoy the installer in dist/bundle/phobox.exe

# Debian/Ubuntu-Build
 1. Install fakeroot
    * sudo apt-get install fakeroot
 2. Get the latest phobox.jar build
    * https://github.com/phoboxhq/phobox/releases
 4. Download and install the latest OpenJDK in Verison 8 or 11 (LTS)
    * f.e. here https://adoptopenjdk.net
 5. Put all in one directory and run linux-build.sh
 6. Enjoy the installer in dist/bundle/phobox.deb

# MacOS-Build
_TODO_

Thanks to @jonashackt for https://github.com/jonashackt/springboot2exe
