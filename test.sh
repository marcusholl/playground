#!/bin/bash

echo "Hello World"

curl -L --output piper https://github.com/SAP/jenkins-library/archive/v1.50.0.tar.gz
chmod +x piper
./piper version
echo "... done"
