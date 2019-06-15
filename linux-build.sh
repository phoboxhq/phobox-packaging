#!/bin/bash

javapackager -deploy \
        -native deb \
        -outdir ./dist \
        -srcfiles phobox.jar \
        -outfile phobox \
        -name phobox \
        -title "Phobox" \
        -appclass org.springframework.boot.loader.JarLauncher \
        -v
