#!/bin/bash

echo maven-project-4-jenkins > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i ~/jenkins/jenkins_home/ssh-keys/prod /tmp/.auth prod_user@prod-host:/tmp/.auth

scp -i ~/jenkins/jenkins_home/ssh-keys/prod ./jenkins/deploy/publish.sh prod_user@prod-host:/tmp/publish

ssh -i ~/jenkins/jenkins_home/ssh-keys/prod prod_user@prod-host "/tmp/publish"
