#!/bin/bash

echo "Hello World"
ls -lah

cat /etc/os-release

docker --version
docker run hello-world
docker run ppiper/cf-cli cf version

#curl -L --output piper https://github.com/SAP/jenkins-library/releases/download/v1.50.0/piper
curl -L --output piper https://github.com/marcusholl/playground/releases/download/v0.0.0/piperlib
chmod +x piper
ls -lah
./piper version

METADATA_DIR=.pipeline/tmp/metadata
mkdir -p "${METADATA_DIR}"
curl --output ${METADATA_DIR}/mtaBuild.yaml https://raw.githubusercontent.com/SAP/jenkins-library/master/resources/metadata/mtaBuild.yaml
./piper getConfig --contextConfig # --stepMetadata "${METADATA_DIR}/mtaBuild.yaml"
./piper mtaBuild

docker run -v `pwd`:/work ppiper/cf-cli /work/piper version 
docker run -v `pwd`:/work ppiper/cf-cli /work/piper cloudFoundryDeploy 
echo "... done"
