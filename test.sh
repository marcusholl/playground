#!/bin/bash

echo "Hello World"
ls -lah

curl -L --output piper https://github.com/SAP/jenkins-library/archive/v1.50.0.tar.gz
chmod +x piper
ls -lah
./piper version
echo "... done"
