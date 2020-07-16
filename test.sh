#!/bin/bash

docker --version

#curl -L --output piper https://github.com/SAP/jenkins-library/releases/download/v1.50.0/piper
curl -L --output piper https://github.com/marcusholl/playground/releases/download/v0.0.0/piperlib
chmod +x piper
./piper version

METADATA_DIR=.pipeline/tmp/metadata
mkdir -p "${METADATA_DIR}"
curl --output ${METADATA_DIR}/mtaBuild.yaml https://raw.githubusercontent.com/SAP/jenkins-library/master/resources/metadata/mtaBuild.yaml
./piper getConfig --contextConfig # --stepMetadata "${METADATA_DIR}/mtaBuild.yaml"


ls -la
ls -lan

docker run -v `pwd`:/project devxci/mbtci /project/piper mtaBuild
