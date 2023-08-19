#!/bin/bash

mkdir /tmp/diux_autodeploy
mkdir /tmp/diux_autodeploy/src
mkdir /tmp/diux_autodeploy/backup

cd /tmp/diux_autodeploy/src

git clone git@github-diux-backend:BeLikeSohan/diux_backend.git

cp -r ~/diux_backend /tmp/diux_autodeploy/backup

cd ~/diux_backend

docker compose down -v

rm -rf *

cp -r /tmp/diux_autodeploy/src/diux_backend/* ~/diux_backend

docker compose up --build -d

cd /tmp/diux_autodeploy

rm -rf src