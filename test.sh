#!/bin/bash

echo "Dummy is"
echo $dummy
echo "========"
echo "MyDummy is"
echo $myDummy
echo "========"
echo "MySecretDummy is"
echo $mySecretDummy
echo "========"

docker --version

#curl -L --output piper https://github.com/SAP/jenkins-library/releases/download/v1.50.0/piper
curl -L --output piper https://github.com/marcusholl/playground/releases/download/v0.0.0/piperlib
chmod +x piper
./piper version

id
ls -la
ls -lan

# Only troubleshooting, we can't do this in the free wild
chmod -R 777 .

docker run -v `pwd`:/project devxci/mbtci /project/piper mtaBuild

docker run -v `pwd`:/project ppiper/cf-cli /project/piper cloudFoundryDeploy "apiEndpoint", "deployTool", "org", "password", "space", "username" not set

