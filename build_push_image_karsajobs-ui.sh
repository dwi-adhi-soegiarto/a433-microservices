#!/bin/bash

# Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama <username-docker>/karsajobs-ui:latest
docker build -t ghcr.io/dwi-adhi-soegiarto/karsajobs-ui:latest .

# Perintah untuk login ke GitHub Package
echo $PAT | docker login ghcr.io -u dwi-adhi-soegiarto --password-stdin

# Perintah untuk push image ke GitHub Package
docker push ghcr.io/dwi-adhi-soegiarto/karsajobs-ui:latest