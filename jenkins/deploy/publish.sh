#!/bin/bash
export IMAGE=$(sed -n '1p' /tmp/.auth)
export TAG=$(sed -n '2p' /tmp/.auth)
export PASS=$(sed -n '3p' /tmp/.auth)

docker login -u mav3n -p $PASS
cd /home/prod_user/maven && docker-compose.yml up -d
