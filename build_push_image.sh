#!/bin/bash
# membuat docker image berdasarkan Dockerfile
docker build -t item-app:v1 . 
# melihat daftar image
docker images 
# sesuaikan nama dengan format github packages
docker tag item-app:v1 ghcr.io/dwi-adhi-soegiarto/item-app:v1 
# login ke github packages
echo $PAT | docker login ghcr.io --username dwi-adhi-soegiarto --password-stdin 
#unggah image ke github packages
docker push ghcr.io/dwi-adhi-soegiarto/item-app:v1