#!/bin/bash

echo "Hello World"
ls -lah

cat /etc/os-release

curl -L --output piper https://github.com/SAP/jenkins-library/releases/download/v1.50.0/piper
chmod +x piper
ls -lah
./piper version
echo "... done"
