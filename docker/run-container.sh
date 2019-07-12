#!/bin/bash

if (( $# != 2 )); then
    echo "usage: run-container.sh PORT_NUMBER STORAGE_DIRECTORY"
    exit -1
fi

EXTERNAL_PORT=$1
SHARED_DIRECTORY=$2

# run container
docker run -p "$EXTERNAL_PORT":8080 -v "$SHARED_DIRECTORY":/src/phobox phobox
