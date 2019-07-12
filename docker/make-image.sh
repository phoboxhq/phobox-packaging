#!/bin/bash

wget https://github.com/phoboxhq/phobox/releases/download/v1.0.0/phobox-server-1.0.0.jar -O ./phobox.jar

docker build -f Dockerfile -t phobox .
